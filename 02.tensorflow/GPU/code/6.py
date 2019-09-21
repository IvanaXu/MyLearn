import torch
import torch.nn.functional as F
import matplotlib.pyplot as plt
from torch.autograd import Variable
 
nnn = 50000
n_data = torch.ones(nnn, 2)  # 生成一个100行2列的全1矩阵
x0 = torch.normal(2 * n_data, 1)  # 利用100行两列的全1矩阵产生一个正态分布的矩阵均值和方差分别是(2*n_data,1)
y0 = torch.zeros(nnn)  # 给x0标定标签确定其分类0
 
x1 = torch.normal(-2 * n_data, 1)  # 利用同样的方法产生第二个数据类别
y1 = torch.ones(nnn)  # 但是x1数据类别的label就标定为1
 
x = torch.cat((x0, x1), 0).type(torch.FloatTensor)  # cat方法就是将两个数据样本聚合在一起(x0,x1),0这个属性就是第几个维度进行聚合
y = torch.cat((y0, y1), ).type(torch.LongTensor)  # y也是一样
 
x = Variable(x)  # 将它们装载到Variable的容器里
y = Variable(y)  # 将它们装载到Variable的容器里
 
 
# plt.scatter(x.data.numpy()[:,0],x.data.numpy()[:,1],c=y.data.numpy(),s=100,lw=0,cmap='RdYlGn')
# plt.show()
 
 
class Net(torch.nn.Module):  # 开始搭建一个神经网络
    def __init__(self, n_feature, n_hidden, n_output):  # 神经网络初始化，设置输入曾参数，隐藏曾参数，输出层参数
        super(Net, self).__init__()  # 用super函数调用父类的通用初始化函数初始一下
        self.hidden = torch.nn.Linear(n_feature, n_hidden)  # 设置隐藏层的输入输出参数，比如说输入是n_feature,输出是n_hidden
        self.out = torch.nn.Linear(n_hidden, n_output)  # 同样设置输出层的输入输出参数
 
    def forward(self, x):  # 前向计算过程
        x = F.relu(self.hidden(x))  # 样本数据经过隐藏层然后被Relu函数掰弯！
        x = self.out(x) #经过输出层返回
        return x
 
 
net = Net(n_feature=2, n_hidden=10, n_output=2)  # two classification has two n_features#实例化一个网络结构
print(net)
 
optimizer = torch.optim.SGD(net.parameters(), lr=0.02)  # 设置优化器参数,lr=0.002指的是学习率的大小
loss_func = torch.nn.CrossEntropyLoss()  # 损失函数设置为loss_function
 
plt.ion()
 
for t in range(100):
    out = net(x)  # 100次迭代输出
    loss = loss_func(out, y)  # 计算loss为out和y的差异
 
    optimizer.zero_grad()  # 清除一下上次梯度计算的数值
    loss.backward()  # 进行反向传播
    optimizer.step()  # 最优化迭代
 
    if t % 2 == 0:
        plt.cla()
        prediction = torch.max(out, 1)[1]  ##返回每一行中最大值的那个元素，且返回其索引  torch.max()[1]， 只返回最大值的每个索引
        pred_y = prediction.data.numpy().squeeze()
        target_y = y.data.numpy()
        plt.scatter(x.data.numpy()[:, 0], x.data.numpy()[:, 1], c=pred_y, s=100, lw=0, cmap='RdYlGn')
        accuracy = float((pred_y == target_y).astype(int).sum()) / float(target_y.size)
        plt.text(1.5, -4, 'Accuracy=%.2f' % accuracy, fontdict={'size': 20, 'color': 'red'})
        plt.pause(0.1)
plt.ioff()
plt.show()
