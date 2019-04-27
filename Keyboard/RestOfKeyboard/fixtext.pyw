import pyperclip 
import sys

finalStr = ''
caps = False

print(sys.argv)

for char in pyperclip.paste():
	if caps:
		finalStr += char.upper()
		caps = not caps
	else:
		finalStr += char.lower()
		caps = not caps

pyperclip.copy(finalStr)