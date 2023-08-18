## usersテーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| email      | string     | Not null, ユニーク制約　　　　　　 |
| password   | string     | Not null                       |
| name       | string     | Not null            　　　　　　 |
| profile    | text       | Not null                       |
| occupation | text       | Not null                       |
| position   | text       | Not null                       |

### Association
- has_many :prototypes
- has_many :comments


## prototypesテーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| title      | string     | Not null            　　　　　　 |
| catch_copy | text       | Not null                       |
| concept    | text       | Not null            　　　　　　 |
| user       | references | Not null, 外部キー　　　　　　　   |

### Association
- belongs_to :users
- has_many   :comments


## commentsテーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| content    | text       | Not null            　　　　　　 |
| prototype  | references | Not null, 外部キー            　 |
| user       | references | Not null, 外部キー　　　　　　　   |

### Association
- belongs_to :users
- belongs_to :comments