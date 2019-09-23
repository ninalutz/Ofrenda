# f = open("S1E1.txt", "r")
# print(f.readline())
import collections
import re
import yaml
import codecs

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

#Make the characters structure to dump into the YAML
characters = []
for i in range(len(tokens)):
	characters.append({'character' : actors[i], 'line' : tokens[i]})

#Use dump with unicode to correctly do accents, etc
f = codecs.open("plz.yaml","w",encoding="utf-8")
f.write(yaml.dump(characters, allow_unicode=True, default_flow_style=False))
f.close()

