# DRFでapiを作る=>dockerfileを使う場合
  
## 以下DRF quickstartチュートリアルを元に、dockerfile、docker-compose.ymlの作成練習をしてみた
  
### pythonの仮想環境を用意する

***バージョン確認***

**$ python3 --version**

_Python 3.11.1_

### 仮想環境を作る

***プロジェクト用ディレクトリを作成する***

**$ mkdir quickstart**

***ディレクトリへ移動する***

**$ cd quickstart**

***仮想環境を作る***

**$ python3 -m venv env**

***有効化***

**$ source env/bin/activate**

### パッケージのインストール

***djangoとDRFをインストールする***

**$ pip install django**

**$ pip install djangorestframework**

***インストールされているパッケージを確認***

**$ pip freeze**

***インストールされているパッケージを元にrequirements.txtを作成する***

**$ pip freeze >> requirements.txt**

_asgiref==3.6.0_

_Django==4.1.7_

_djangorestframework==3.14.0_

_pytz==2023.2_

_sqlparse==0.4.3_

### Dockerfileを作成する

![image](https://user-images.githubusercontent.com/110072224/228450540-b60d033b-bfbc-424f-bd17-27b39b878e14.png)

### docker-compose.ymlを作成する

![image](https://user-images.githubusercontent.com/110072224/231688996-3f8bfd38-472f-410d-ad09-7fd9cb67d883.png)

### migrate
**$ python manage.py migrate**

### superuserを作る
**$ python manage.py createsuperuser --email admin@example.com --username admin**

### Dockerfileからdocker imageをビルドする

**$ docker-compose build**

### Djangoプロジェクトを作成する

***quickstart_projectを作る***

**$ docker-compose run --rm app sh -c "django-admin.py startproject quickstart_project ."**

### Djangoアプリを作成する

***quickstartアプリを作る***

**$ python manage.py startapp quickstart**

### サーバを起動してみる

***マイグレーション***

**$ python manage.py makemigrations quickstart**

**$ python manage.py migrate**

***スーパーユーザーを作成する***

![image](https://user-images.githubusercontent.com/110072224/228453968-91413d31-e529-445a-9735-9abc148cfeb8.png)

***コンテナを起動して、ブラウザで確認する***

**$ python manage.py runserver**

http://127.0.0.1:8000/

![image](https://user-images.githubusercontent.com/110072224/228455366-1cf68665-d3c3-4eb9-a9a0-afcf04553dfd.png)

### 後はシリアライザー作成等、チュートリアルの続きをやればいい 

http://127.0.0.1:8000/users/

![image](https://user-images.githubusercontent.com/110072224/228455224-e5410503-9cb4-4d62-b4b1-b9181310666c.png)


## 参考文献

***Docker & Django API 実装 やってみよう***

https://qiita.com/Yi-Gaoqiao/items/b18a417d635414d92275

***venvを利用してPythonの仮想環境を構築する***

https://qiita.com/toffe_hy/items/8c62f2bc7b14f1ce2ae0


