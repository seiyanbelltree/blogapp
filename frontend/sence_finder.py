# -*- coding: utf-8 -*-

import cgi
import sys
import io

# 日本語を受信時にエラーにならないようにする為に必要。


sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

form = cgi.FieldStorage()

# 入力チェック（必要な変数が送信されていない場合はエラー。）
if 'your_name' not in form:
    print('Content-type: text/html; charset=UTF-8')
    print('')
    print('your_name フィールドが送信されていません。')
    sys.exit()

# your_name の値を取得して変数にセット。
# 値が入力されていない場合は「匿名」を設定。
# your_name が複数ある場合は先頭の値を取得。
your_name = form.getfirst('your_name', '匿名')

# テキストファイルとして内容を出力
print('Content-type: text/html; charset=UTF-8')
print('')
print(your_name)
