# Отправка запроса к API и парсинг ответа

import xml.etree.ElementTree as XmlElementTree # реализация API для работы с XML 
import httplib2 # соединение с сервером
import uuid # генерирует случаные индитификаторы, используя MAC-адрес и компонент времени
from config import *** # Подключение конфигураций
 
***_HOST = '***'
***_PATH = '/***_xml'
CHUNK_SIZE = 1024 ** 2

# определяем функцию, задаём парамметры для запроса
def speech_to_text(filename=None, bytes=None, request_id=uuid.uuid4().hex, topic='notes', lang='ru-RU',
                   key=***_API_KEY):
# Если файл передан
    if filename:
        with open(filename, 'br') as file:
            bytes = file.read()
    if not bytes: # файл не передан
        raise Exception('Neither file name nor bytes provided.') # Вызываем обработчик исключений
 
# Конвентируем в нужный формат
    bytes = convert_to_pcm16b16000r(in_bytes=bytes)
 
# формируем тело запроса
    url = ***_PATH + '?uuid=%s&key=%s&topic=%s&lang=%s' % (
        request_id,
        key,
        topic,
        lang
    )
 
# Считываем блок байтов
    chunks = read_chunks(CHUNK_SIZE, bytes)
# Установка соединения и формирование запроса
    connection = httplib2.HTTPConnectionWithTimeout(***_HOST)
 
    connection.connect()
    connection.putrequest('POST', url)
    connection.putheader('Transfer-Encoding', 'chunked')
    connection.putheader('Content-Type', 'audio/x-pcm;bit=16;rate=16000')
    connection.endheaders()
 
# Отправка байтов байтов
    for chunk in chunks:
        connection.send(('%s\r\n' % hex(len(chunk))[2:]).encode())
        connection.send(chunk)
        connection.send('\r\n'.encode())
 
    connection.send('0\r\n\r\n'.encode())
    response = connection.getresponse()
 
  # Обработка ответа сервира   
    if response.code == 200:
        response_text = response.read()
        xml = XmlElementTree.fromstring(response_text)
 
        if int(xml.attrib['success']) == 1:
            max_confidence = - float("inf")
            text = ''
 
            for child in xml:
                if float(child.attrib['confidence']) > max_confidence:
                    text = child.text
                    max_confidence = float(child.attrib['confidence'])
 
            if max_confidence != - float("inf"):
                return text
            else:
                #Создать собственное исключение для обработки бизнес-логики
                raise SpeechException('No text found.\n\nResponse:\n%s' % (response_text))
        else:
            raise SpeechException('No text found.\n\nResponse:\n%s' % (response_text))
    else:
        raise SpeechException('Unknown error.\nCode: %s\n\n%s' % (response.code, response.read()))
# Создание исключения 
сlass SpeechException(Exception):
    pass
