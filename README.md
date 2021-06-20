# easyCommentMaker

## What is this?
- 同じフォーマットの用紙の同じ箇所に異なるコメントを一枚ごとに作成しなければならないとき、一括でPDFを生成できるため作業効率化を行えます。
  - コメントしなければならない箇所のみに文字があるようなPDF（他は空白）がコメントの数だけ生成されます。
  - 成績表に生徒ごとにコメントを書かなければならない！でも手書きはいや！そんな時、手軽にコメントを一括印刷できます。
  
- 忙しい先生方や、年賀状作成にも。

- MIT Licenseの下で使用できます。

## How to use
- Windows 10 での使用を想定しています。
  - **Linux および MacOSでは使用できません。**
  
- TeX と Python をインストールしてください。
  - TeX は"http://www.tug.org/texlive/acquire-netinstall.html" の 
    "For typical needs, we recommend starting the TeX Live installation by downloading install-tl-windows.exe for Windows (~20mb),"
    と書いてある部分のリンク "install-tl-windows.exe" からダウンロード＆インストールできます（かなり時間がかかります）。
  - Python はMicrosoft Storeでpython と検索すれば簡単にインストールできます。
    
1. **csvの一列目**にコメントをまず必要な分だけ書いて、「ダウンロード」フォルダに配置してください。
2. "importTextFromCSV.py" を（ダブルクリックして）実行してください。
  - csv ファイルがコメントの数だけのテキストファイル(text数字.txt)にパースされます。
3. コメント箇所の位置の編集を"format.tex"を利用して行ってください。
  - デフォルトでは「A4」の用紙の、上から「280mm」、左から「17mm」、幅「147mm」のテキストボックスが用意されています（作者が最後に利用した設定です）。
  - この数字を変更することで様々な箇所にコメントを配置できます。
  - 用紙サイズの変更や行間、フォントの変更についてはTeXの仕様で行えます。詳しくは追記予定です。
  - ```\input{FILE.txt}```は変更しないでください。
4.  "typeset.bat" を実行してください。すると「デスクトップ」にコメントの数だけPDFファイルが生成されます。
5.　一括選択して右クリックし、コンテクストメニューにある印刷をクリックしてください。それにより印刷が行えます。
6.  万が一PDF生成後にコメントの間違いなどを発見してやり直したい場合は、"resetName.bat"を実行してください。ただし、PDFファイルの削除は行っていませんので削除は各自で行ってください。
  - もう一度"typeset.bat"を利用すれば再生成できます。
  
## What this does
- "typeset.bat" はパースされたテキストファイル(text[Filenumber].txt)をFILE.txtに名前を変え、platexでタイプセットを行っています。
- "format.tex"には"FILE.txt"内のテキストを利用するようになっているため、タイプセットの際に"text[Filenumber].txt"の内容が反映されます。
- それが終了すればTYPEDtext[filenumber].txtに名前を変更します(同じファイルで二回PDF生成を防ぐため)
- やり直したい場合、すべてTYPEDがテキストファイルの先頭についているため、タイプセットができません。そのため"resetName.bat"を利用してファイル名を元に戻しています。

## Notes
- "importTextFromCSV.py"を編集しない限り、csvファイルは必ず「ダウンロード」に入れて使用してください。
  - これは「ダウンロード」に最後に追加されたcsvファイルの一行目をテキストファイルにパースするようになっています
