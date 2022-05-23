from mpl_toolkits import mplot3d
import matplotlib.pyplot as plt
from matplotlib import cm
import numpy as np

X = np.linspace(-2*np.pi, 2*np.pi, 1000)
T = np.linspace(0, 2*np.pi, 1000)
X, T = np.meshgrid(X, T)
Z1 = (1/(1+1))*(np.exp(-X**2))*(1/np.sqrt(np.pi))*(1+np.sqrt(2)*(2*X**2-1)*np.cos(2*T)+0.5*(4*X**4+1-4*X**2))

fig = plt.figure()
ax = plt.axes(projection='3d')
# ax2 = fig.add_subplot(111, projection='3d')

ax.plot_surface(X, T, Z1, cmap='inferno')
ax.set_title('$\gamma = 1$')
ax.set_xlabel("$\sqrt{m\omega/\hbar}x$")
ax.set_ylabel("$\omega t$")
ax.set_zlabel("$\sqrt{\hbar/m\omega}|\psi(x,t)|^2$")
plt.show()
# plt.savefig("1.pdf")
