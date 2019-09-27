# -*-coding:utf-8-*-
# @auth ivan
# @time 20180720 11:48
# @goal tPatterns the rnn base
import tensorflow as tf
import numpy as np
import pprint
pp = pprint.PrettyPrinter(indent=4)
sess = tf.InteractiveSession()

h = [1, 0, 0, 0]
e = [0, 1, 0, 0]
l = [0, 0, 1, 0]
o = [0, 0, 0, 1]

with tf.variable_scope('2_sequances') as scope:
    hidden_size = 2
    cell = tf.contrib.rnn.BasicRNNCell(num_units=hidden_size)
    x_data = np.array([[h, e, l, l, o]], dtype=np.float32)
    print(x_data.shape)
    pp.pprint(x_data)
    outputs, states = tf.nn.dynamic_rnn(cell, x_data, dtype=tf.float32)
    sess.run(tf.global_variables_initializer())
    pp.pprint(outputs.eval())

