# -*-coding:utf-8-*-
# @auth ivan
# @time 20180717
# @goal test the tf
import tensorflow as tf
import numpy as np
import random


# print('\nM01')
# hello = tf.constant('Hello TF!')
# with tf.Session() as sess:
#     print(sess.run(hello))


# print('\nM02')
# node1 = tf.constant(3.0, tf.float32)
# node2 = tf.constant(4.0)
# node3 = tf.add(node1, node2)
# print('node1:', node1)
# print('node2:', node2)
# print('node3:', node3)
# with tf.Session() as sess:
#     print(sess.run([node1, node2]))
#     print(sess.run(node3))


# print('\nM03')
# a = tf.placeholder(tf.float32)
# b = tf.placeholder(tf.float32)
# adder_node = a + b
# with tf.Session() as sess:
#     print(sess.run(adder_node, feed_dict={a: 3, b: 4.5}))
#     print(sess.run(adder_node, feed_dict={a: [1, 3], b: [2, 4]}))
#     # print(sess.run(adder_node, feed_dict={a:1, b:[2, 4]}))


# print('\nM04')
# x_train = np.array(
#     [1, 2, 3]
# )
# y_train = x_train * np.pi + np.e
# W = tf.Variable(tf.random_normal([1]), name='weight')
# b = tf.Variable(tf.random_normal([1]), name='bias')
# # Our hypothesis XW+b
# hypothesis = x_train * W + b
# # cost/loss function
# cost = tf.reduce_mean(tf.square(hypothesis - y_train))
# # Minimize
# optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
# train = optimizer.minimize(cost)
# # Launch the graph in a session.
# with tf.Session() as sess:
#     sess.run(tf.global_variables_initializer())
#     # Fit the line
#     for step in range(5000 + 1):
#         sess.run(train)
#         if step % 500 == 0:
#             print(step, sess.run(cost), sess.run(W)[0], sess.run(b)[0])
#     print('True W&b: %.6f %.6f' % (np.pi, np.e))


# print('\nM05')
# W = tf.Variable(tf.random_normal([1]), name='weight')
# b = tf.Variable(tf.random_normal([1]), name='bias')
# X = tf.placeholder(tf.float32, shape=[None])
# Y = tf.placeholder(tf.float32, shape=[None])
# # Our hypothesis XW+b
# hypothesis = X * W + b
# # cost/loss function
# cost = tf.reduce_mean(tf.square(hypothesis - Y))
# # Minimize
# optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
# train = optimizer.minimize(cost)
# with tf.Session() as sess:
#     sess.run(tf.global_variables_initializer())
#     # Fit the line
#     for step in range(5000 + 1):
#         cost_val, W_val, b_val, _ = sess.run(
#             [cost, W, b, train],
#             feed_dict={
#                 X: np.array([1, 2, 3]),
#                 Y: np.array([1, 2, 3]) * np.pi + np.e
#             }
#         )
#         if step % 500 == 0:
#             print(step, cost_val, W_val[0], b_val[0])
#     print('True W&b: %.6f %.6f' % (np.pi, np.e))


# print('\nM06')
# x_data = np.array(
#     [
#         [1, 2], [2, 3], [3, 1], [4, 3], [5, 3], [6, 2]
#     ]
# )
# y_data = np.array(
#     [
#         [0], [0], [0], [1], [1], [1]
#     ]
# )
# # placeholders for a tensor that will be always fed.
# X = tf.placeholder(tf.float32, shape=[None, 2])
# Y = tf.placeholder(tf.float32, shape=[None, 1])
# W = tf.Variable(tf.random_normal([2, 1]), name='weight')
# b = tf.Variable(tf.random_normal([1]), name='bias')
# # Hypothesis using sigmoid: tf.div(1., 1. + tf.exp(tf.matmul(X, W)))
# hypothesis = tf.sigmoid(tf.matmul(X, W) + b)
# # cost/loss function
# cost = -tf.reduce_mean(Y * tf.log(hypothesis) + (1 - Y) * tf.log(1 - hypothesis))
# optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
# train = optimizer.minimize(cost)
# # Accuracy computation
# # True if hypothesis>0.5 else False
# predicted = tf.cast(hypothesis > 0.5, dtype=tf.float32)
# accuracy = tf.reduce_mean(tf.cast(tf.equal(predicted, Y), dtype=tf.float32))
# # ~ tf.equal tf.equal(1,1) True;tf.equal(1,2) False;
# # ~ tf.cast True 1 False 0;
# # Launch graph
# with tf.Session() as sess:
#    # Initialize TensorFlow variables
#    sess.run(tf.global_variables_initializer())
#
#    for step in range(5000+1):
#        cost_val, _ = sess.run([cost, train], feed_dict={X: x_data, Y: y_data})
#        if step % 500 == 0:
#            print(step, cost_val)
#
#    # Accuracy report
#    h, c, a = sess.run(
#        [hypothesis, predicted, accuracy],
#        feed_dict={X: x_data, Y: y_data}
#    )
#    print("\nHypothesis:\n", h, "\nCorrect (Y):\n", c, "\nAccuracy:\n", a)


