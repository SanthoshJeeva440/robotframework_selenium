class CustomLibrary:
    def __init__(self, *args, **kwargs):
        pass

    def add(self, a, b):
        result = int(a) * int(b)
        return result


if __name__ == '__main__':
    print(CustomLibrary.add(1, 2))
