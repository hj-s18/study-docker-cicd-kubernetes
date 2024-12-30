#!/bin/bash

openssl rand -hex 24  > vault-pass-new

ansible-vault rekey --vault-password-file vault-pass \
  --new-vault-password-file vault-pass-new \
  $1
mv vault-pass vault-pass-$(date +%m%d)
mv vault-pass-new vault-pass
