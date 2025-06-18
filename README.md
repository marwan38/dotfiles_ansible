# Dotfiles

I try to keep this as updated as I can and this has been my source of knowledge
on ansible.
Things can always be better, but this does the job quite well so far :).

## Running roles

Execute all roles

```bash
ansible-playbook -i ./hosts ./dotfiles.yml
```

Execute specific roles

```bash
ansible-playbook -i ./hosts ./dotfiles.yml --tags zsh
```

Execute with become: true

```bash
ansible-playbook -i ./hosts ./dotfiles.yml --ask-become-pass
```
