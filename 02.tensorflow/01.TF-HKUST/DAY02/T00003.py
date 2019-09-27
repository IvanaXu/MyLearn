# -*-coding:utf-8-*-
# @auth ivan
# @time 20180719 11:24
# @goal test the easy run in tensor board

import tensorflow as tf
from tensorflow.examples.tutorials.mnist import input_data
import random
tf.set_random_seed(777)
import os
os.system('rm -rf /data/project/Learn/TF/01.TF-HKUST/DAY01.5/Log2')
mnist = input_data.read_data_sets('/data/project/Learn/TF/01.TF-HKUST/Data/', one_hot=True)
# parameters
learning_rate = 0.001
training_epochs = 20
batch_size = 50

X = tf.placeholder(tf.float32, [None, 784], name='x-input')
Y = tf.placeholder(tf.float32, [None, 10], name='y-input')


with tf.name_scope("layer1"):
    W1 = tf.Variable(tf.random_normal([784, 784]), name='weight1')
    b1 = tf.Variable(tf.random_normal([784]), name='bias1')
    layer1 = tf.nn.relu(tf.matmul(X, W1) + b1)

    w1_hist = tf.summary.histogram("weights1", W1)
    b1_hist = tf.summary.histogram("biases1", b1)
    layer1_hist = tf.summary.histogram("layer1", layer1)


with tf.name_scope("layer2"):
    W2 = tf.Variable(tf.random_normal([784, 784]), name='weight2')
    b2 = tf.Variable(tf.random_normal([784]), name='bias2')
    layer2 = tf.nn.relu(tf.matmul(layer1, W2) + b2)
    # hypothesis = tf.nn.relu(tf.matmul(layer1, W2) + b2)

    w2_hist = tf.summary.histogram("weights2", W2)
    b2_hist = tf.summary.histogram("biases2", b2)
    layer2_hist = tf.summary.histogram("hypothesis", layer2)

with tf.name_scope("layer3"):
    W3 = tf.Variable(tf.random_normal([784, 10]), name='weight3')
    b3 = tf.Variable(tf.random_normal([10]), name='bias3')
    hypothesis = tf.nn.relu(tf.matmul(layer2, W3) + b3)

    w3_hist = tf.summary.histogram("weights3", W3)
    b3_hist = tf.summary.histogram("biases3", b3)
    hypothesis_hist = tf.summary.histogram("hypothesis", hypothesis)

# cost/loss function
with tf.name_scope("cost"):
    cost = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(logits=hypothesis, labels=Y))
    cost_summ = tf.summary.scalar("cost", cost)

with tf.name_scope("optimizer"):
    optimizer = tf.train.AdamOptimizer(learning_rate=learning_rate).minimize(cost)


correct_prediction = tf.equal(tf.argmax(hypothesis, 1), tf.argmax(Y, 1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
accuracy_summ = tf.summary.scalar("accuracy", accuracy)

# Launch graph
with tf.Session() as sess:
    merged_summary = tf.summary.merge_all()
    writer = tf.summary.FileWriter("/data/project/Learn/TF/01.TF-HKUST/DAY01.5/Log2")
    writer.add_graph(sess.graph)
    sess.run(tf.global_variables_initializer())

    for epoch in range(training_epochs):
        avg_cost = 0
        total_batch = int(mnist.train.num_examples/batch_size)
        summary = 0

        for i in range(total_batch):
            batch_xs, batch_ys = mnist.train.next_batch(batch_size)
            feed_dict = {X: batch_xs, Y: batch_ys}
            summary, c, _ = sess.run([merged_summary, cost, optimizer], feed_dict=feed_dict)
            avg_cost += c/total_batch

        writer.add_summary(summary, global_step=epoch)
        print('Epoch:', '%04d' % (epoch + 1), 'Cost: ', '{:.9f}'.format(avg_cost))

    print('Learning Finished!')

    r = random.randint(0, mnist.test.num_examples - 1)
    print("Label: ", sess.run(tf.argmax(mnist.test.labels[r:r + 1], 1)))
    print(
        "Prediction: ",
        sess.run(
            tf.argmax(hypothesis, 1),
            feed_dict={X: mnist.test.images[r:r + 1]}
        )
    )



