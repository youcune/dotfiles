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

### mkcd

mkdir + cd + pwd します。以下は今日の日付のディレクトリを作る例です。

```
$ mkcd `today`
```

### ezip

ランダムなパスワードで暗号化zipファイルを作成します。

```
$ ezip <ZIP_FILE_NAME> <FILE_OR_DIR>
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

