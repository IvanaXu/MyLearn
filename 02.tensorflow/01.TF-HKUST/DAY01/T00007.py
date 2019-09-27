# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal test the tf
import tensorflow as tf
import numpy as np


print('\nM07')
xy = np.loadtxt('Data/data-03-diabetes.csv', delimiter=',', dtype=np.float32)
x_data = xy[:, 0:-1]
y_data = xy[:, [-1]]
print('X_DATA.SIZE:', x_data.size, 'Y_DATA.SIZE:', y_data.size)
# placeholders for a tensor that will be always fed.
X = tf.placeholder(tf.float32, shape=[None, 8])
Y = tf.placeholder(tf.float32, shape=[None, 1])
W = tf.Variable(tf.random_normal([8, 1]), name='weight')
b = tf.Variable(tf.random_normal([1]), name='bias')
# Hypothesis using sigmoid: tf.div(1., 1. + tf.exp(tf.matmul(X, W)))
hypothesis = tf.sigmoid(tf.matmul(X, W) + b)
# cost/loss function
cost = -tf.reduce_mean(Y * tf.log(hypothesis) + (1 - Y) * tf.log(1 - hypothesis))
optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
train = optimizer.minimize(cost)
# Accuracy computation
# True if hypothesis>0.5 else False
predicted = tf.cast(hypothesis > 0.5, dtype=tf.float32)
accuracy = tf.reduce_mean(tf.cast(tf.equal(predicted, Y), dtype=tf.float32))
# Launch graph
with tf.Session() as sess:
   sess.run(tf.global_variables_initializer())
   feed = {X: x_data, Y: y_data}
   for step in range(5000+1):
       sess.run(train, feed_dict=feed)
       if step % 500 == 0:
           print(step, sess.run(cost, feed_dict=feed))

   # Accuracy report
   h, c, a = sess.run([hypothesis, predicted, accuracy], feed_dict=feed)
   print("\nHypothesis:\n", h, "\nCorrect (Y):\n", c, "\nAccuracy:\n", a)

