# useful_shell

## 解决了什么问题
* `Node.js`的版本更新的是非常快的，个人比较喜欢用最新的`node`，版本控制工具一直用的[nvm](https://github.com/creationix/nvm)，每次更新最新版之后，需要删除原来的版本，并且重新安装全局的`npm`依赖，还是比较烦的，所以写了个简单的脚本来解决这个问题
* 一行命令更新brew以及指定的通过brew安装的依赖

## 环境
* MAC OSX

## 使用方法
```shell
git clone git@github.com:CocaCola183/upgrade_node.git
cd upgrade_node
# 更新node
chmod +x upgrade_node.sh
./upgrade_node.sh
# 更新brew，以及指定的通过brew安装的依赖
chmod +x upgrade_node.sh
```

>> **important**

这里更新node之后还是需要手动执行两个命令，才能让最新版本的node生效
```shell
nvm use ${latest_vertion}
nvm alias default ${latest_vertion}
```

> ** TODO **
```sh
pip install -U aliyuncli // 更新阿里云api
```


