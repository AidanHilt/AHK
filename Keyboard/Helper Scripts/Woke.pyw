import pyperclip

finalStr = ''

for char in pyperclip.paste():
    finalStr += char.upper()
    finalStr += ' '

pyperclip.copy(finalStr)