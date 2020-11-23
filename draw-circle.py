import numpy as np
import matplotlib.pyplot as plt
import sys
import time
def draw_circle(user_dpi, rad, thick, cx, cy, h, w):
    """
    receive the radius, and the center point of the circle
    """
    print(user_dpi,rad,thick,cx,cy,h,w)
    theta = np.linspace(0, 2*np.pi, num=100)
    x1 = rad*np.cos(theta) + cx
    x2 = rad*np.sin(theta) + cy
    print(theta)
    fig, axs = plt.subplots(1)
    plt.figure(figsize=(h, w))
    axs.plot(x1, x2, color= 'black',linewidth=thick)
    plt.grid(linestyle='--')
    plt.title('simple circle', fontsize=8)
    plt.savefig("circle.png", dpi=user_dpi)
    print("waiting 3 seconds for png to be fetched ...")
    time.sleep(3)
    
def resolution2dpi(resolution):
    return int(resolution.split('x')[0])
    
if __name__ == '__main__':
    print(len(sys.argv))
    if len(sys.argv) != 8:
        print("not enough/too much arguments were given!")
    dpi = resolution2dpi(sys.argv[1])
    args_inch = [int(arg)/dpi for arg in sys.argv[2:]]
    print(args_inch)
    args_inch = [dpi] + args_inch
    print(args_inch)
    draw_circle(*args_inch)
