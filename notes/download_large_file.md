

```zsh
❯ ls
Find-and-count-with-awk.txt README.md                   data

 ~/code/demery/cli-tips │ main ?1 ····························
❯ ls jfdkljflsj
ls: jfdkljflsj: No such file or directory

 ~/code/demery/cli-tips │ main ?1 ····························
❯ ls
Find-and-count-with-awk.txt README.md                   data

 ~/code/demery/cli-tips │ main ?1 ····························
❯ echo $?
0

 ~/code/demery/cli-tips │ main ?1 ····························
❯ ls jfdkljflsj
ls: jfdkljflsj: No such file or directory

 ~/code/demery/cli-tips │ main ?1 ····························
❯ echo $?
1

 ~/code/demery/cli-tips │ main ?1 ····························
❯ if ls ; then
then> echo "Yes"
then> else
else> echo "No"
else> if
else if>

 ~/code/demery/cli-tips │ main ?1 ····························
❯ if ls ; then
echo "Yes"
else
echo "No"
fi
Find-and-count-with-awk.txt README.md                   data
Yes

 ~/code/demery/cli-tips │ main ?1 ····························
❯ if ls jfidsjl ; then
echo "Yes"
else
echo "No"
fi
ls: jfidsjl: No such file or directory
No

 ~/code/demery/cli-tips │ main ?1 ····························
❯ cat README.md
# CLI Tips

Notes and code for demontrating CLI techniques.%

 ~/code/demery/cli-tips │ main ?1 ····························
❯ grep car README.md

 ~/code/demery/cli-tips │ main ?1 ····························
❯ grep code README.md
Notes and code for demontrating CLI techniques.

 ~/code/demery/cli-tips │ main ?1 ····························
❯ grep -q code README.md

 ~/code/demery/cli-tips │ main ?1 ····························
❯ echo $?
```



```bash
st=1; while [ $st -ne 0 ]; do
curl -L -O  -C - https://data.bl.uk/hebrewmanuscripts/hebrew-manuscripts-out-of-copyright-4.zip
st=$?
done
```

```bash
while ! curl -L -O  -C - https://data.bl.uk/hebrewmanuscripts/hebrew-manuscripts-out-of-copyright-4.zip
do
  : # noop == no operation
done
```

```bash
while ! curl -L -O  -C - https://data.bl.uk/hebrewmanuscripts/hebrew-manuscripts-out-of-copyright-4.zip ; do : ; done
```


