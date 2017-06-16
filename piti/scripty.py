import sqlite3
import numpy as np
from sklearn import svm

conn = sqlite3.connect('hackaton/db/development.sqlite3')
cc = conn.cursor()
cc.execute('SELECT * FROM students')

data = cc.fetchall()

arr = np.zeros([len(data), 6])
labels = np.zeros([len(data), 1])

conn.close()

for i in range(len(data)):
    for j in range(4,11):
        if j == 10:
            labels[i][0] = data[i][j]
        else:
            arr[i][j-4] = data[i][j]

arr = arr.astype(float)

# Reduce labels amount to 9
labels = labels.astype(int)
clf = svm.SVC(decision_function_shape='ovr')
clf.fit(arr, labels.ravel())

print(clf.predict(np.array([4,4,4,4,4,4]).reshape(1,-1)))
