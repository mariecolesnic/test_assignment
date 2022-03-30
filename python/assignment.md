== Задание ==


=== Задача №1 ===

Компонент функциональности генерации заданного количества случайных уникальных чисел. 

Пример:

Если на входе n = 5, то на выходе функции ответ может быть например такой:

[,py]
....
[2, 7, 10, 3, 4]
....

==== Требуется: ====
1. Реализовать описанную функциональность в виде функции:
+
[,py]
....
from typing import List

def generateUniqueNumbers(n: int) -> List[int]:
    # TODO
....
+
2. Обеспечить максимально быстрое выполнение выбором оптимального алгоритма.
3. Из внешних пакетов можно пользоваться только стандартной библиотекой языка.
4. Оценить вычислительную сложность алгоритма реализации (можно в нотации O).
5. Оценить сложность алгоритма реализации по расходу памяти (можно в нотации O).
