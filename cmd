#!/bin/bash
#Извлекаем текущую дату в формате "Вс мар 11 16:16:43 MSK 2018"
currentDate=`date`;
#Извлекаем подстроку, соответствующую текущему дню недели "Вс"
currentDayWeek=${currentDate:0:2};
#Извлекаем подстроку, соответствующую текущему дню месяца "11"
currentDayMonth=${currentDate:7:2};
#Отправляем текущую дату в формате "Вс мар 11 16:16:43" в файл run.log, в конец списка.
echo ${currentDate:0:18} >> run.log;
#Если сегодня 13 или пятница, запускаем утилиту для сбора мусора на компьютере bleachbit.
if [[ $currentDayWeek =~ Пт || $currentNumOfDay =~ 13 ]];
then bleachbit --gui;
#Если условие не выполнено, выводим сответствующую надпись.
else echo Not today!;
fi;
