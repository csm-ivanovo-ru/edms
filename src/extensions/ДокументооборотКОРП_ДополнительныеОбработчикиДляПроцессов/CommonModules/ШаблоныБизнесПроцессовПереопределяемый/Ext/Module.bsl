﻿#Область ПрограммныйИнтерфейс

// Возвращает список пользовательских функций для автоподстановки исполнителей в шаблонах документов
//
// Параметры:
//	ИменаПредметовДляФункций - массив - массив имен предметов для функций автоподстановки
//
&Вместо("ПолучитьСписокДоступныхФункций")
Функция ИТГ_ПолучитьСписокДоступныхФункций(ИменаПредметовДляФункций)
	
	ДоступныеФункции = ПродолжитьВызов(ИменаПредметовДляФункций);
	
	Если ИменаПредметовДляФункций <> Неопределено Тогда
		Если ИменаПредметовДляФункций.Количество() > 0 Тогда
		
			Для Каждого ИмяПредмета Из ИменаПредметовДляФункций Цикл 
				
				ДоступныеФункции.Добавить("ИТГ_ШаблоныБизнесПроцессов.ДелопроизводительПодразделенияДокумента(Объект, ИмяПредмета)",
					СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(НСтр("ru = '%1.Делопроизводитель подразделения'"), Строка(ИмяПредмета)));
				ДоступныеФункции.Добавить("ИТГ_ШаблоныБизнесПроцессов.РуководительПодразделенияДокумента(Объект, ИмяПредмета)",
					СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(НСтр("ru = '%1.Руководитель подразделения'"), Строка(ИмяПредмета)));
				ДоступныеФункции.Добавить("ИТГ_ШаблоныБизнесПроцессов.ИсполнителиДокументаАктивные(Объект, ИмяПредмета)",
					СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(НСтр("ru = '%1.Исполнители по документу (активные)'"), Строка(ИмяПредмета)));
				ДоступныеФункции.Добавить("ИТГ_ШаблоныБизнесПроцессов.РегистраторПерепискиАдресата(Объект, ИмяПредмета)",
					СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(НСтр("ru = '%1.Регистратор переписки адресата'"), Строка(ИмяПредмета)));
					
			КонецЦикла;
		
		КонецЕсли;
	КонецЕсли;
	
	ДоступныеФункции.Добавить("ИТГ_ШаблоныБизнесПроцессов.ВсеРуководителиМетрологическихПодразделений(Объект)",
		НСтр("ru = 'Все руководители метрологических подразделений'"));
	
	Возврат ДоступныеФункции;

КонецФункции

#КонецОбласти
