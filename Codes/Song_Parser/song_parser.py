
file1 = open(str("metallica_songs.txt"), "r", encoding="utf8")

lines = []
line_v = []
for i in file1.readlines():
    lines.append(i.split(";"))

for i in lines:
    item = i[0]
    item_number = i[1]
    item_number = item_number[:-1]
    item_list = [item, item_number]
    line_v.append(item_list)

for i in line_v:
    print(i)

file1.close()

file2 = open(str("set1.csv"), "r", encoding="utf8")
counter = 1
file3 = open(str("tour_to_song.csv"), "w", encoding="utf8")
for i in file2.readlines():
    for j in lines:
        if j[0] in i:
            song_id = j[1]
            song_id = song_id[:-1]
            file3.write(str(counter) + ";" + song_id + ";" + "S\n")
            print(str(counter) + ";" + j[0] + ";" + "S")
    counter += 1
file2.close()

file2 = open(str("last_track_set.csv"), "r", encoding="utf8")
counter = 1
for i in file2.readlines():
    for j in lines:
        if j[0] in i:
            song_id = j[1]
            song_id = song_id[:-1]
            file3.write(str(counter) + ";" + song_id + ";" + "LTS\n")
            print(str(counter) + ";" + j[0] + ";" + "LTS")
    counter += 1
file2.close()

file2 = open(str("last_track_encore.csv"), "r", encoding="utf8")
counter = 1
for i in file2.readlines():
    for j in lines:
        if j[0] in i:
            song_id = j[1]
            song_id = song_id[:-1]
            file3.write(str(counter) + ";" + song_id + ";" + "LTE\n")
            print(str(counter) + ";" + j[0] + ";" + "LTE")
    counter += 1
file2.close()

file2 = open(str("encore.csv"), "r", encoding="utf8")
counter = 1
for i in file2.readlines():
    for j in lines:
        if j[0] in i:
            song_id = j[1]
            song_id = song_id[:-1]
            file3.write(str(counter) + ";" + song_id + ";" + "E\n")
            print(str(counter) + ";" + j[0] + ";" + "E")
    counter += 1
file2.close()
file3.close()

