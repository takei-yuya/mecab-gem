MeCab
=====

This fork exists solely to make mecab easier to install.
I've also renamed the gem from mecab-ruby-gem to just mecab.
I don't take any credit for this gem.

Original is at https://github.com/hotchpotch/mecab-ruby-gem


Prerequesites
=============

* Mecab (0.98)
* mecab-ipadic

#Mac with homebrew

The latest mecab is not supported by this wrapper (http://d.hatena.ne.jp/jiikko/20130315)
will install 0.996 at time of writing so it may be preferable to follow
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
