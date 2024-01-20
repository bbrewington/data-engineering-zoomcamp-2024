#!/usr/bin/env bash

if [ ! -f .env ]
then
  export $(cat .env | xargs)
fi

# flags: {-d: decrypt, -a: Base64 decode, -pbkdf2: password-based key derivation}
echo $1 | openssl aes-256-cbc -d -a -pbkdf2 -pass pass:$ANSWER_PASSWORD
