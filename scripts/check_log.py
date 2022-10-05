from cmath import exp
from enum import unique
import re
import datetime
import os
import json
import subprocess
import time
from argparse import ArgumentParser, Namespace
from typing import List, Dict, Set



exp_time_list = []
time_list = []
exp_unique_list = []
unique_list = []
exp_total_list = []
total_list = []
lf = open("./ape-log.log")
for line in lf.readlines():
    if line[:2] == './':
        app_name = re.search('./(.*).apk',line).group(1)
        app_dt = re.search('themis#(.*)/log',line).group(1)
        app_timearray = datetime.datetime.strptime(app_dt, "%Y-%m-%d-%H-%M-%S")
        exp_time_list.append(time_list)
        # exp_list[app_name+'-'+app_dt]=[]
        exp_unique_list.append(unique_list)
        exp_total_list.append(total_list)
        time_list = []
        unique_list = []
        total_list = []
    elif line != None:
        exp_dt = "2022-" + line[:14]
        exp_name = line.split( )[6][:-1]
        exp_timearray = datetime.datetime.strptime(exp_dt, "%Y-%m-%d %H:%M:%S")
        exp_time = (exp_timearray - app_timearray).total_seconds() / 60
        exp_time = "{:.0f}".format(exp_time)
        if int(exp_time) <= 60:
            exp_turple = {exp_name:exp_time}
            # exp_list[app_name+'-'+app_dt].append(exp_turple)
            time_list.append(exp_turple)
            if exp_name not in unique_list:
                unique_list.append(exp_name)
            total_list.append(exp_name)

exp_time_list.append(time_list)
exp_unique_list.append(unique_list)
exp_total_list.append(total_list)
del(exp_time_list[0])
del(exp_unique_list[0])
del(exp_total_list[0])




# json_str = json.dumps(exp_time_list)
# with open('log500.json', 'w') as json_file:
#     json_file.write(json_str)



print("###################### Unique #####################")

for i in range(len(exp_unique_list)):
    if (i % 2) == 0:
        if exp_unique_list[i] == exp_unique_list[i+1] and exp_unique_list[i] != []:
            print("yes")
        elif exp_unique_list[i] == exp_unique_list[i+1] and exp_unique_list[i] == []:
            print("None")
        else: 
            print("no")

print("###################### Total #####################")

for i in range(len(exp_total_list)):
    if (i % 2) == 0:
        if exp_total_list[i] == exp_total_list[i+1] and exp_total_list[i] != []:
            print("yes")
        elif exp_total_list[i] == exp_total_list[i+1] and exp_total_list[i] == []:
            print("None")
        else:
            print("no")

print("###################### overlap #####################")

for i in range(len(exp_unique_list)):
    if (i % 2) == 0:
        unionset = list(set(exp_unique_list[i]).union(set(exp_unique_list[i])))
        if unionset != []:
            print("yes")
        else:
            print("no")


print("###################### Time #####################")

for i in range(len(exp_time_list)):
    if (i % 2) == 0:
        if exp_time_list[i] == exp_time_list[i+1] and exp_time_list[i] != []:
            print("yes")
        elif exp_time_list[i] == exp_time_list[i+1] and exp_time_list[i] == []:
            print("None")
        else:
            print("no")


print("###################### Num #####################")

for i in range(len(exp_unique_list)):
    if (i % 2) == 0:
        print(len(exp_unique_list[i]))


print("###################### Num #####################")

for i in range(len(exp_unique_list)):
    if (i % 2) != 0:
        print(len(exp_unique_list[i]))

# seta = [2,8,24,36]
# for i in range(len(exp_unique_list)):
#     if i in seta:
#         print("################number: " + str(i))
#         print(exp_unique_list[i])
#         print("################number: " + str(i+1))
#         print(exp_unique_list[i+1])

print(exp_unique_list)