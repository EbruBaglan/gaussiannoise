## gaussiannoise

For Simulink part, do NOT use [Random Number](https://www.mathworks.com/help/simulink/slref/randomnumber.html#:~:text=The%20Random%20Number%20block%20generates,generator%20of%20the%20rng%20function). 


> Avoid integrating a random signal, because solvers must integrate relatively smooth signals. Instead, use the [Band-Limited White Noise](https://www.mathworks.com/help/simulink/slref/bandlimitedwhitenoise.html) block.

[A bug on MATLAB](https://www.mathworks.com/matlabcentral/answers/1454674-why-does-matlab-crash-on-linux-with-inconsistency-detected-by-ld-so-elf-dl-tls-c-597-_dl_allo)


Note for deb files etc:

Unzip the package and install lib;
tar -xvf ~/Downloads/PanGPLinux-x.x.x.tgz
sudo apt install libqt5webkit5

After you unzip the package, you will see installation packages—DEB for Ubuntu and RPM for CentOS and Red Hat—and the scripts to install and uninstall the packages.
For example, on Ubuntu:
user@linuxhost:~$ sudo dpkg -i GlobalProtect_UI_deb-x.x.x.x-xx.deb
