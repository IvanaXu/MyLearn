# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal test the tf
import tensorflow as tf

print('\nM01')
hello = tf.constant('Hello TF!')
with tf.Session() as sess:
    print(sess.run(hello))

