FROM nimlang/nim:latest

WORKDIR /app
COPY . .

RUN nim c -d:release main.nim

CMD ["./main"]