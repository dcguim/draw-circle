import numpy as np
import matplotlib.pyplot as plt
import sys
def draw_circle(rad):
    """
    receive the radius, and the center point of the circle 
    """
    theta = np.linspace(0, 2*np.pi, num=100)
    x1 = rad*np.cos(theta)
    x2 = rad*np.sin(theta)
    print(theta)
    fig, axs = plt.subplots(1)
    axs.plot(x1, x2)
    plt.grid(linestyle='--')
    plt.title('simple circle', fontsize=8)
    plt.savefig("circle.png", bbox_inches='tight')

if __name__ == '__main__':
    print(sys.argv)
    draw_circle(3)

