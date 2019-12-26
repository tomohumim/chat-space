# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :messages
- has_many  :groups  through： :groups_users
- has_many  :group_users




## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|group_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## messageテーブル

|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
### Association
- belong_to :user
- belong_to :group

## groupテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association

- has_many  :users,  through: :groups_users
- has_many :groups_users
- has_many :messages