## 環境

- Windows10 Pro 22H2
- Rancher Desktop 1.8.1
- Docker version 23.0.1-rd, build 393499b

## 作業ディレクトリ作成

```bash
# 必要なファイルを作成
$ touch {Dockerfile,docker-compose.yml,Gemfile,Gemfile.lock,entrypoint.sh}
```

## ビルド

```bash
# Dockerイメージ作成
$ docker-compose build
# Railsアプリの雛形作成
$ docker-compose run --rm web rails new . --force --database=mysql
# database.yml書き換え
.\config\database.yml
# キャッシュ削除
docker-compose build --no-cache
# Docker 上でデータベース作成
docker-compose run --rm web rails db:create
# Dockerコンテナ作成
$ docker-compose up -d --build
```

## ブラウザで接続

- http://localhost:3000/

## Hellow World を表示する

```bash
# Docker上でhelloという名前でコントローラを生成
docker-compose run --rm web rails generate controller hello
```

## 参考

- [Rails 7 × Dev Container での環境構築](https://zenn.dev/yama525/articles/5c46c9ed8eb927)
- [Ruby on Rails で”Hello World”を作成する](https://medium-company.com/ruby-on-rails-hello-world/)
