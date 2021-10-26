# README

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