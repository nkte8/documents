# これは何

kubernetesクラスタ & DNSサーバ & gitlab & gluster 等をansibleで初期構築するplaybookです。

# 実行方法

1. dockerが実行可能な環境を作成します。

2. カレントディレクトリをansibleディレクトリに移動し、docker buildします。  
    ```sh
    git clone http://gitlab.neko.lab/root/labo.git
    cd ~/labo/ansible
    docker build -t ansible .
    ```
3. docker runでrun.shを実行します。
    ```sh
    docker run --rm -v ~/.ssh:/root/.ssh -v ${PWD}:/root/ansible -it ansible ./run.sh
    ```

# 初期化

`./roles/kubernetes/build/files/pki`ディレクトリを削除します。
```sh
cd ~/labo/ansible
rm -vfr ./roles/kubernetes/build/files/pki
rm -v ./admin.conf
```