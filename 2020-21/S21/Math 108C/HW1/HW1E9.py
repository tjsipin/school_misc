import random
import numpy as np
import pandas as pd

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import confusion_matrix
from sklearn.metrics import f1_score
from sklearn.metrics import accuracy_score



def isInside(circle_x, circle_y, rad, x, y):
    # Compare radius of circle
    # with distance of its center
    # from given point
    if (x - circle_x)*(x - circle_x) + (y - circle_y)*(y - circle_y) <= rad*rad:
        return True
    else:
        return False

# class 1
class1 = set()
class1len = random.randint(200,300)
while len(class1) < class1len:
    x = round(random.uniform(1,5),2)
    y = round(random.uniform(2,6),2)
    circle_x = 3
    circle_y = 4
    rad = 2
    if isInside(circle_x, circle_y, rad, x, y):
        class1.add((x,y))

# class 2
class2 = set()
class2len = random.randint(200,300)
while len(class2) < class2len:
    x = round(random.uniform(-1.5,1.5),2)
    y = round(random.uniform(-1.5,1.5),2)
    circle_x = 0
    circle_y = 0
    rad = 1.5
    if isInside(circle_x, circle_y, rad, x, y):
        class2.add((x,y))

# our data set and converting to dataframe
dataset = class1.union(class2)
df = pd.DataFrame(dataset)

# adding the outcome to our df
outcome = []
for o in dataset:
    if o in class1:
        outcome.append(1)
    else:
        outcome.append(2)
df['Class Type'] = outcome

print(df)

# Split dataset
point = df.iloc[:,0:2]
ctype = df.iloc[:,2]
point_train, point_test, ctype_train, ctype_test = train_test_split(point, ctype, random_state=0, test_size=0.2)

# feature scaling
sc_point = StandardScaler()
point_train = sc_point.fit_transform(point_train)
point_test = sc_point.transform(point_test)

# Define the model: Init K-NN
classifier = KNeighborsClassifier(n_neighbors = 10, p=2, metric='euclidean')

# Fit Model
classifier.fit(point_train, ctype_train)

# Predict the test set results
ctype_pred = classifier.predict(point_test)
ctype_pred

# Evaluate Model
cm = confusion_matrix(ctype_test, ctype_pred)
print (cm)

print(f1_score(ctype_test, ctype_pred))

print(accuracy_score(ctype_test, ctype_pred))
