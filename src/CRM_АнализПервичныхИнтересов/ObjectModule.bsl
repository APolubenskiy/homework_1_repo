﻿///////////////////////////////////////////////////////////////////////////////
// СЛУЖЕБНЫЕ ПРОЦЕДУРЫ И ФУНКЦИИ

///////////////////////////////////////////////////////////////////////////////
// Прочее

Процедура УстановитьЗаголовкиПолей()

	ВалютаУчета = Строка(Константы.ВалютаУчета.Получить());

	Для Каждого НаборДанных Из СхемаКомпоновкиДанных.НаборыДанных Цикл
		
		Для каждого ПолеНабораДанных из НаборДанных.Поля Цикл
			
			Если Найти(ПолеНабораДанных.Заголовок, "%ВалютаУчета%") > 0 Тогда
				
				ПолеНабораДанных.Заголовок = СтрЗаменить(ПолеНабораДанных.Заголовок, "%ВалютаУчета%", ВалютаУчета);
				
			КонецЕсли;
			
		КонецЦикла;
		
	КонецЦикла;
		
КонецПроцедуры

УстановитьЗаголовкиПолей();
