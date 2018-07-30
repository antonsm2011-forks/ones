### Пример отправки сообщения пользователю по его id  
##### (у него должен быть добавлен бот)  
ID пользователя можно узнать переслав его сообщение боту: @userinfobot  
  
```
ПроксиСервер        = "socks5://jqlwb.teletype.live"; // Собственно вот здесь мы и обращаемся через socks5
ПроксиПорт            = 1080;
ПроксиПользователь    = "telegram";
ПроксиПароль        = "telegram";  
ИнтернетПрокси = Новый ИнтернетПрокси;
ИнтернетПрокси.Установить("https", ПроксиСервер, ПроксиПорт, ПроксиПользователь, ПроксиПароль);

ЗащищенноеСоединение = Новый ЗащищенноеСоединениеOpenSSL(Новый СертификатКлиентаWindows, Новый СертификатыУдостоверяющихЦентровWindows);
Ресурс = "bot" + Token + "/sendMessage?chat_id=" + СтрЗаменить(Формат(ID, "ЧДЦ=; ЧС=; ЧРГ=."), ".", "") + "&text= " + ТекстСообщения;
Соединение  =  Новый HTTPСоединение("api.telegram.org",443,,,ИнтернетПрокси,,ЗащищенноеСоединение);
Запрос = Новый HTTPЗапрос(Ресурс);
Ответ = Соединение.Получить(Запрос);    

КодСостояния     = Ответ.КодСостояния;
СтрокаОтвета     = Ответ.ПолучитьТелоКакСтроку();

Если КодСостояния=200 тогда
    ЧтениеОтвета = Новый ЧтениеJSON;
    ЧтениеОтвета.УстановитьСтроку(СтрокаОтвета);
    РезультатСтруктура = ПрочитатьJSON(ЧтениеОтвета);
    Если РезультатСтруктура.ok = Истина Тогда
        СтруктураMessage = РезультатСтруктура.result;
    КонецЕсли;
Иначе
    Сообщить("КодСостояния "+КодСостояния);
    Сообщить(СтрокаОтвета);
КонецЕсли;
```