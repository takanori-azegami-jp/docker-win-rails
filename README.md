# docker-win-rails

Ruby on Rails container in Windows .

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
# Dockerビルド
$  docker-compose up -d --build
```

## 参考

- [Rails 7 × Dev Container での環境構築](https://zenn.dev/yama525/articles/5c46c9ed8eb927)
- []()
