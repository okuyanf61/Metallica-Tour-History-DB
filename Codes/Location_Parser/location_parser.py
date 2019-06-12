file1 = open(str("location_modified.csv"), "r", encoding="utf8")

lines = []
lines_unique = []
city = []
city_unique = []
state = []
state_unique = []
country = []
country_unique = []

for i in file1.readlines():
    lines.append(i.split(","))

file1.close()

for i in lines:
    if i not in lines_unique:
        lines_unique.append(i)

for i in lines:
    if i[-1:] == "\n":
        if i.__len__() == 2:
            backslash_n = i[1]
            city.append(i[0])
            state.append(i[0])
            country.append(backslash_n[-1:])

        else:
            backslash_n = i[2]
            city.append(i[0])
            state.append(i[1])
            country.append(backslash_n[-1:])
    else:
        if i.__len__() == 2:
            city.append(i[0])
            state.append(i[0])
            country.append(i[1])

        else:
            city.append(i[0])
            state.append(i[1])
            country.append(i[2])

for i in country:
    if i not in country_unique:
        country_unique.append(i)

for i in state:
    if i not in state_unique:
        state_unique.append(i)

for i in city:
    if i not in city_unique:
        city_unique.append(i)

print("Lines: " + str(lines.__len__()))
print("Lines Unique: " + str(lines_unique.__len__()))
print("City: " + str(city.__len__()))
print("City Unique: " + str(city_unique.__len__()))
print("State: " + str(state.__len__()))
print("State Unique: " + str(state_unique.__len__()))
print("Country: " + str(country.__len__()))
print("Country Unique: " + str(country_unique.__len__()))

file2 = open(str("country_unique.csv"), "w", encoding="utf8")
country_id = 0

for i in country_unique:
    country_id += 1
    file2.write(str(country_id) + "," + i)

file2.close()

file3 = open(str("country_unique.csv"), "r", encoding="utf8")
country_lines = []
for i in file3.readlines():
    country_lines.append(i.split(","))

file3.close()

file4 = open(str("state_unique.csv"), "w", encoding="utf8")
state_id = 1
loop_breaker = 0

for i in state_unique:
    for j in lines_unique:
        if loop_breaker == 1:
            loop_breaker = 0
            break
        for k in country_lines:
            if j.__len__() == 2 and i == j[0] and j[1] == k[1]:
                file4.write(str(state_id) + "," + i + "," + k[0] + "\n")
                state_id += 1
                loop_breaker = 1
                break
            elif j.__len__() == 3 and i == j[1] and j[2] == k[1]:
                file4.write(str(state_id) + "," + i + "," + k[0] + "\n")
                state_id += 1
                loop_breaker = 1
                break

file4.close()

file5 = open(str("state_unique.csv"), "r", encoding="utf8")
state_lines = []

for i in file5.readlines():
    state_lines.append(i.split(","))

file5.close()

file6 = open(str("city_unique.csv"), "w", encoding="utf8")
loop_breaker = 0
city_id = 1

for i in city_unique:
    for j in lines_unique:
        if loop_breaker == 1:
            loop_breaker = 0
            break
        for k in state_lines:
            if j.__len__() == 2 and i == j[0] and j[0] == k[1]:
                file6.write(str(city_id) + "," + i + "," + k[0] + "\n")
                city_id += 1
                loop_breaker = 1
                break
            elif j.__len__() == 3 and i == j[0] and j[1] == k[1]:
                file6.write(str(city_id) + "," + i + "," + k[0] + "\n")
                city_id += 1
                loop_breaker = 1
                break

file6.close()
