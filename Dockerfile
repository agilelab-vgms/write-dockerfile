#イメージを指定
FROM python:3.11
#環境
ENV PYTHONUNBUFFERED 1
#ディレクトリを作成
RUN mkdir /code
#作業ディレクトリを指定
WORKDIR /code
#requirements.txtをディレクトリにコピー
COPY requirements.txt /code/
#requirements.txtにあるパッケージ群をインストール
RUN pip install -r requirements.txt
#すべての内容をディレクトリにコピー
COPY . /code/
