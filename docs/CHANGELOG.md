# CHANGELOG
<!-- tagの設定前にしっかりmergeしたか確認！！！！！！ -->
### **[EN is here!](EN/CHANGELOG_EN.md)**

<!-- ## vhoge | YYYY-MM-DD
### 追加
- 新しく追加された機能や要素。
### 変更
- 変更された内容、改善された部分。
### 修正
- 修正されたバグや問題。
### 課題,問題
- 今後廃止予定の機能や推奨されない変更点。
### 削除
- 削除された機能や要素。 
-->

## v0.2.6-alpha.3 | 2024-10-07  
### 追加
- exeを追加(AutoSetup各種入れたやつ)
### 修正   
- AutoSetup系   
    - curlがうまく動作しない問題を修正  
    > 一時的にエラー検知や一部機能を無効化している  

## v0.2.6-alpha.2 | 2024-10-06  
### 変更
- AutoSetup系の更新  
### 修正  
- AutoSetup系   
    - windows11だと期待通りに動作しない問題を修正  
    > 実機検証まだ  
    - 何らかの理由でcurlが動作しない場合に期待通りに動作しない問題を修正  

## v0.2.6-alpha.1 | 2024-10-05
### 追加
- 自動ダウンロード`BAT`作成

## v0.2.4-beta | 2024-10-05
### 変更
- **ドキュメント**
    - 細かい修正

## v0.2.3-beta | 2024-10-05
### 追加
- `docs`ディレクトリの追加
- 英語のドキュメントの追加
### 変更
- **ドキュメント**
    - ディレクトリ移動
    - リンクを相対パスに変更
    - 可読性向上
        - `shields`を追加
        - `contrib.rocks`でコントリビューターの名前、画像を追加
        - コントリビューターの名前を記載
        - その他細かい修正
<!-- ### 修正
- 修正されたバグや問題。 -->
### 課題,問題
- 英語の一部ドキュメントの翻訳が完了していない
<!-- ### 削除
- 削除された機能や要素。 -->

## v0.2.2-beta | 2024-10-03
### 変更
- 不足ファイルの更新

## v0.2.1-beta | 2024-10-03
### 追加
- changelogを追加
- Townyプラグインを追加
- `Towny chat`を追加
- MCSSを導入(使用方法は同封README)
### 変更
- batの`chcp`を`NUL`に変更
- READMEのバージョン変更
- ドキュメントの整理
- プラグイン調整
### 課題,問題
- サーバーの実行中にエラーが発生する(おそらくマインクラフトのAIに関する)
> 性能が低いことによる？
- Townyの日本語化が行われていない

## v0.1.1 | 2024-09-30
### 追加
- プラグインの導入(導入プラグインはREADMEに記載)
- 起動できる状態を構築
- READMEを制作
