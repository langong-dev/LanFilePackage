# LanFilePackage

![](https://img.shields.io/github/tag/langong-dev/LanFilePackage.svg)
![](https://img.shields.io/github/release/langong-dev/LanFilePackage.svg)
![](https://img.shields.io/github/stars/langong-dev/LanFilePackage.svg)
![](https://img.shields.io/github/forks/langong-dev/LanFilePackage.svg)
![](https://img.shields.io/badge/state-Service-brightgreen.svg?style=plastic)
![](https://img.shields.io/badge/GitHub-LanGong-yellow.svg?style=social&logo=github)

[简体中文？点击切换](/README.chn.md)

Full name : LanGong File Station Package

## Install

```bash
# Git clone
git clone https://github.com/langong-dev/LanFilePackage.git

# Go into this folder
cd ~/<FOLDER>

# Run the install.sh
sudo bash install.sh

# If you are ARM or MacOS, please do this
g++ main.cpp -o LanGong
```

## Use

```bash
# Go into this folder
cd ~/<FOLDER>

# Run
./LanGong <Type> <Class> <Name>
```

### Shell All

| Type | Class | Name | Mean |
|:---:|:---:|:---:|:---:|
| install | github | < PackageUser >/< PackageName > | Install package form GitHub |
| install | git | < PackageURL > | Install package from Internet by Git |
| install | langong | < PackageName > | Install package from LanGongOnline|
| install | langong | < PackageName > | [if you don't know which we have, click here](https://langong-dev.github.io/Package/)|
| run | / | < PackageName > | Run your software |
| ls | / | / | See your packages list |
| uninstall | / | < PackageName > | Delete your App |
| update | / | / | Get update |
| help | / | / | Help |
| log | / | / | Get log |
| search | / | / | Search packages |

### Example

- Install Github : langong-dev/Zff

``` bash
./LanGong install github langong-dev/Zff
```

- Install Git : https://github.com/langonginc/Zff.git

```bash
./LanGong install git https://github.com/langonginc/Zff.git
```

- Run Zff

```bash
./LanGong run Zff
```

- See your packages list

```bash
./LanGong ls
```

## If you want to reinstall

You can use this command: `bash install.sh`

## Your idea

You can send email to ```langonginc@yeah.net``` .

Your File must have a file named ```in.index```. Language is bash.

```bash
fun(){
    ./<Your software's entrance>
}
```

Please put your **ALL** file into a zip ```.zip``` .
