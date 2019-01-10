import codecs
import hashlib

arr = [230, 104, 96, 84, 111, 24, 205, 187, 205, 134, 179, 94, 24, 181, 37, 191,
       252, 103, 247, 114, 198, 80, 206, 223, 227, 255, 122, 0, 38, 250, 29, 238]

bytearr = bytearray(arr)

output = codecs.encode(bytearr, 'hex')

print(output)
