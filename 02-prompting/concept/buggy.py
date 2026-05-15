def calculate_average(numbers):
    total = 0
    for n in numbers:
        total += n
    return total / len(numbers)  # bug: no zero-division check when list is empty


result = calculate_average([])
print(result)
