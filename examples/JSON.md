# JSON

```
#Область JSON
Функция СериализоватьJSON(Данные)	
    ЗаписьJSON												= Новый ЗаписьJSON; 
    ЗаписьJSON.УстановитьСтроку();
    НастройкиСериализации									= Новый НастройкиСериализацииJSON();
    НастройкиСериализации.СериализовыватьМассивыКакОбъекты	= Ложь;
	НастройкиСериализации.ФорматСериализацииДаты			= ФорматДатыJSON.ISO;
	НастройкиСериализации.ВариантЗаписиДаты					= ВариантЗаписиДатыJSON.УниверсальнаяДата;
    ЗаписатьJSON(ЗаписьJSON, Данные, НастройкиСериализации); 
    Возврат ЗаписьJSON.Закрыть();	
КонецФункции // СериализоватьJSON()

Функция ДесериализоватьJSON(СтрокаJSON)
	ЧтениеJSON	= Новый ЧтениеJSON();
	ЧтениеJSON.УстановитьСтроку(СтрокаJSON);
	Возврат ПрочитатьJSON(ЧтениеJSON);
КонецФункции // ДесериализоватьJSON()
#КонецОбласти
```

