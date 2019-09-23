# f = open("S1E1.txt", "r")
# print(f.readline())
import re

master_string = ""
episode = "S1E12"
f = open(episode + ".txt", "r")
for x in f:
	master_string += x


master_string = master_string.replace("\n", " ")
master_string = master_string.replace("\t", "")

#Find all the actors and replace them all with an easy string sub
actors = re.findall(r'\w+:?(?=:)',master_string)
actorSet = set(actors)
result = re.sub(r'\w+:?(?=:)', "LUTZ", master_string)
tokens = result.split("LUTZ: ")

tokens.remove('')

# for i in range(len(tokens)):
# 	print(actors[i] + ": " + tokens[i])
# 	print("")


line1 = "isf_version: '0.1'" +"\n"
line2 = "scriptconv_version: '0.1'"+"\n"
line3 = "src: put something here? --> A bit unsure not gonna lie lol oops"+"\n"
line4 = "---"+"\n"

# Program to show various ways to read and
# write data in a file.
file1 = open(episode+"-Y.yaml","w")

file1.write(line1)
file1.write(line2)
file1.write(line3)
file1.write(line4)
for i in range(len(tokens)):
	file1.write("- character: " + actors[i] +"\n")
	file1.write("  line: " + tokens[i]+"\n")
file1.write(line4)
file1.write("characters:"+"\n")
for a in actorSet:
	file1.write("- " + a+"\n")
file1.close() #to change file access modes

