# -*-coding:utf-8-*-
# @auth ivan
# @time 2019-09-28 00:08:00
# @goal c001

import tensorflow as tf
hello = tf.constant('Hello, TensorFlow!')
sess = tf.compat.v1.Session()
print(sess.run(hello))
