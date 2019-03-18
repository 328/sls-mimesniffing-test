## How To Use

```
$ sls deploy
```


## Endpoint

```
1. https://XXXXXXXXX.execute-api.ap-northeast-1.amazonaws.com/test/normal # normal JSON
2. https://XXXXXXXXX.execute-api.ap-northeast-1.amazonaws.com/test/mimesniffing # JSON containing XSS
3. https://XXXXXXXXX.execute-api.ap-northeast-1.amazonaws.com/test/nosniff # Add X-Content-Type-Options
```
