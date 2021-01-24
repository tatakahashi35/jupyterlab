# jupyter lab のコンテナイメージ

### 初期設定 (ubuntu 18.04)
##### docker インストール
```
sudo apt update
sudo apt install docker.io
sudo apt install docker-compose
```

##### docker 起動設定
```
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
```

##### ホスト側の設定
```
git clone https://github.com/tatakahashi35/jupyterlab.git
mkdir -p /path/to/notebook
mkdir -p /path/to/data
```

### jupyter lab 起動
```
cd jupyterlab
sudo docker-compose up
```
