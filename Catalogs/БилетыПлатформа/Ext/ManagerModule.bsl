﻿
Процедура ОбработкаПолученияПредставления(Данные, Представление, СтандартнаяОбработка)
	
	СтандартнаяОбработка 	= Ложь;	
	ДанныеСсылка 			= Данные.Ссылка;
	
	Представление = ?(ДанныеСсылка.ЭтоГруппа,
						СтрШаблон("%1: %2", ДанныеСсылка.Код, Данные.Наименование),
						СтрШаблон("Раздел:%1, билет:%2, %3", ДанныеСсылка.Родитель.Код, ДанныеСсылка.Код, Данные.Наименование));
КонецПроцедуры
