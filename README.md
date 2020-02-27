
## Name
Book Note!

## Overview
自分だけの読書ノートが作れるアプリ

## Heroku URL
https://book-note.herokuapp.com

## testアカウント
email:    test@gmail.com
password: testtest

## Description

ユーザーログインした後に、新規でノートを書くとマイ本棚に登録した画像が反映されます。
登録した情報は画像を押すと編集できます。
登録時・編集時共に画像がプレビュー表示されるようになっています。
マイ本棚の画面では検索機能を使用することができ、本のタイトルもしくは著者名で検索が可能です。

## Demo

## 新規登録画面
![book-note-user-new](https://user-images.githubusercontent.com/59085642/74913672-781d2600-5404-11ea-8ad2-84b9ab0c714e.png)

## マイ本棚
![book-note-toppage](https://user-images.githubusercontent.com/59085642/74913759-a6026a80-5404-11ea-93cf-83d7778115d6.png)

## 読書ノートを書く
[![Image from Gyazo](https://i.gyazo.com/220cc83a005f6e862210765413d2c2a1.gif)](https://gyazo.com/220cc83a005f6e862210765413d2c2a1)

## ノートを検索する
[![Image from Gyazo](https://i.gyazo.com/1c743fa641e6fabf1b21783afba9cb38.gif)](https://gyazo.com/1c743fa641e6fabf1b21783afba9cb38)


## DB設計

## notesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|autohor|string|null: false|
|image|string|null: false|
|story|text|null: false|
|review|text|null: false|
|date|string|null: false|
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
