#!/usr/bin/env bash

if [ ! -f .env ]
then
  export $(cat .env | xargs)
fi

# flags: {-e: encrypt, -a: Base64 encode, -pbkdf2: password-based key derivation}
echo $1 | openssl aes-256-cbc -e -a -pbkdf2 -pass pass:$ANSWER_PASSWORD
