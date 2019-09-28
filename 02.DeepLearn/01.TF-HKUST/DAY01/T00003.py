# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal test the tf
import tensorflow as tf

print('\nM03')
a = tf.placeholder(tf.float32)
b = tf.placeholder(tf.float32)
adder_node = a + b
with tf.Session() as sess:
    print(sess.run(adder_node, feed_dict={a: 3, b: 4.5}))
    print(sess.run(adder_node, feed_dict={a: [1, 3], b: [2, 4]}))

