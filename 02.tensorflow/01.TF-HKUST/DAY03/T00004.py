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

with tf.variable_scope('3_batches_dynamic_length') as scope:
    x_data = np.array([[h, e, l, l, o],
                       [e, o, l, l, l],
                       [l, l, e, e, l]], dtype=np.float32)
    pp.pprint(x_data)
    hidden_size = 2
    cell = tf.contrib.rnn.BasicLSTMCell(num_units=hidden_size, state_is_tuple=True)
    outputs, _states = tf.nn.dynamic_rnn(cell, x_data, sequence_length=[5, 3, 4], dtype=tf.float32)
    sess.run(tf.global_variables_initializer())
    pp.pprint(outputs.eval())

