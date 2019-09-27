# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal test the tf
import tensorflow as tf

print('\nM02')
node1 = tf.constant(3.0, tf.float32)
node2 = tf.constant(4.0)
node3 = tf.add(node1, node2)
print('node1:', node1)
print('node2:', node2)
print('node3:', node3)
with tf.Session() as sess:
    print(sess.run([node1, node2]))
    print(sess.run(node3))

