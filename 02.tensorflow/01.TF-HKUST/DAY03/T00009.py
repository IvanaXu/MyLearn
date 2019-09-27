# -*-coding:utf-8-*-
# @auth ivan
# @time 20180720
# @goal test
import tensorflow as tf
import numpy as np
import matplotlib
import os
tf.set_random_seed(777)

if "DISPLAY" not in os.environ:
    matplotlib.use('Agg')
import matplotlib.pyplot as plt


def MinMaxScaler(data):
    numerator = data - np.min(data, 0)
    denominator = np.max(data, 0) - np.min(data, 0)
    return numerator / (denominator + 1e-7)


# train Parameters
seq_length = 3
data_dim = 5
hidden_dim = 10
output_dim = 1
learning_rate = 0.03
iterations = 99

# Open, High, Low, Volume, Close
xy = np.loadtxt('Data/data-02-stock_daily.csv', delimiter=',')
xy = xy[::-1]  # reverse order (chronically ordered)
xy = MinMaxScaler(xy)
x = xy
y = xy[:, [-1]]  # Close as label

dataX = []
dataY = []
for i in range(0, len(y) - seq_length):
    _x = x[i:i + seq_length]
    _y = y[i + seq_length]
    print(_x, "->", _y)
    dataX.append(_x)
    dataY.append(_y)

# train/tPatterns split
train_size = int(len(dataY) * 0.7)
print('TRAIN_SIZE', train_size)
test_size = len(dataY) - train_size
trainX, testX = np.array(dataX[0:train_size]), np.array(dataX[train_size:len(dataX)])
trainY, testY = np.array(dataY[0:train_size]), np.array(dataY[train_size:len(dataY)])

# input place holders
X = tf.placeholder(tf.float32, [None, seq_length, data_dim])
Y = tf.placeholder(tf.float32, [None, 1])

# build a LSTM network
cell = tf.contrib.rnn.BasicLSTMCell(num_units=hidden_dim, state_is_tuple=True, activation=tf.tanh)
outputs, _states = tf.nn.dynamic_rnn(cell, X, dtype=tf.float32)
Y_pred = tf.contrib.layers.fully_connected(outputs[:, -1], output_dim, activation_fn=None)

# cost/loss
loss = tf.reduce_sum(tf.square(Y_pred - Y))
# optimizer
optimizer = tf.train.AdamOptimizer(learning_rate)
train = optimizer.minimize(loss)

# RMSE
targets = tf.placeholder(tf.float32, [None, 1])
predictions = tf.placeholder(tf.float32, [None, 1])
rmse = tf.sqrt(tf.reduce_mean(tf.square(targets - predictions)))

with tf.Session() as sess:
    init = tf.global_variables_initializer()
    sess.run(init)

    # Training step
    for i in range(iterations):
        _, step_loss = sess.run(
            [train, loss],
            feed_dict={X: trainX, Y: trainY}
        )
        print("[step: {}] loss: {}".format(i, step_loss))

    # Test step
    test_predict = sess.run(Y_pred, feed_dict={X: testX})
    tran_predict = sess.run(Y_pred, feed_dict={X: trainX})
    rmse_val = sess.run(
        rmse,
        feed_dict={targets: testY, predictions: test_predict}
    )
    print("RMSE: {}".format(rmse_val))

    # Plot predictions
    plt.plot(testY)
    plt.plot(test_predict)

    plt.plot(trainY)
    plt.plot(tran_predict)

    plt.xlabel("Time Period")
    plt.ylabel("Stock Price")
    plt.savefig("T00009.png")

