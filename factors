import math

def factorize(number):
    for i in range(2, int(math.sqrt(number)) + 1):
        if number % i == 0:
            return i, number // i
    return None, None  # No factors found

def main(input_file):
    with open(input_file, 'r') as file:
        numbers = file.readlines()

    for number_str in numbers:
        number = int(number_str.strip())
        factor1, factor2 = factorize(number)
        if factor1 is not None and factor2 is not None:
            print("{}={}*{}".format(number, factor1, factor2))

if __name__ == "__main__":
    input_file = "tests/test00"
    main(input_file)

