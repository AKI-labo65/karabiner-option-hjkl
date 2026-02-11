#!/bin/bash
# GitHub にプッシュするスクリプト（実行後は削除してOK）

set -e
cd "$(dirname "$0")"

echo "1. Git リポジトリを初期化..."
git init

echo "2. ファイルを追加..."
git add .

echo "3. コミット..."
git commit -m "Initial commit: Option+HJKL矢印キー設定とREADME"

echo "4. GitHub にリポジトリを作成してプッシュ..."
gh repo create karabiner-option-hjkl --public --source=. --remote=origin --push

echo ""
echo "完了！以下のURLで確認できます："
echo "https://github.com/AKI-labo65/karabiner-option-hjkl"
