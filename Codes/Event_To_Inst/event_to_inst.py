# Has_Guitar_Solo;
# Has_Bass_Solo;
# Has_Drum_Solo;
# event_id

file1 = open(str("instrument_data.csv"), "r", encoding="utf8")

lines = []
for i in file1.readlines():
    lines.append(i.split(";"))

file1.close()
print(lines)


file2 = open(str("event_to_inst.csv"), "w", encoding="utf8")


for i in lines:
    for j in range(3):
        event_id = str(i[3])
        event_id = event_id[:-1]
        if i[j] == "TRUE":
            file2.write(event_id + "," + str(j + 1) + "\n")

file2.close()
