import tkinter as tk   

from tkinter import *  
from PIL import Image
from PIL import ImageTk

import sys
import time
from subprocess import Popen

commands = [["\"D:/Program Files (x86)/AutoHotKey/AutoHotkey.exe\" OpenCommandWindow.ahk"], ["C:/Windows/explorer.exe"], 
["\"C:/Program Files (x86)/Mozilla Firefox/firefox.exe\" -new-window youtube.com -foreground", 
"D:/Program Files (x86)/AutoHotKey/AutoHotkey.exe Jump.ahk"],
["\"C:/Program Files (x86)/Mozilla Firefox/firefox.exe\" -new-window netflix.com -foreground",
"D:/Program Files (x86)/AutoHotKey/AutoHotkey.exe Jump.ahk"],
["\"C:/Program Files (x86)/Mozilla Firefox/firefox.exe\" -new-window localhost:8096 -foreground",
"D:/Program Files (x86)/AutoHotKey/AutoHotkey.exe Jump.ahk"],
["\"C:/Program Files (x86)/KeePass Password Safe 2/keepass.exe\""],
["C:/Python36/python.exe \"D:/Scripts/VM Managment/ToggleUbuntu.py\""],
["C:/Python36/python.exe \"D:/Scripts/VM Managment/ToggleLubuntu.py\""]]

root = Tk()

root.geometry("640x720+820+180")
root.overrideredirect(1)
root.attributes('-alpha', '0.75')

def loadImages():
	final = list()
	with open("images.txt", 'r') as file:
		for line in file:
			final.append(line.rstrip('\n'))

	return final

def exit(event):
		sys.exit()

def finalPhoto(file):
	photo = Image.open(file)
	photo = photo.resize((210, 240), Image.ANTIALIAS)
	return ImageTk.PhotoImage(photo)

def executeCommands(list):
	for command in list:
		Popen(command)
		time.sleep(.2)
	sys.exit()


def executeOne(event):
	executeCommands(commands[0])

def executeTwo(event):
	executeCommands(commands[1])

def executeThree(event):
	executeCommands(commands[2])

def executeFour(event):
	executeCommands(commands[3])

def executeFive(event):
	executeCommands(commands[4])

def executeSix(event):
	executeCommands(commands[5])

def executeSeven(event):
	executeCommands(commands[6])

def executeEight(event):
	executeCommands(commands[7])



images = loadImages()
lastPhoto = finalPhoto(images[1])

firstPhoto = finalPhoto(images[0])
one = Label(root, image=firstPhoto)
one.grid(column=0, row=0)

secondPhoto = finalPhoto(images[1])
two = Label(root, image=secondPhoto)
two.grid(column=1, row=0)

thirdPhoto = finalPhoto(images[2])
three = Label(root, image=thirdPhoto)
three.grid(column=2, row=0)

fourthPhoto = finalPhoto(images[3])
four = Label(root, image=fourthPhoto)
four.grid(column=0, row=1)

five = Label(root)
five.grid(column=1, row=1)

sixthPhoto = finalPhoto(images[4])
six = Label(root, image=sixthPhoto)
six.grid(column=2, row=1)

seventhPhoto = finalPhoto(images[5])
seven = Label(root, image=seventhPhoto)
seven.grid(column=0, row=2)

eigthPhoto = finalPhoto(images[6])
eight = Label(root, image=eigthPhoto)
eight.grid(column=1, row=2)

ninthPhoto = finalPhoto(images[7])
nine = Label(root, image=ninthPhoto)
nine.grid(column=2, row=2)

one.bind_all('<KeyPress-5>', exit)

one.bind_all('<KeyPress-7>', executeOne)
one.bind_all('<KeyPress-8>', executeTwo)
one.bind_all('<KeyPress-9>', executeThree)

one.bind_all('<KeyPress-4>', executeFour)
one.bind_all('<KeyPress-6>', executeFive)

one.bind_all('<KeyPress-1>', executeSix)
one.bind_all('<KeyPress-2>', executeSeven)
one.bind_all('<KeyPress-3>', executeEight)

root.mainloop()    