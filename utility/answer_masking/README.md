# Answer Masking

This is probably overkill, but so that I don't publish my answers publicly, I'm masking them with a couple encryption scripts

Taken from https://stackoverflow.com/questions/33718005/how-to-encrypt-and-decrypt-a-string-text-in-shell-linux-environment

## Instructions

1. Setup
  1. Set working directory: `cd $(git rev-parse --show-toplevel)/utility/answer_masking`
  1. Save scripts `answer_encode.sh` & `answer_decode.sh`
  1. Save password in `.env` file in same folder: `ANSWER_PASSWORD=<your_password_here>`
  1. Make scripts executable:
      ```bash
      chmod +x answer_encode.sh answer_decode.sh
      ```
1. Usage Example

    ```bash
    ./answer_encode.sh "this is my test string"
    # => U2FsdGVkX1+3hUDPRgE0KPj/F+kEHBB8e6L6mwgtpOlUGRiTdYlNnc47ybcoqyam

    ./answer_decode.sh "U2FsdGVkX1+3hUDPRgE0KPj/F+kEHBB8e6L6mwgtpOlUGRiTdYlNnc47ybcoqyam"
    # => this is my test string
    ```
