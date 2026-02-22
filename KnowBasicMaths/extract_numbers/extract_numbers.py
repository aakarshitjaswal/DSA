def extract_numbers(n: int):
    arr = []
    while n > 0: 
        last_digit = n % 10 
        arr.append(last_digit)
        n = n // 10 
    print(arr) 

if __name__ == "__main__": 
    extract_numbers(12345)

