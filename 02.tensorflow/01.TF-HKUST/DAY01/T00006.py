# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal tPatterns the tf
import tensorflow as tf
import numpy as np


print('\nM06')
x_data = np.array(
    [
        [1, 2], [2, 3], [3, 1], [4, 3], [5, 3], [6, 2]
    ]
)
y_data = np.array(
    [
        [0], [0], [0], [1], [1], [1]
    ]
)
# placeholders for a tensor that will be always fed.
X = tf.placeholder(tf.float32, shape=[None, 2])
Y = tf.placeholder(tf.float32, shape=[None, 1])
W = tf.Variable(tf.random_normal([2, 1]), name='weight')
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
# ~ tf.equal tf.equal(1,1) True;tf.equal(1,2) False;
# ~ tf.cast True 1 False 0;
# Launch graph
with tf.Session() as sess:
   # Initialize TensorFlow variables
   sess.run(tf.global_variables_initializer())

   for step in range(5000+1):
       cost_val, _ = sess.run([cost, train], feed_dict={X: x_data, Y: y_data})
       if step % 500 == 0:
           print(step, cost_val)

   # Accuracy report
   h, c, a = sess.run(
       [hypothesis, predicted, accuracy],
       feed_dict={X: x_data, Y: y_data}
   )
   print("\nHypothesis:\n", h, "\nCorrect (Y):\n", c, "\nAccuracy:\n", a)

