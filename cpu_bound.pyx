import argparse
import time

def sum_of_squares_py(list_of_numbers):
    """ Python implementation: Sum of squares of numbers in the list """
    start_time = time.time()
    total = 0
    for number in range(list_of_numbers):
        total += number * number

    print(total)
    print(f"took {time.time() - start_time:.2f} seconds.")
    return total


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="A simple Cython app that greets the user.")
    parser.add_argument('number', type=int, help='The name to greet')
    args = parser.parse_args()

    sum_of_squares_py(args.number)
