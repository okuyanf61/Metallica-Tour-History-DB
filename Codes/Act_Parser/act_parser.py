file1 = open(str("sets.csv"), "r", encoding="utf8")
file2 = open(str("act_names_unique.csv"), "r", encoding="utf8")

lines_set = []
line_act = []
for i in file1.readlines():
    lines_set.append(i)

for i in file2.readlines():
    line_act.append(i.split(";"))

counter = 1
file3 = open(str("tour_to_act.csv"), "w", encoding="utf8")


for i in lines_set:
    for j in line_act:
        if j[0] in i:
            file3.write(str(counter) + ";" + j[1])
            print(j[0], counter)
    counter += 1

print(lines_set.__len__())
print(line_act.__len__())
