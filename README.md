# go-generics-samples

Zum Erstellen eines Docker Images, das das neuste Go2Go Tool enthält folgendes KOmmando ausführen:

```bash
docker build -t go-generics-playground .
```

Danach kann die Umgebung genutzt werden. Das Beispiel in der Datei [generics.go2](generics.go2) kann dann mit folgendem Kommando übersetzt und gestartet werden:

```bash
docker run -it -v `pwd`:/samples/src/github.com/sourcefellows/go-generics-samples/ go-generics-playground /bin/bash -c 'go tool go2go run cmd/main.go2'
```