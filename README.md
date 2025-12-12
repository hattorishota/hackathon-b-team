# Agentic Hackathon Starter

ハッカソン用のスターターテンプレート。複数の言語・フレームワークに対応したDevcontainer環境を提供します。

## 対応フレームワーク

### TypeScript/JavaScript (Hono)

```bash
npm install
npm run dev
```

http://localhost:3000 でサーバーが起動します。

### Ruby (Rails 8.0)

```bash
bundle install
rails new . --force --skip-bundle
rails server
```

http://localhost:3000 でサーバーが起動します。

### Python

```bash
pip install -r requirements.txt
python <filename>.py
```

### Go (Gin)

```bash
go mod init myapp
go get -u github.com/gin-gonic/gin
cd go
go run main.go
```

http://localhost:8080 でサーバーが起動します。

## 開発環境

VS Code Dev Containersを使用しています。

### 事前準備

- Docker Desktop
- VS Code + Dev Containers拡張機能

### 起動方法

1. VS Codeでプロジェクトを開く
2. コマンドパレット → "Dev Containers: Reopen in Container"

### PostgreSQLを使用する場合

デフォルトの `docker-compose.yml` にPostgreSQLが含まれているため、そのまま使用できます。

### MySQLを使用する場合

`docker-compose.mysql.yml` を `docker-compose.yml` にリネームしてからコンテナを起動してください。

```bash
mv docker-compose.yml docker-compose.base.yml 
mv docker-compose.mysql.yml docker-compose.yml
```

### 公開ポート

| ポート | 用途 |
|--------|------|
| 3000 | Rails / Node.js / Hono |
| 5000 | Flask |
| 8000 | Django / FastAPI |
| 8080 | Java / Go |

## プロジェクト構成

```
.
├── .devcontainer/     # Devcontainer設定
├── src/               # TypeScript/Honoソースコード
│   └── index.ts
├── Gemfile            # Ruby/Rails依存関係
├── package.json       # Node.js依存関係
├── tsconfig.json      # TypeScript設定
└── README.md
```

## ライセンス

MIT

---

## 開発の流れ

このセクションでは、git logから読み取った開発の流れを時系列でまとめています。

### フェーズ1: 環境構築とスターターテンプレート作成（2日前〜30時間前）

**担当者**: Hisahiro Tsukamoto

- Devcontainer環境の初期セットアップ
- 複数フレームワーク対応のスターターテンプレート作成
  - TypeScript/Honoプロジェクトのセットアップ
  - Go/Ginスターターの追加
  - Rails 8.0のGemfile追加
  - PostgreSQL/MySQL対応のdocker-compose設定
  - READMEの整備

### フェーズ2: 仕様書作成（約3時間前）

**担当者**: hattorishota

- オフィス出社状況共有アプリの仕様書（spec.md）を作成
- Spec-Driven Developmentのアプローチに基づき、コード実装前に要件を明確化
- TODOセクションの削除と仕様書の整理

### フェーズ3: アプリケーション開発開始（約2-3時間前）

**担当者**: Masayo USUI, IkutaMayumi, sunakan

- Railsプロジェクトの初期化（`rails new`）
- 画面仕様の詳細化（出社状況の登録・編集・削除機能の追加）
- 不要なファイルの整理

### フェーズ4: コア機能の実装（約1時間前）

**担当者**: Yuji Muto, joe_sakioka

- オフィス出社状況共有アプリの基本実装
- 出社状況登録・編集画面にエリアマップを追加
- アプリ名を「出社チェックカー」に決定し、仕様書に反映
- 出社状況削除機能の追加
- UIの細かい改善（位置のプレースホルダーを「W1」に変更など）

### フェーズ5: UI/UXの改善とドキュメント整備（直近1時間以内）

**担当者**: sunakan, joe_sakioka, IkutaMayumi, hattorishota

- 画像をクリックして位置を自動入力する機能を実装
- エリアを特定できなかった場合のフォールバック処理（近いエリアを入力）
- デバッグ用のログを削除
- 名前表示の調整
- READMEの更新（アプリケーションの詳細情報を追加）
- gitignoreの追加とプロジェクト管理の改善

### 開発の特徴

- **モブプログラミング**: ドライバーが入れ替わり立ち替わりで開発を進め、AIへのプロンプトをチーム全体で検討
- **Spec-Driven Development**: コード実装前にMarkdownで仕様を記述し、それを基にScaffoldingと反復的なUI構築を実施
- **反復的な改善**: 基本機能実装後も、ユーザビリティを向上させるための細かい改善を継続的に実施

### 参加メンバー

- Hisahiro Tsukamoto（環境構築・スターター作成）
- hattorishota（仕様書作成）
- Masayo USUI（Rails初期化・仕様詳細化）
- IkutaMayumi（プロジェクト管理・README更新）
- Yuji Muto（コア機能実装）
- joe_sakioka（機能追加・UI改善）
- sunakan（UI/UX改善）
