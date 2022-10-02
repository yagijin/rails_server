# README

rails api mode の sandbox

## エンドポイント

/hello

```json
{ "data": "hello" }
```

## wedding

データ初期化
```shell
bundle exec rake wedding_init:generate RAILS_ENV=development
```

データ削除
```shell
bundle exec rake wedding_delete:delete RAILS_ENV=development
```

## info

- Ruby version
  2.7.5 以上

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

  - minitest を使用

- graphql
  - サンプルクエリ
  ```shell
  curl -X POST -H "Content-Type: application/json" -d '{"query": "{ hello }"}' http://example.com/graphql
  ```
  - graphiql も導入済
- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

  - lolipop のマネクラを使用

    - https://mc.lolipop.jp

    - rails サンプル

      - https://note.com/mclolipopjp/n/n624c9c20853b

    - ログの見方
      - https://support.mc.lolipop.jp/hc/ja/articles/360022532394-%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E3%83%AD%E3%82%B0%E3%82%84%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9%E3%83%AD%E3%82%B0%E3%81%AE%E7%A2%BA%E8%AA%8D%E6%96%B9%E6%B3%95

- ...
