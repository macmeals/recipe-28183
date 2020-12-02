# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| nickname   | string     | null: false                    |
| email       | string     | null: false                    |
| password   | string     | null: false                    |

### Association

- has_many :recipes
- has_many :comments

## recipesテーブル

| Column         | Type       | Options                        |
| -------------  | ---------- | ------------------------------ |
| name           | string     | null: false                    |
| category_id    | integer    | null: false                    |
| explaination   | text    | null: false                    |
| detail1        | text     |                                |
| detail2        | text     |                                |
| detail3        | text     |                                |
| detail4        | text     |                                |
| detail5        | text     |                                |

### Association

- belong_to :user
- has_one :ingredient
- has_many :comments

## ingredientsテーブル

| Column         | Type        | Options                        |
| -------------  | ----------  | ------------------------------ |
| recipe_id      | integer     | null: false                    |
| name1          | string      |                                |
| quantity1      | integer     |                                |
| calorie1       | integer     |                                |
| name2          | string      |                                |
| quantity2      | integer     |                                |
| calorie2       | integer     |                                |
| name3          | string      |                                |
| quantity3      | integer     |                                |
| calorie3       | integer     |                                |
| name4          | string      |                                |
| quantity4      | integer     |                                |
| calorie4       | integer     |                                |
| name5          | string      |                                |
| quantity5      | integer     |                                |
| calorie5       | integer     |                                |
| all_calorie    | integer     |                                |

### Association

belongs_to recipe

## commentsテーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| comment    | string     | null: false                    |
| user_id    | integer    | null: false                    |
| recipe_id  | integer    | null: false                    |

### Association

belongs_to user
belongs_to recipe
