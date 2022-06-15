import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# import tensorflow as tf
# import tensorflow_hub as hub

df = pd.read_csv("./wine-reviews.csv", usecols=['country', 'description', 'points', 'price', 'variety', 'winery'])
print(df.head())

# print(df = df.dropna(subset=['description', "points"]))

plt.hist(df.points, bins=20)
plt.show()
