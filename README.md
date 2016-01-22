# 個人用のGitBucketを管理するためのツール

- Dockerを使って、GitBucketをすぐ立ち上げられるようにする
- `docker compose` を使って、Dockerの起動オプションで迷わなくて済むようにする
- rcloneを使って、GitBucketのデータをまるごとクラウドにバックアップする

## Dockerを使ってGitBucketを立ち上げる

```
docker-compose up -d
```

### rcloneを使ってバックアップする

```
./data-backup.sh
```
