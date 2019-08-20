import pyperclip

finalStr = ''
caps = False

for char in pyperclip.paste():
	if caps:
		finalStr += char.upper()
		caps = not caps
	else:
		finalStr += char.lower()
		caps = not caps

pyperclip.copy(finalStr)