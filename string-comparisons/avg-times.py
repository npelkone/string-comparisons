times_file = open("./times-file.txt", "r")
s = times_file.read()

split_s = s.split()
split_s2 = []
convert_to_float = []

# change , signs from original string to . because float works with . signs
for i in split_s:
	x = i.replace(',','.')
	split_s2.append(x)

for i in split_s2:
	convert_to_float.append(float(i))
print(sum(convert_to_float) / len(convert_to_float))

times_file.close()

times_file_clear = open("./times-file.txt", "w")
times_file_clear.write('')
times_file_clear.close()
