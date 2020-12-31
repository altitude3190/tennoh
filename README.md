# pdf_password_unlocker

This is a script which decrypt encrypted pdf files and output decrypted one.
This script needs [qpdf](https://github.com/qpdf/qpdf).

## USAGE

```
./pdf_unlocker.sh [dir_name]
```

## PARAMS

```
dir_name    directory name where encrypted pdf files are located
            if it is undefined, the target directory becomes '.'
```

## DESCRIPTION

`pdf_unlocker.sh` executes the following:

1. make a directory named "decrypted" in `[dir_name]`
2. decrypt files in `[dir_name]` one by one and output them to "decrypted" directory
