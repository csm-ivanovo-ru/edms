﻿#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ПрограммныйИнтерфейс

Функция НайтиСоздатьЗначениеСвойства_НаправлениеДеятельности_Метрология() Экспорт
	
	ИдентификаторСсылки = Новый УникальныйИдентификатор("76cdea1d-6067-45ca-b3e0-ea5489a38dc2");
	ЗначениеСсылка = ПолучитьСсылку(ИдентификаторСсылки);
	
	Если Не ОбщегоНазначения.СсылкаСуществует(ЗначениеСсылка) Тогда 
		
		СвойствоСсылка = ПланыВидовХарактеристик.ДополнительныеРеквизитыИСведения.НайтиСоздатьСвойство_НаправлениеДеятельности();
		ЗначениеОбъект = СоздатьЭлемент();
		ЗначениеОбъект.УстановитьСсылкуНового(ЗначениеСсылка);
		
		ЗначениеОбъект.Владелец = СвойствоСсылка;
		ЗначениеОбъект.Наименование = НСтр("ru = 'Метрология'");
		ЗначениеОбъект.ПолноеНаименование = ЗначениеОбъект.Наименование;
	
		ЗначениеОбъект.УстановитьНовыйКод();
		ЗначениеОбъект.Записать();
		
	КонецЕсли;
	
	Возврат ЗначениеСсылка;
	
КонецФункции

#КонецОбласти

#КонецЕсли
