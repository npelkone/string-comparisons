#!/usr/bin/python3

import copy 
import time
# import re


string_file  = open("../string-100m.txt", "r")
s = string_file.read()
string_file.close()

# start = time.time()


# print(s[-1:])

# # regex 1
# re.findall("bab{3}", s)
# # regex 2
# re.findall("bbbba+",s)
# # regex 3
# re.findall("bbbbb|aaaaa",s)
# # regex 4
# re.findall("bab{3}|bbbba+",s)
# # regex 5
# re.findall("(bbbbb|aaaaa)+",s)

# # --------- concatenate ---------
# s+'a'

# # --------- replace  ---------
# s.replace('abba','CCCC')

# # --------- equals ---------
# s2 = s+'a'
# if s is s2:
#     pass
# else:
#     pass

# # --------- uppercase ---------
# s.upper()

# --------- find first index of substring ---------
# s.find('abba')

# # --------- duplicate ---------
# s2 = copy.deepcopy(s)

# # --------- sort ---------
# sorted(s)

# # --------- reverse ---------
# s[::-1]


# end = time.time()

# f = open("times-file.txt", "a+")
# f.write(str((end-start)*1000))
# f.write("\n")