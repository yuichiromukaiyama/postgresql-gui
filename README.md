# 使い方イメージ

## ローカル確認

```shell
docker compose up -d db
docker compose up -d console
```

## クラウド側へ構築時

* kubectl でローカルに対してポート転送
* ローカルブラウザで転送URLへアクセスする

```shell
kubectl port-forward service/${service-name} -n staging 8081:8081
```

## ポイント

* データベースの情報へアクセスできる GUI はセキュリティリスクが高く、WAN に公開するべきではない
* 公開せずにあくまでもポート転送で開発者がローカルで確認する