# print('\nM07')
# xy = np.loadtxt('Data/data-03-diabetes.csv', delimiter=',', dtype=np.float32)
# x_data = xy[:, 0:-1]
# y_data = xy[:, [-1]]
# print('X_DATA.SIZE:', x_data.size, 'Y_DATA.SIZE:', y_data.size)
# # placeholders for a tensor that will be always fed.
# X = tf.placeholder(tf.float32, shape=[None, 8])
# Y = tf.placeholder(tf.float32, shape=[None, 1])
# W = tf.Variable(tf.random_normal([8, 1]), name='weight')
# b = tf.Variable(tf.random_normal([1]), name='bias')
# # Hypothesis using sigmoid: tf.div(1., 1. + tf.exp(tf.matmul(X, W)))
# hypothesis = tf.sigmoid(tf.matmul(X, W) + b)
# # cost/loss function
# cost = -tf.reduce_mean(Y * tf.log(hypothesis) + (1 - Y) * tf.log(1 - hypothesis))
# optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
# train = optimizer.minimize(cost)
# # Accuracy computation
# # True if hypothesis>0.5 else False
# predicted = tf.cast(hypothesis > 0.5, dtype=tf.float32)
# accuracy = tf.reduce_mean(tf.cast(tf.equal(predicted, Y), dtype=tf.float32))
# # Launch graph
# with tf.Session() as sess:
#    sess.run(tf.global_variables_initializer())
#    feed = {X: x_data, Y: y_data}
#    for step in range(5000+1):
#        sess.run(train, feed_dict=feed)
#        if step % 500 == 0:
#            print(step, sess.run(cost, feed_dict=feed))
#
#    # Accuracy report
#    h, c, a = sess.run([hypothesis, predicted, accuracy], feed_dict=feed)
#    print("\nHypothesis:\n", np.average(h), "\nCorrect (Y):\n", np.average(c), "\nAccuracy:\n", a)


# print('\nM08')
# x_data = [
#     [1, 2, 1, 1], [2, 1, 3, 2], [3, 1, 3, 4], [4, 1, 5, 5],
#     [1, 7, 5, 5], [1, 2, 5, 6], [1, 6, 6, 6], [1, 7, 7, 7]
# ]
# y_data = [
#     [0, 0, 1], [0, 0, 1], [0, 0, 1], [0, 1, 0],
#     [0, 1, 0], [0, 1, 0], [1, 0, 0], [1, 0, 0]
# ]
# X = tf.placeholder("float", [None, 4])
# Y = tf.placeholder("float", [None, 3])
# nb_classes = 3
# W = tf.Variable(tf.random_normal([4, nb_classes]), name='weight')
# b = tf.Variable(tf.random_normal([nb_classes]), name='bias')
# # tf.nn.softmax computes softmax activations
# # softmax = exp(logits) / reduce_sum(exp(logits), dim)
# hypothesis = tf.nn.softmax(tf.matmul(X, W) + b)
# # Cross entropy cost/loss
# cost = tf.reduce_mean(-tf.reduce_sum(Y * tf.log(hypothesis), axis=1))
# optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
# train = optimizer.minimize(cost)
# # Launch graph
# with tf.Session() as sess:
#    sess.run(tf.global_variables_initializer())
#    for step in range(5000+1):
#        sess.run(train, feed_dict={X: x_data, Y: y_data})
#        if step % 500 == 0:
#            print(step, sess.run(cost, feed_dict={X: x_data, Y: y_data}))
#    hypothesis = tf.nn.softmax(tf.matmul(X, W) + b)
#
#    # ~ tf.arg_max([[1,2,3],[2,4,8],[3,1,1],[4,13,3]],1) array([2, 2, 0, 1])
#    a1 = sess.run(
#        hypothesis,
#        feed_dict={
#            X: [
#                [1, 11, 7, 9]
#            ]
#        }
#    )
#    print(a1, sess.run(tf.argmax(a1, 1)))
#    a2 = sess.run(
#        hypothesis,
#        feed_dict={
#            X: [
#                [1, 11, 7, 9],
#                [1, 3, 4, 3],
#                [1, 1, 0, 1]
#            ]
#        }
#    )
#    print(a2, sess.run(tf.argmax(a2, 1)))


