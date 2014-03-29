# @youcune's dotfiles

is an awesome dotfiles for me!

## Installation

### まず最初にやること

```
$ export DOTFILES_INSTALLATION_PATH=~/develop/dotfiles
$ mkdir -p $DOTFILES_INSTALLATION_PATH
$ git clone https://github.com/youcune/dotfiles.git $DOTFILES_INSTALLATION_PATH
```

### .bashrc

各種エイリアスやCLI Toolsを導入します。

```
$ echo ". $DOTFILES_INSTALLATION_PATH/.bashrc" >> ~/.bash_profile
```

### .vimrc

```
$ ln -s $DOTFILES_INSTALLATION_PATH/.vimrc ~/.vimrc
```

### .gitconfig

Gitを使う場合は下記を設定します。

```
$ ln -s $DOTFILES_INSTALLATION_PATH/.gitconfig ~/.gitconfig
$ ln -s $DOTFILES_INSTALLATION_PATH/.gitignore.global ~/.gitignore.global
$ cp $DOTFILES_INSTALLATION_PATH/.gitconfig.local.example ~/.gitconfig.local
$ vim ~/.gitconfig.local
```

## CLI Tools

.bashrc を読み込むと以下のツールにパスが通ります。

### 日付

#### days_since

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

#### today

`days_since 0` へのエイリアスです。

#### tomorrow

`days_since 1` へのエイリアスです。

#### yesterday

`days_since -1` へのエイリアスです。

### ファイル/ディレクトリ

#### ezip

ランダムなパスワードで暗号化zipファイルを作成します。

```
$ ezip -h
Usage: ezip [options] <ZIP_FILE> <FILE_OR_DIR>
For more information about options, see `man zip`.
Options, -r -x "*/.DS_Store", are set by default.
```

#### mkcd

mkdir + cd + pwd します。以下は今日の日付のディレクトリを作る例です。

```
$ mkcd `today`
/path/to/20140325
```

#### rename

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

### ユーティリティ

#### mkpasswd

パスワードを生成します。

```
$ mkpasswd -h
mkpasswd [options]
    -l, --length LENGTH              password length
    -s, --includes-symbols           includes symbols
$ mkpasswd
2ATDRa5m5cXrtNrk
$ mkpasswd -l 8 -s
*HJQ9V8S
```

