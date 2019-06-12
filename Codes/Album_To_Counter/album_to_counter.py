# Kill_Em_All;
# Ride_The_Lightning_Count;
# Master_Of_Puppets_Count;
# And_Justice_For_All_Count;
# Metallica_Count;
# Load_Count;
# Re_Load_Count;
# Garage_Inc_Count;
# St_Anger_Count;
# Death_Magnetic_Count;
# Hardwired_To_Self_Destruct_Count;
# URL;
# event_id

file1 = open(str("album_counter.csv"), "r", encoding="utf8")

lines = []
for i in file1.readlines():
    lines.append(i.split(";"))

file1.close()

file2 = open(str("album_to_counter.csv"), "w", encoding="utf8")


for i in lines:
    for j in range(11):
        event_id = str(i[12])
        event_id = event_id[:-1]
        count = i[j]
        count = count[:-2]
        file2.write(event_id + "," + str(j + 1) + "," + count + "\n")

file2.close()
