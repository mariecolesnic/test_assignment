from typing import List
import random as rd


def generateUniqueNumbers(n: int) -> List[int]:
    left_border = int(input("From which number should we start? \n"))
    right_border = int(input("Which number is the end of the range? \n"))
    random_list = []
    for i in range(n):
        if i not in random_list:
            random_list.append(rd.randint(left_border, right_border))
        pass

    return random_list


print(generateUniqueNumbers(5))


# Вычислительная сложность - O(n)
# По расходу памяти - О(1)