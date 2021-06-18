# @youcune's dotfiles

is an awesome dotfiles for @youcune

## Installation

### まず最初にやること

```
$ export DOTFILES_INSTALLATION_PATH=~/develop/dotfiles
$ mkdir -p $DOTFILES_INSTALLATION_PATH
$ git clone https://github.com/youcune/dotfiles.git $DOTFILES_INSTALLATION_PATH
OR
$ git clone git@github.com:youcune/dotfiles.git $DOTFILES_INSTALLATION_PATH
```

### zshを使う場合

```
$ echo ". $DOTFILES_INSTALLATION_PATH/.zshrc" >> ~/.zshrc
$ echo ". $DOTFILES_INSTALLATION_PATH/aliases.sh" >> ~/.zshrc
```

### bashを使う場合

```
$ echo ". $DOTFILES_INSTALLATION_PATH/.bashrc" >> ~/.bashrc
$ echo ". $DOTFILES_INSTALLATION_PATH/aliases.sh" >> ~/.bashrc
```

### vimを使う場合

```
$ ln $DOTFILES_INSTALLATION_PATH/.vimrc ~/.vimrc
```

### Rubyを使う場合

```
$ ln $DOTFILES_INSTALLATION_PATH/.gemrc ~/.gemrc
$ ln $DOTFILES_INSTALLATION_PATH/.pryrc ~/.pryrc
```

### gitを使う場合

```
$ ln $DOTFILES_INSTALLATION_PATH/.gitconfig ~/.gitconfig
$ ln $DOTFILES_INSTALLATION_PATH/.gitignore.global ~/.gitignore.global
$ cp $DOTFILES_INSTALLATION_PATH/.gitconfig.local.example ~/.gitconfig.local
$ vim ~/.gitconfig.local
```

## CLI Tools

以下のツールが使えるようになります。

### days_since

n日後の日付を出力します。

```
$ days_since DAYS FORMAT
    DAYS:   days
    FORMAT: format
    For more information about format, see below:
    http://pubs.opengroup.org/onlinepubs/009695399/functions/strftime.html
$ date
2014年 3月24日 月曜日 21時00分50秒 JST
$ days_since
20140324
$ days_since 1
20140325
$ days_since -1 '%d, %B'
23, March
```

### today

`days_since 0` へのエイリアスです。

### tomorrow

`days_since 1` へのエイリアスです。

### yesterday

`days_since -1` へのエイリアスです。

### ezip

ランダムなパスワードで暗号化zipファイルを作成します。

```
$ ezip -h
Usage: ezip [options] <ZIP_FILE> <FILE_OR_DIR>
For more information about options, see `man zip`.
Options, -r -x "*/.DS_Store", are set by default.
```

### mkcd

mkdir + cd + pwd します。以下は今日の日付のディレクトリを作る例です。

```
$ mkcd `today`
/path/to/20140325
```

### rename

カレントディレクトリ内のファイル名を正規表現でリネームします。

```
$ rename -h
Usage: rename [options]
    -d, --dry-run                    dry run
    -g, --global                     find globally
    -i, --ignore-case                ignore case
    -s, --silent                     rename silently
$ ls -l
total 32
-rw-r--r--   1 youcune  staff   269  3 13 08:10 Gemfile
-rw-r--r--   1 youcune  staff  2953  3 13 08:10 Gemfile.lock
-rw-r--r--   1 youcune  staff    54  3 13 08:10 README.md
drwxr-xr-x   3 youcune  staff   102  3 13 08:11 bundle
-rw-r--r--   1 youcune  staff  3501  3 13 08:10 config.rb
drwxr-xr-x  12 youcune  staff   408  3 23 13:14 source
$ rename -d '\.\w+$' ''
Gemfile does not match.
Gemfile.lock -> Gemfile
README.md -> README
bundle does not match.
config.rb -> config
source does not match.
```

### mkpasswd

パスワードを生成します。 `-k / --kana` モードは秘密の質問の回答を作るのに便利です。

```
$ mkpasswd -h
Usage: mkpasswd [options]
    -l, --length LENGTH              Password length
    -s, --includes-symbols           Includes symbols
    -k, --kana                       Use hiraganas (-s option will be ignored)
$ mkpasswd
2ATDRa5m5cXrtNrk
$ mkpasswd -sl8
*HJQ9V8S
$ mkpasswd -kl10
でぬざぜぶそぅゆとべ
```

### mdig

digを実行しますが、そのままの状態と、 @server を外した状態の合計2回実行します。ネームサーバーの移行前に同じレコードが登録されていることを確認するのに便利です。

```
$ mdig @ns-636.awsdns-15.net +short youcube.jp a
+ dig +short youcube.jp a
45.32.61.53
+ dig @ns-636.awsdns-15.net +short youcube.jp a
45.32.61.53
```
