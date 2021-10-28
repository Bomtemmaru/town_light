# README

# Town Lights

# 背景　このアプリケーションを作ろうと思った経緯
・今youtube、ツイッターやインスタグラムでコロナの影響で人が多いところには行きたくないという声や夜に仕事や学校のリフレッシュしたいなどの声がとても多く目に止まりました。そこで私は綺麗な自然または街の景色を見ればイライラや不満も軽減できると思いました。サイトを見れば綺麗な風景や夜景のスポットは出てきますが、私がもともと夜のドライブや絶景スポットに行くのが趣味だったこともあり、いろいろな場所を知っていました。私が知っているスポットを検索してみると出てこないことが多くあったため、他の地方でも同じようなスポットがあると思いました。また今はコロナ禍というのもあり、人が多いようなところにはなかなか行けないと思い穴場スポットのような人がいない場所、そして綺麗な場所で少しでも日々のストレス軽減になればなと思いました。

# 概要
・Town Lightsという綺麗な景色を投稿できるアプリケーションを作成しました。このアプリは綺麗だと思った場所を投稿して、みんなで共有できるシステムになっているので地方ごとの穴場なども共有できます。またいいね機能をつけ、人気がある場所のランキングも見れます。検索機能もついているのでいきたい場所のジャンルなどを指定することで場所を絞り込むことも可能です。

## アプリケーション情報

# アプリケーション概要
景色投稿のアプリケーションを作成しました。
# 接続先情報


# ID/Pass
・ID: admin

・Pass: 2222

# テスト用アカウント等
購入者用

・メールアドレス: test@test

・パスワード: test0405

# 購入用カード情報
・番号：4242424242424242

・期限：Mon Feb 22 2021 00:00:00 GMT+0900 (JST)

・セキュリティコード：123

出品者用

・メールアドレス名: aaa@aaa

・パスワード: test0405

# Githubリポジトリ
https://github.com/Bomtemmaru/town_light

# 利用方法
・自分が綺麗だと思った場所を投稿してもらったり、他のユーザーが投稿した場所を閲覧できる。また良いと思った投稿にはいいねを押せる。

# 目指した課題解決

# 洗い出した要件
いいね機能の実装、順位付け機能、BGMの導入、Googlemapの導入、スポットに位置表示、交通情報、ジャンル別検索機能

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# データベース設計
![town](https://user-images.githubusercontent.com/90166914/138849101-9dc7bde3-0cf7-4bcf-8fa8-9c61ee718c8d.png)

# ローカルでの動作方法
Ruby on rails/HTML/css/Ruby2.6.5
rails s



## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | -----------               |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

- has_many :tweets

## tweets テーブル

| Column                | Type       | Options                         |
| ------------------    | ------     | -----------                     |
| place                 | string     | null: false                     |
| text                  | string     |                                 |
| genre_id              | int        | null: false                     |
| with_id               | int        | null: false                     |
| how_id                | int        | null: false                     |
| way                   | string     |                                 |
| image                 | string     | null: false                     |
| user                  | references | null: false, foreign_key: true  |

- belongs_to :user
- has_many :likes
- has_one :map

## like テーブル

| Column                | Type       | Options                         |
| ------------------    | ------     | -----------                     |
| like                  | button     | null: false                     |

- belongs_to :tweet

## map テーブル

| Column                | Type       | Options                         |
| ------------------    | ------     | -----------                     |
| map                   |            | null: false                     |

- belongs_to :tweet
