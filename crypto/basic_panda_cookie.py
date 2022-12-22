#2제곱, 3제곱, 4제곱을 하는 함수

def one(n):
	def two(value):
		return value ** n
	return two

a = one(2)
b = one(3)
c = one(4)
print(a(10))
print(b(10))
print(c(10)) 

def panda(k):
  def cookie(m):
    return k + m
  return cookie
  
a = panda(12)
print(a(-11))
