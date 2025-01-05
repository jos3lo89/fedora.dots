- Generar una clave SSH
```bash
ssh-keygen -t rsa -b 4096 -C "example@example.com"
```
- Agregar la clave SSH al agente
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```
- Agregar la clave pública a GitHub
- Probar la conexión SSH
```bash
ssh -T git@github.com
```
