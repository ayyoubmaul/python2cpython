# example.py
import argparse

def hello(name):
    print(f"Hello, {name} from Cython!")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="A simple Cython app that greets the user.")
    parser.add_argument('name', type=str, help='The name to greet')
    args = parser.parse_args()

    hello(args.name)
