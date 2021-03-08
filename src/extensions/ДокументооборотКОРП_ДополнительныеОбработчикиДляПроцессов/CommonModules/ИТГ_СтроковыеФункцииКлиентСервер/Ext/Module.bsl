﻿////////////////////////////////////////////////////////////////////////////////
// Подсистема "Базовая функциональность".
//  
////////////////////////////////////////////////////////////////////////////////

#Область ПрограммныйИнтерфейс

Функция ПроверитьСтроку(Знач СтрокаПроверки, Знач РегулярноеВыражение) Экспорт
	
	Контекст = "ИТГ_СтроковыеФункцииКлиентСервер.ПроверитьСтроку";
	
    Чтение = Новый ЧтениеXML;
    Чтение.УстановитьСтроку(
        "<Model xmlns=""http://v8.1c.ru/8.1/xdto"" xmlns:xs=""http://www.w3.org/2001/XMLSchema"" xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" xsi:type=""Model"">
        |<package targetNamespace=""" + Контекст + """>
        |<valueType name=""testtypes"" base=""xs:string"">
        |<pattern>" + РегулярноеВыражение + "</pattern>
        |</valueType>
        |<objectType name=""RegExp"">
        |<property xmlns:d4p1=""" + Контекст + """ name=""Test"" type=""d4p1:testtypes""/>
        |</objectType>
        |</package>
        |</Model>");

    Модель = ФабрикаXDTO.ПрочитатьXML(Чтение);
    МояФабрикаXDTO = Новый ФабрикаXDTO(Модель);
    Пакет = МояФабрикаXDTO.Пакеты.Получить(Контекст);
    ТестовыйОбъект = МояФабрикаXDTO.Создать(Пакет.Получить("RegExp"));

    Попытка
        ТестовыйОбъект.Test = СтрокаПроверки;
        Возврат Истина;
    Исключение
        Возврат Ложь;
    КонецПопытки;
    
КонецФункции

Функция РегистрНачатьСЗаглавной(Знач Строка) Экспорт
	Контекст = "ИТГ_СтроковыеФункцииКлиентСервер.РегистрНачатьСЗаглавной";
	
	Результат = ВРег(Лев(Строка, 1))+ Сред(Строка, 2);
	Возврат Результат;
КонецФункции

Функция РегистрНачатьНеСЗаглавной(Знач Строка) Экспорт
	Контекст = "ИТГ_СтроковыеФункцииКлиентСервер.РегистрНачатьНеСЗаглавной";
	
	Результат = НРег(Лев(Строка, 1))+ Сред(Строка, 2);
	Возврат Результат;
КонецФункции

#КонецОбласти
