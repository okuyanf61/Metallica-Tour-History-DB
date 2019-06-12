file1 = open(str("location_modified.csv"), "r", encoding="utf8")
file2 = open(str("city_unique.csv"), "r", encoding="utf8")

location = []
city_unique = []


for i in file1.readlines():
    location.append(i.split(","))

for i in file2.readlines():
    city_unique.append(i.split(","))

file3 = open(str("city_id.csv"), "w", encoding="utf8")
counter = 1
for i in location:
    for j in city_unique:
        if i[0] in j[1]:
            file3.write(j[0] + "\n")
            break
    counter += 1
