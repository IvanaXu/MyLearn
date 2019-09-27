# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal tPatterns the tf
import tensorflow as tf
import numpy as np


print('\nM05')
W = tf.Variable(tf.random_normal([1]), name='weight')
b = tf.Variable(tf.random_normal([1]), name='bias')
X = tf.placeholder(tf.float32, shape=[None])
Y = tf.placeholder(tf.float32, shape=[None])
# Our hypothesis XW+b
hypothesis = X * W + b
# cost/loss function
cost = tf.reduce_mean(tf.square(hypothesis - Y))
# Minimize
optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
train = optimizer.minimize(cost)
with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())
    # Fit the line
    for step in range(5000 + 1):
        cost_val, W_val, b_val, _ = sess.run(
            [cost, W, b, train],
            feed_dict={
                X: np.array([1, 2, 3]),
                Y: np.array([1, 2, 3]) * np.pi + np.e
            }
        )
        if step % 500 == 0:
            print(step, cost_val, W_val[0], b_val[0])
    print('True W&b: %.6f %.6f' % (np.pi, np.e))