# print('\nM09')
# # for reproducibility
# tf.set_random_seed(777)
# from tensorflow.examples.tutorials.mnist import input_data
# mnist = input_data.read_data_sets('/data/project/Learn/TF/TF-HKUST/Data/', one_hot=True)
# # http://yann.lecun.com/exdb/mnist/
# print('Train: ', mnist.train.num_examples, 'Test: ', mnist.test.num_examples)
# nb_classes = 10
# # MNIST data image of shape 28 * 28 = 784
# X = tf.placeholder(tf.float32, [None, 784])
# # 0 - 9 digits recognition = 10 classes
# Y = tf.placeholder(tf.float32, [None, nb_classes])
# W = tf.Variable(tf.random_normal([784, nb_classes]))
# b = tf.Variable(tf.random_normal([nb_classes]))
# # Hypothesis (using softmax)
# hypothesis = tf.nn.softmax(tf.matmul(X, W) + b)
# cost = tf.reduce_mean(-tf.reduce_sum(Y * tf.log(hypothesis), axis=1))
# optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
# train = optimizer.minimize(cost)
# # Test model
# is_correct = tf.equal(tf.argmax(hypothesis, 1), tf.argmax(Y, 1))
# # Calculate accuracy
# accuracy = tf.reduce_mean(tf.cast(is_correct, tf.float32))
# # parameters
# training_epochs = 15
# batch_size = 100
#
# with tf.Session() as sess:
#     # Initialize TensorFlow variables
#     sess.run(tf.global_variables_initializer())
#     # Training cycle
#     for epoch in range(training_epochs):
#         avg_cost = 0
#         total_batch = int(mnist.train.num_examples/batch_size)
#         # 550 = 55000 / 100
#
#         for i in range(total_batch):
#             batch_xs, batch_ys = mnist.train.next_batch(batch_size)
#             c, _ = sess.run(
#                 [cost, train],
#                 feed_dict={X: batch_xs, Y: batch_ys}
#             )
#             # ~ WARNING: When c isnan then np.nan+1=np.nan.
#             if np.isnan(c):
#                 c = 0
#             avg_cost += c/total_batch
#
#         print('Epoch:', '%04d' % (epoch + 1), 'cost =', '{:.9f}'.format(avg_cost))
#     print("Learning finished")
#     # Test the model using test sets
#     print(
#         "Accuracy: ",
#         accuracy.eval(
#             session=sess,
#             feed_dict={X: mnist.test.images, Y: mnist.test.labels}
#         )
#     )
#     # Get one and predict
#     r = random.randint(0, mnist.test.num_examples - 1)
#     print('Choose: %d' % r)
#     print(
#         "Label: ",
#         sess.run(tf.argmax(mnist.test.labels[r:r + 1], 1))
#     )
#     print(
#         "Prediction: ",
#         sess.run(
#             tf.argmax(hypothesis, 1),
#             feed_dict={X: mnist.test.images[r:r + 1]}
#         )
#     )


# print('\nM10')
# # for reproducibility
# tf.set_random_seed(777)
# from tensorflow.examples.tutorials.mnist import input_data
# mnist = input_data.read_data_sets('/data/project/Learn/TF/TF-HKUST/Data/', one_hot=True)
# # http://yann.lecun.com/exdb/mnist/
# print('Train: ', mnist.train.num_examples, 'Test: ', mnist.test.num_examples)
# # parameters
# nb_classes = 10
# learning_rate = 0.001
# training_epochs = 15
# batch_size = 100
# # MNIST data image of shape 28 * 28 = 784
# X = tf.placeholder(tf.float32, [None, 784])
# # 0 - 9 digits recognition = 10 classes
# Y = tf.placeholder(tf.float32, [None, nb_classes])
# W = tf.Variable(tf.random_normal([784, nb_classes]))
# b = tf.Variable(tf.random_normal([nb_classes]))
# # Hypothesis (using softmax)
# hypothesis = tf.nn.softmax(tf.matmul(X, W) + b)
# cost = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=hypothesis, labels=Y))
# optimizer = tf.train.GradientDescentOptimizer(learning_rate=learning_rate)
# train = optimizer.minimize(cost)
# # Test model
# is_correct = tf.equal(tf.argmax(hypothesis, 1), tf.argmax(Y, 1))
# # Calculate accuracy
# accuracy = tf.reduce_mean(tf.cast(is_correct, tf.float32))
#
# with tf.Session() as sess:
#     # Initialize TensorFlow variables
#     sess.run(tf.global_variables_initializer())
#     # Training cycle
#     for epoch in range(training_epochs):
#         avg_cost = 0
#         total_batch = int(mnist.train.num_examples/batch_size)
#         # 550 = 55000 / 100
#
#         for i in range(total_batch):
#             batch_xs, batch_ys = mnist.train.next_batch(batch_size)
#             c, _ = sess.run(
#                 [cost, train],
#                 feed_dict={X: batch_xs, Y: batch_ys}
#             )
#             # ~ WARNING: When c isnan then np.nan+1=np.nan.
#             if np.isnan(c):
#                 c = 0
#             avg_cost += c/total_batch
#
#         print('Epoch:', '%04d' % (epoch + 1), 'cost =', '{:.9f}'.format(avg_cost))
#     print("Learning finished")
#     # Test the model using test sets
#     print(
#         "Accuracy: ",
#         accuracy.eval(
#             session=sess,
#             feed_dict={X: mnist.test.images, Y: mnist.test.labels}
#         )
#     )
#     # Get one and predict
#     r = random.randint(0, mnist.test.num_examples - 1)
#     print('Choose: %d' % r)
#     print(
#         "Label: ",
#         sess.run(tf.argmax(mnist.test.labels[r:r + 1], 1))
#     )
#     print(
#         "Prediction: ",
#         sess.run(
#             tf.argmax(hypothesis, 1),
#             feed_dict={X: mnist.test.images[r:r + 1]}
#         )
#     )



