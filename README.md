# documents について

技術文書の蓄積を目的としたプロジェクトです。  
zennと連携されており、 https://zenn.dev/nkte8 に記事の形で整形され投稿されています。  

## 運用者用メモ  

前提：zenn CLIインストール環境であること  

### new:article

新規記事の作成方法（r0X部分はその日の作成数に依存）  
```sh
article_slug=$(date +%Y-%m-%d)-r01
git checkout -b ${article_slug} && \
npx zenn new:article --published true --slug $(git rev-parse --abbrev-ref HEAD) && \
mkdir -v ./images/${article_slug} && touch ./images/${article_slug}/.gitkeep
```
エイリアスの設定例  
```sh 
alias zenn='npx zenn new:article --published true --slug $(git rev-parse --abbrev-ref HEAD)' 
```

### preview  

以下コマンドでプレビュー  
```sh
npx zenn preview
```

### 記法:ローカルリンク  

下記の要領でzenn内記事を参照させることが可能。  
```
[表示内容](/USERNAME/articles/20XX-XX-XX-rXX)
```

## 参考  

CNIインストール： https://zenn.dev/zenn/articles/install-zenn-cli  
Gitlab連携方法： https://zenn.dev/zenn/articles/connect-to-github  
CLI使用方法： https://zenn.dev/zenn/articles/zenn-cli-guide  
公式リポジトリ： https://github.com/zenn-dev/zenn-docs  