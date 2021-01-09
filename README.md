# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :plans
- has_many :memos
-----------------------------
<!-- とりあえずここまで -->
- has_many :tweets
- has_many :rooms, through: room_users
- has_many :room_users

## plans テーブル

| Column     | Type       | Options              |
| ---------- | ---------- | -------------------- |
| plan       | string     | null: false          |
| time       | time       | null: false          |
| suppl      | string     | null: false          |
| user_id    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## memos テーブル

| Column     | Type       | Options              |
| ---------- | ---------- | -------------------- |
| memo       | string     | null: false          |
| user_id    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

--------------------------
<!-- とりあえずここまで -->

## rooms
## tweets
## room_users
