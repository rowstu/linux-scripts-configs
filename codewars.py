# codewars

# fundamentals

## convert a number to string

def number_to_string(num):
    # Return a string of the number here!
    return str(num)

def number_to_string(num):
    try:
        return str(num)
    except:
        return None

def number_to_string(num):
    return "{}".format(num)

def number_to_string(num):
    return "%s" % num

def number_to_string(num):
    return f'{num}'

## Double the integer

def doubleInteger(i):
    return i * 2

def doubleInteger(i):
    return i << 1

def doubleInteger(i):
    return i + i

## remove space from string
def no_space(x):
    #your code here
    return x.replace(" ", "")

def no_space(x):
    return "".join(x.split())

def no_space(x):
    str_char = ''
    for i in range(len(x)):
        if x[i] == ' ':
            continue
        else:
            str_char = str_char + x[i]
    return str_char

def no_space(x):
    return ''.join(i for i in x if i !=' ')
    
    
### floating point comparison    
from math import isclose
def approx_equals(a, b):
    return isclose(a, b, rel_tol=0, abs_tol=1e-3)
    
    
#8kyu sum array
def sum_array(a):
    sum = 0
    for n in a:
        sum = sum + n
    return sum

def sum_array(a):
  return sum(a)

def sum_array(a):
    total = 0
    i = 0
    while i < len(a):
        total += a[i]
        i += 1
    return total

def sum_array(arr):
    n = 0
    for i in arr:
        n += i
    return n


# counting sheep
def count_sheeps(sheep):
  t = 0
  for i in sheep:
    if i == True:
        t = t + 1
    elif i == '':
        pass
  return t
  
  
def count_sheeps(array_of_sheep):
  # TODO May the force be with you
  count = 0
  for sheep in array_of_sheep:
      if sheep:
          count += 1 
  return count

def count_sheeps(x):
  return x.count(True)
  

def count_sheeps(sheep):
  return len([x for x in sheep if x])
  
    
  

