import os, sys

for i in os.listdir("export"):
    if i.startswith("result"):
        os.system("python3 make_dataset.py export/%s >> logs.txt" % i)
