# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal tPatterns the tf
import tensorflow as tf
import numpy as np


print('\nM04')
x_train = np.array(
    [1, 2, 3]
)
y_train = x_train * np.pi + np.e
W = tf.Variable(tf.random_normal([1]), name='weight')
b = tf.Variable(tf.random_normal([1]), name='bias')
# Our hypothesis XW+b
hypothesis = x_train * W + b
# cost/loss function
cost = tf.reduce_mean(tf.square(hypothesis - y_train))
# Minimize
optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
train = optimizer.minimize(cost)
# Launch the graph in a session.
with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())
    # Fit the line
    for step in range(5000 + 1):
        sess.run(train)
        if step % 500 == 0:
            print(step, sess.run(cost), sess.run(W)[0], sess.run(b)[0])
    print('True W&b: %.6f %.6f' % (np.pi, np.e))

