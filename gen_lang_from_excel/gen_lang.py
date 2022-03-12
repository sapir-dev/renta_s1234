import re

trans_out_file = open("strings_out.xml", "w")
trans_out_file.write("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n")
trans_out_file.write("<resources>\n")

with open("lang1.csv") as f:
	for line in f.readlines():
		line=line.strip()
		if(len(line)==0):
			continue
		match = re.search('\\s*(?P<key>\\w+)\\s*>\\s*(?P<trans>.+)\\s*',line)
		if(match):
			key = match.group('key')
			trans = match.group('trans')
			trans_out_file.write("\t<string name=\"%s\" formatted=\"false\">%s</string>\n"%(key,trans))
			pass
		else:
			print line
trans_out_file.write("</resources>\n")
trans_out_file.close()
