
# SiteRails

## 概要
コーポレートサイトの雛形になるようなプロジェクトです。
Ruby on Rails5 で作成してます。

![概要](https://raw.githubusercontent.com/y-sugiyama/SiteRails/master/app/assets/images/siterails.png)

## 要件

- ruby 2.2.2
- SQLite 3.8.10.2

## インストール方法

```
$ git clone https://github.com/y-sugiyama/SiteRails.git
$ cd SiteRails
$ bundle install --path=vendor/bundle
```

## データベースのセットアップ


マイグレーションの実行

```
$ bin/rails db:migrate
```

初期データの書き込み

```
$ bin/rails db:seed 
```



## アプリケーションの起動


```
$ rails s
...
...
=> Booting Puma
=> Rails 5.0.0.1 application starting in development on http://localhost:3000
```
## 画像の取り扱い(about copyrighted photo)

```
このサイトの画像や壁紙は、ぱくたそ(www.pakutaso.com）の写真素材を利用しています。この写真を継続して利用する場合は、ぱくたそ公式サイトからご自身でダウンロードしていただくか、ぱくたそのご利用規約(www.pakutaso.com/userpolicy.html）に同意していただく必要があります。同意しない場合は写真のご利用はできませんのでご注意ください。
```

