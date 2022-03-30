from typing import List
import random as rd


def generateUniqueNumbers(n: int) -> List[int]:
    left_border = int(input("From which number should we start? \n"))
    right_border = int(input("Which number is the end of the range? \n"))
    result_set = set()
    while len(result_set) < n:
        result_set.add(rd.randint(0, n*2))

    return list(result_set)


print(generateUniqueNumbers(5))


# Вычислительная сложность - O(n)
# По расходу памяти - О(1)