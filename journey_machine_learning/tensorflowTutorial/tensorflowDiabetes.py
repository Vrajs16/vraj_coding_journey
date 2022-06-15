import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split

from sklearn.preprocessing import StandardScaler
import tensorflow as tf

df = pd.read_csv("diabetes.csv")
# print(df.head())

# for i in range(len(df.columns[:-1])):
#     label = df.columns[i]
#     plt.hist(df[df['Outcome'] == 1][label], color='blue', label="Diabetes")
#     plt.hist(df[df['Outcome'] == 0][label], color='red', label='No Diabetes')
#     plt.title(label)
#     plt.ylabel("N")
#     plt.xlabel(label)
#     plt.legend()
#     plt.show()

X = df[df.columns[:-1]].values
y  = df[df.columns[-1]].values

scalar = StandardScaler()
x = scalar.fit_transform(X)

X_train, X_temp, y_train, y_temp = train_test_split(X, y, test_size=0.4, random_state=0)
X_valid, X_test, y_valid, y_test = train_test_split(X_temp, y_temp, test_size=0.5, random_state=0)

model = tf.keras.Sequential([
    tf.keras.layers.Dense(16, activation='relu'),
    tf.keras.layers.Dense(16, activation='relu'),
    tf.keras.layers.Dense(1, activation='sigmoid')
])

model.compile(optimizer=tf.keras.optimizers.Adam(learning_rate=0.001),loss=tf.keras.losses.BinaryCrossentropy(), metrics = ['accuracy'])
# model.evaluate(X_valid,y_valid)
model.fit(X_train,y_train, batch_size=16, epochs=20, validation_data=(X_valid,y_valid))
