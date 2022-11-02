
```bash
st=1; while [ $st -ne 0 ]; do
curl -L -o hebrew-manuscripts-out-of-copyright-11.zip -C - https://bl.iro.bl.uk/downloads/953df3fa-019f-4cf1-b96d-6f752c800b2b\?locale\=pt-BR
st=$?
done
```