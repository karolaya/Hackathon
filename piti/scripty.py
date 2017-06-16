import sqlite3
import numpy as np
import sys
from sklearn import svm

test = np.array(sys.argv[1:]).reshape(1,-1)

conn = sqlite3.connect('hackaton/db/development_py.sqlite3')
cc = conn.cursor()
cc.execute('SELECT * FROM students')

data = cc.fetchall()

arr = np.zeros([len(data), 6])
labels = np.zeros([len(data), 1])

conn.close()

for i in range(len(data)):
    for j in range(3,10):
        if j == 9:
            labels[i][0] = data[i][j]
        else:
            arr[i][j-3] = data[i][j]

arr = arr.astype(float)

# Reduce labels amount to 9
labels = labels.astype(int)
clf = svm.SVC(decision_function_shape='ovr')
clf.fit(arr, labels.ravel())

#test = np.array([4,4,4,4,4,4]).reshape(1,-1)

confidence = abs(np.array(clf.decision_function(test)))


print(clf.predict(test))
