# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal tPatterns the tf
import tensorflow as tf


print('\nM08')
x_data = [
    [1, 2, 1, 1], [2, 1, 3, 2], [3, 1, 3, 4], [4, 1, 5, 5],
    [1, 7, 5, 5], [1, 2, 5, 6], [1, 6, 6, 6], [1, 7, 7, 7]
]
y_data = [
    [0, 0, 1], [0, 0, 1], [0, 0, 1], [0, 1, 0],
    [0, 1, 0], [0, 1, 0], [1, 0, 0], [1, 0, 0]
]
X = tf.placeholder("float", [None, 4])
Y = tf.placeholder("float", [None, 3])
nb_classes = 3
W = tf.Variable(tf.random_normal([4, nb_classes]), name='weight')
b = tf.Variable(tf.random_normal([nb_classes]), name='bias')
# tf.nn.softmax computes softmax activations
# softmax = exp(logits) / reduce_sum(exp(logits), dim)
hypothesis = tf.nn.softmax(tf.matmul(X, W) + b)
# Cross entropy cost/loss
cost = tf.reduce_mean(-tf.reduce_sum(Y * tf.log(hypothesis), axis=1))
optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
train = optimizer.minimize(cost)
# Launch graph
with tf.Session() as sess:
   sess.run(tf.global_variables_initializer())
   for step in range(5000+1):
       sess.run(train, feed_dict={X: x_data, Y: y_data})
       if step % 500 == 0:
           print(step, sess.run(cost, feed_dict={X: x_data, Y: y_data}))
   hypothesis = tf.nn.softmax(tf.matmul(X, W) + b)

   # ~ tf.arg_max([[1,2,3],[2,4,8],[3,1,1],[4,13,3]],1) array([2, 2, 0, 1])
   a1 = sess.run(
       hypothesis,
       feed_dict={
           X: [
               [1, 11, 7, 9]
           ]
       }
   )
   print(a1, sess.run(tf.argmax(a1, 1)))
   a2 = sess.run(
       hypothesis,
       feed_dict={
           X: [
               [1, 11, 7, 9],
               [1, 3, 4, 3],
               [1, 1, 0, 1]
           ]
       }
   )
   print(a2, sess.run(tf.argmax(a2, 1)))

