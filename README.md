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

# book-note DB設計

## notesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string||
|autohor|string||
|image|string||
|story|text||
|review|text||
|user_id|integer|null: false|
### Association
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|e-mail|string|null: false|
|password|integer|null: false|
### Association
- has_many :notes
