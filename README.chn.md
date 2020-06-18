# LanFilePackage

全名：LanGong File Station Package

## 下载

```bash
# Git 克隆
git clone https://github.com/langong-dev/LanFilePackage.git

# 进入文件夹
cd ~/<FOLDER>

# 运行install
sudo bash install.sh

# 如果你是ARM或MacOS，请执行一下这个
g++ main.cpp -o LanGong
```

## 使用

```bash
./ LanGong <Type> <Class> <Name>
```

### 命令大全

| 命令Type | Class | Name | 意思 |
|:---:|:---:|:---:|:---:|
| install | github | < PackageUser >/< PackageName > | 下载GitHub上的软件包 |
| install | langong | < PackageName> | 下载蓝光在线软件包 |
| install | langong | < PackageName> | [如果你不知道我们有什么软件，点击我去查看](https://langong-dev.github.io/Package/) |
| install | git | < PackageURL > | 下载网络上Git的软件包 |
| run | / | < PackageName > | 运行你所下载的软件包 |
| ls | / | / | 查看安装的所有软件包 |
| uninstall | / | < PackageName > | 删除你的软件包 |
| update | / | / | 获取更新 |
| help | / | / | 帮助 |

### 使用示例

- Install Github : langong-dev/Zff

``` bash
lfp install github langong-dev/Zff
```

- Install Git : https://github.com/langonginc/Zff.git

```bash
lfp install git https://github.com/langonginc/Zff.git
```

- 运行 Zff

```bash
lfp run Zff
```

- 查看所有软件包

```bash
lfp ls
```

## 投稿

投稿可以发送到```langonginc@yeah.net```。

您的文件需要包含一个路由文件```in.index```，作用是运行时找到程序入口，文件格式如下（bash语法）

```bash
fun(){
    ./<你的程序入口>
}
```

请将您的软件包的所有文件直接打包成```.zip```格式的压缩包。

说明软件包名称、描述。

我们会为您添加到LanFilePackage上的。
