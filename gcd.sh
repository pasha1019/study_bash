#!/bin/bash
while [ true ]
do
read num1 num2
if [ -z $num1 ]
then 
	echo "bye"
	break
else
	gcd ()
	{                              #  Начальное присваивание.
	dividend=$num1                    #  В сущности, не имеет значения
	divisor=$num2                     #+ какой из них больше.
        	                       #  Почему?
	remainder=1                    #  Если переменные неинициализировать,
	                               #+ то работа сценария будет прервана по ошибке
       	                        #+ в первом же цикле.
	until [ "$remainder" -eq 0 ]
	do
		let "remainder = $dividend % $divisor"
		dividend=$divisor      # Повторить цикл с новыми исходными данными
    		divisor=$remainder
	done                           # алгоритм Эвклида
	}                              # последнее $dividend и есть нод.
	gcd $num1 $num2
	echo "GCD is $dividend"
fi
done

