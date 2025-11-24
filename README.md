# Frang4 dotfiles

Este archivo mantiene mis configuraciones.
La forma de instalar estos dotfiles es tan simple como ejecutar:

```bash
git clone https://github.com/frang4/dotfiles.git ~/.dotfiles-fg
~/.dotfiles-fg/script/install
```

Luego de correr los comandos anteriores se configurarán algunos programas
utilizados desde la consola como por ejemplo:

* zsh
* vim
* git
* tmux

## Pasos manuales requeridos

El archivo gitconfig.local es necesario que se edite manualmente con los datos
personales. Por ejemplo

```ini
[user]
  name = Juan Perez
  email = juan.perez@frang4.tech
```

> Se provee un archivo `gitconfig.local.sample` a modo de ejemplo que puede
> copiarse como `gitconfig.local` y volver a correr el archivo


### Personalizacions de Usuario

Las personalizaciones se pueden hacer en casacada de la siguiente forma:

1. Primero se setean los valores por defecto en `.zshrc`
2. Luego se personalizacion los valores por defecto usando
   `.zshrc.default`
3. Finalmente, un usuario puede crear un archivo `.zshrc.user` que idealmente
   conviene no versionarlo en este repositorio con las personalizaciones que
   desea sobreescrbir
4. Respecto a los bundles de antigen, es posible aplicar personalizaciones con:
  `.zshrc.default.antigen.bundles` y `.zshrc.user.antigen.bundles`

## Sobre vim

Dejamos algunos [tips sobre vim que hemos configurado con estos
dotfiles](README.vim.md)
