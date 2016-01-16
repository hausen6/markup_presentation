# markup_presentation/markdown

``markdown``でスライドPDFを作るためのテンプレート集  
``markdown -> (pandoc)-> (latex) -> pdf`` を介するからか，若干ネイティブ``latex``でコンパイルした方が早い．
気軽にスライドつくるときに使うべき

## 動作環境
- ``pandoc``
- ``lualatex``

が必須

## Usage
``main.md``を編集して，

```bash
make
```
でコンパイル．
