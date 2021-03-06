
#Область ОписаниеПеременных
#КонецОбласти

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)

	ОбщегоНазначения.ИнициализироваЭкзаменационнуюФорму(ЭтаФорма);
	ИнициализироватьРеквизитИнтернетДанные();

КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы
#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормы_ИмяТаблицыФормы
	// ЭтаФорма.мБилеты
#КонецОбласти

#Область ОбработчикиКомандФормы
#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура ИнициализироватьРеквизитИнтернетДанные()
	
	ЗначениеВыбранногоБилета 	= ЭтаФорма.СчетчикБилетов;
	текущийВыбор 				= ОбщегоНазначения.ПолучитьЗначениеВыбранногоБилетаКакСтруктура(ЗначениеВыбранногоБилета);
	
	ЭтаФорма.ИнтернетДанные = ДанныеИнтернет.ФормироватьИнтернетСтраницуПрофПоПлатформе(текущийВыбор.Раздел, текущийВыбор.Билет);

КонецПроцедуры


#КонецОбласти