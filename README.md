# @youcune's dotfiles

is an awesome dotfiles for me!

## CLI Tools

.bashrc を読み込むと以下のツールにパスが通ります。

### ezip

ランダムなパスワードで暗号化zipファイルを作成します。

```
$ ezip <ZIP_FILE_NAME> <FILE_OR_DIR>
```

### mkpasswd

ランダムなパスワードを生成します。

```
$ mkpasswd [-l <LENGTH>] [-s]
  -l: password length
  -s: includes symbols
```

### rename

ディレクトリ内のファイル名を正規表現でリネームします。

```
$ rename [-dgis] <PATTERN> <REPLACE>
  -d: dry run
  -g: find globally
  -i: ignore case
  -s: rename silently
```
