## Ansible playground
A quick and dirty playground using Docker containers to learn more about ansible commands and playbooks.

Simply run update_keys.sh to copy your public keys so you can ssh in without passwords, and then

```bash
docker-compose build --parallel && docker-compose up
```
