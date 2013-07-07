MeCab
=====

This fork exists solely to make mecab easier to install.
I've also renamed the gem from mecab-ruby-gem to just mecab.
I don't take any credit for this gem.

Original is at https://github.com/hotchpotch/mecab-ruby-gem

Example Usage
=============
```ruby
require 'mecab'

sentence = "太郎はこの本を二郎を見た女性に渡した。"
tagger = MeCab::Tagger.new
puts tagger.parse sentence

太郎	名詞,固有名詞,人名,名,*,*,太郎,タロウ,タロー
は	助詞,係助詞,*,*,*,*,は,ハ,ワ
この	連体詞,*,*,*,*,*,この,コノ,コノ
本	名詞,一般,*,*,*,*,本,ホン,ホン
を	助詞,格助詞,一般,*,*,*,を,ヲ,ヲ
二	名詞,数,*,*,*,*,二,ニ,ニ
郎	名詞,一般,*,*,*,*,郎,ロウ,ロー
を	助詞,格助詞,一般,*,*,*,を,ヲ,ヲ
見	動詞,自立,*,*,一段,連用形,見る,ミ,ミ
た	助動詞,*,*,*,特殊・タ,基本形,た,タ,タ
女性	名詞,一般,*,*,*,*,女性,ジョセイ,ジョセイ
に	助詞,格助詞,一般,*,*,*,に,ニ,ニ
渡し	動詞,自立,*,*,五段・サ行,連用形,渡す,ワタシ,ワタシ
た	助動詞,*,*,*,特殊・タ,基本形,た,タ,タ
。	記号,句点,*,*,*,*,。,。,。
EOS

```
Installation
============
```
gem install mecab
```

Installing prerequisites
=============

* Mecab (0.98)
* mecab-ipadic

#Mac with homebrew

The latest mecab is not supported by this wrapper (http://d.hatena.ne.jp/jiikko/20130315)
`brew install mecab` will install 0.996 at time of writing so it may be preferable to follow
the manual unix instructions. (Or fix this library)

```ruby
# /usr/local/Library/Formula/mecab.rb
# change the url and sha lines to 
url "https://mecab.googlecode.com/files/mecab-0.98.tar.gz"
sha "8977d7760638ec65132e1f9bfc66655ac761f964" 
```

```
brew install mecab mecab-ipadic
#remember to revert your changes to the recipe
cd /usr/local
git checkout Library/Formula/mecab.rb
```

#Unix 

```
curl https://mecab.googlecode.com/files/mecab-0.98.tar.gz 
tar zxf mecab-0.98.tar.gz
cd mecab-0.98
./configure --with-charset=utf8 --enable-utf8-only
make
sudo make install
```
