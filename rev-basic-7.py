import string
import integer 
#RotateLeft Function

def rotateLeft(x, n):

	shiftBit = x << n

	shiftBit &= 255

	carryBit = x >> 8 - n

	result= shiftBit | carryBit

	return result

#RotateRight Function
def rotateRight(x, n):

	shiftBit = x >> n

	carryBit = x << (8 - n)

	carryBit &= 255

	result= shiftBit | carryBit

	return result  


arr = [0x52, 0xDF, 0xB3, 0x60, 0xF1, 0x8B, 0x1C, 0xB5, 0x57, 0xD1, 0x9F, 0x38, 0x4B, 0x29, 0xD9, 0x26, 0x7F, 0xC9, 0xA3, 0xE9, 0x53, 0x18, 0x4F, 0xB8, 0x6A, 0xCB, 0X87, 0x58, 0x5B, 0x39, 0x1E, 0x00]

for x in range(32) :
    arr[x] = x ^ arr[x]
    arr[x] = rotateRight(arr[x], x & 7)
    print(chr(arr[x]), end='')

어느 순간부터 혼자 응용이 된다 
기존의 내용들을 흡수해서 적절히 응용만 해주면 된다 
