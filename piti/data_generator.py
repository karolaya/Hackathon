import sqlite3
import random

def giveItToMe(num):
    before_dec, after_dec = str(num).split('.')
    return float('.'.join((before_dec, after_dec[0:2])))


conn = sqlite3.connect('hackaton/db/development.sqlite3')
cc = conn.cursor()

#cc.execute('''CREATE TABLE IF NOT EXISTS students
#             (identification INTEGER, nombre VARCHAR, institution_id INTEGER, nota9a FLOAT, nota9e FLOAT, nota10a FLOAT,
#             nota10e FLOAT, nota11a FLOAT, nota11e FLOAT, icfes FLOAT, created_at DATETIME, updated_at DATETIME)''')

name_base = 'Karolay_'

names = [name_base + str(i) for i in range(1000)]
identifications = [2000000000 + i for i in range(1000)]
created_at = ['2017-06-16 14:55:26.315424' for i in range(1000)]
updated_at = ['2017-06-16 14:55:26.315424' for i in range(1000)]

institutions_ids = list()
nota9a = list()
nota9e = list()
nota10a = list()
nota10e = list()
nota11a = list()
nota11e = list()
icfes = list()


for i in range(1000):
    if i < 250:
        institutions_ids.append(1)
        icfes.append(giveItToMe(random.uniform(4.0, 5.0)))
        nota9a.append(giveItToMe(random.uniform(4.5, 5.0)))
        nota9e.append(giveItToMe(random.uniform(4.8, 5.0)))
        nota10a.append(giveItToMe(random.uniform(4.1, 4.6)))
        nota10e.append(giveItToMe(random.uniform(4.4, 4.9)))
        nota11a.append(giveItToMe(random.uniform(3.5, 4.4)))
        nota11e.append(giveItToMe(random.uniform(4.2, 5.0)))
    elif i < 500:
        institutions_ids.append(2)
        icfes.append(giveItToMe(random.uniform(3.0, 4.0)))
        nota9a.append(giveItToMe(random.uniform(3.5, 5.0)))
        nota9e.append(giveItToMe(random.uniform(3.8, 5.0)))
        nota10a.append(giveItToMe(random.uniform(3.1, 3.6)))
        nota10e.append(giveItToMe(random.uniform(3.3, 3.9)))
        nota11a.append(giveItToMe(random.uniform(3.5, 3.3)))
        nota11e.append(giveItToMe(random.uniform(3.2, 5.0)))
    elif i < 750:
        institutions_ids.append(3)
        icfes.append(giveItToMe(random.uniform(3.5, 4.5)))
        nota9a.append(giveItToMe(random.uniform(3.2, 4.0)))
        nota9e.append(giveItToMe(random.uniform(3.8, 4.0)))
        nota10a.append(giveItToMe(random.uniform(3.1, 3.6)))
        nota10e.append(giveItToMe(random.uniform(3.3, 3.9)))
        nota11a.append(giveItToMe(random.uniform(3.2, 3.3)))
        nota11e.append(giveItToMe(random.uniform(3.2, 4.0)))
    else:
        institutions_ids.append(4)
        icfes.append(giveItToMe(random.uniform(4.2, 4.8)))
        nota9a.append(giveItToMe(random.uniform(4.5, 4.8)))
        nota9e.append(giveItToMe(random.uniform(3.0, 4.0)))
        nota10a.append(giveItToMe(random.uniform(4.1, 4.6)))
        nota10e.append(giveItToMe(random.uniform(4.4, 4.9)))
        nota11a.append(giveItToMe(random.uniform(4.5, 4.4)))
        nota11e.append(giveItToMe(random.uniform(4.2, 5.0)))

data = [tuple([identifications[i], names[i], institutions_ids[i], nota9a[i], nota9e[i],
    nota10a[i], nota10e[i], nota11a[i], nota11e[i], icfes[i], created_at[i], updated_at[i]]) for i in range(1000)]

cc.executemany('INSERT INTO students VALUES (NULL,?,?,?,?,?,?,?,?,?,?,?,?)', data)

conn.commit()
conn.close()