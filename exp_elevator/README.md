# 设计指标
## 1、实现2层楼的简易电梯控制系统。

## 2、电梯有4个按键。
* 1楼外只有向上按键（KEY0），2楼外只有向下按键（KEY1），电梯内还有2个按键分别为1楼按键(KEY2)和2楼按键(KEY3）。所有楼层外和电梯内的按键产生的信号作为给电梯的运行请求信号。 `

## 3、电梯有4个指示灯（LED0、 LED1 、 LED2 、 LED3）。
* LED0: 按下KEY0键,若电梯不在1楼，则LED0亮。
* LED1: 按下KEY1键,若电梯不在2楼，则LED1亮。
* LED2: 电梯在2楼，按KEY2键, 则LED2亮，电梯到1楼后LED2灭。
* LED3: 电梯在1楼，按KEY3键, 则LED3亮，电梯到2楼后LED3灭。

## 4、有2个数码管，分别显示当前运行状态及楼层。
### （1）1个数码管显示当前运行状态，电梯有三个运行状态：待机、上行、下行。
#### 待机：电梯停在1楼或2楼且无请求信号时均为待机状态。
#### 上行状态：电梯停在1楼，有KEY1或KEY3被按下，进入上行状态。
#### 下行状态：电梯停在2楼，有KEY0或KEY2被按下，进入下行状态。
### （2）1个数码管显示所在楼层，显示1或2；每一层楼之间的运行时间间隔为4秒。

## 5、有2个拨码开关。
### （1）复位开关。向下拨动后，电梯复位回到1楼。
### （2）启动开关。向上拨动后，按键有效，电梯正常工作。

## 6、增加其它功能可自由发挥，如能实现有加分。

## 7、完成情况
      基本功能已完成

## 8、尚有缺陷的有：
* 复位后经过4s返回floor1，只设定了在floor2复位的情况（下行4s），未设定在floor1复位的相关情况（待机4s）

* 蜂鸣器发声模块PWM信号的设定

* 流水灯的时间间隙的设定（在start_stop后有可能会错过触发沿） 

  

## 9、RTL截图

![image-20211222231721302](C:\Users\Chris\AppData\Roaming\Typora\typora-user-images\image-20211222231721302.png)
