### To add Bash script permanently to OS PATH

#### Step 1:
```
open .zshrc
```

Once file opens in text editor or any preferred editor, add the following command at the last line
```
export PATH="$PATH:<full path to bash script>"
```

Then close the file and enter following command in terminal
```
source .zshrc

```

### Commands

#### Read contents from File
```
cat <file-name>
```

### Condtionals

`-z` - Zero length
`-n` - Non zero length
spaces between square brackets is important
NO --> `[-z $val]`
YES --> `[ -z $val ]`

### Get current directory
```
$(pwd "$0")
```