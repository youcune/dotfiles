# @youcune's dotfiles

is an awesome dotfiles for me!

## Installation

```
$ export DOTFILES_INSTALLATION_PATH=~/develop/dotfiles
$ mkdir -p $DOTFILES_INSTALLATION_PATH
$ git clone https://github.com/youcune/dotfiles.git $DOTFILES_INSTALLATION_PATH
$ echo ". $DOTFILES_INSTALLATION_PATH/.bashrc" >> ~/.bash_profile
$ ln -s $DOTFILES_INSTALLATION_PATH/.vimrc ~/.vimrc
```

## CLI Tools

.bashrc を読み込むと以下のツールにパスが通ります。

### ezip

ランダムなパスワードで暗号化zipファイルを作成します。

```
$ ezip <ZIP_FILE_NAME> <FILE_OR_DIR>
```

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

### mkcd

mkdir + cd + pwd します。以下は今日の日付のディレクトリを作る例です。

```
$ mkcd `today`
```

### mkpasswd

パスワードを生成します。

```
$ mkpasswd [options]
    -l, --length LENGTH              password length
    -s, --includes-symbols           includes symbols
```

### rename

カレントディレクトリ内のファイル名を正規表現でリネームします。

```
$ rename [options] <PATTERN> <REPLACE>
    -d, --dry-run                    dry run
    -g, --global                     find globally
    -i, --ignore-case                ignore case
    -s, --silent                     rename silently
```

### today

`days_since 0` へのエイリアスです。

### tomorrow

`days_since 1` へのエイリアスです。

### yesterday

`days_since -1` へのエイリアスです。
