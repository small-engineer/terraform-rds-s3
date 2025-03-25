以下の AWS リソースを自動で作成

- VPC（プライベートサブネット付き）
- インターネットゲートウェイとルートテーブル
- セキュリティグループ（PostgreSQL 用）
- S3 バケット（ドキュメント保存用）
- RDS PostgreSQL（プライベートサブネットに配置）

## 前提条件

- Terraform v1.3.0 以上
- AWS CLI が設定されている（`aws configure` で認証情報を設定）
- `terraform` コマンドが使える環境

## 使い方

1. 必要な変数を定義してください（`terraform.tfvars` ファイル）。

2. Terraform コマンドを順番に実行：

```sh
terraform init      # 初期化
terraform plan      # 確認
terraform apply     # 適用
```

## 作成される構成

```
VPC（10.0.0.0/16）
├── Subnet A（10.0.10.0/24）ap-northeast-1a
├── Subnet C（10.0.20.0/24）ap-northeast-1c
├── RDS PostgreSQL（db.t3.micro）
└── S3バケット（ドキュメント保存）
```
