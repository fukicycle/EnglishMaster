# EnglishMaster
## Webアプリの練習として英語学習アプリを作成中です
## 必要要件
* .NET6
* IIS or Apache (Web server)

## 注意
* Debugには以下のファイルの追加を推奨します
* appsettings.json
```
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*",
  "ConnectionStrings": {
    "DB": "user id=[USER_NAME];password=[PASSWORD];server=[SERVER_HOST];initial catalog=[DB_NAME]"
  }
}

```

## 現在のアプリ
* https://www.sato-home.mydns.jp/EnglishMaster
* サーバーサイドアプリはサービスを停止しました。

