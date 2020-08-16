# p9k-theme-pastel

p9k-theme-pastel is a theme for the [powerlevel10k](https://github.com/romkatv/powerlevel10k) prompt that puts an emphasis on simplicity while still getting important information across.

![](Screenshot.png)

## Installation / Usage

### Zinit (Formerly Zplugin)

Add `zinit light iboyperson/p9k-theme-pastel` to `~/.zshrc`.

## Usage outside of a desktop

p9k-theme-pastel does its best to keep things compatible by changing characters used when no DISPLAY environemnt variable is present.
For colors to work properly however you will need to ensure your term supports 256 colors.
This can be done with something like this in `.zlogin`:

```zsh
if (( ! $? && ${term_colors:-0} < 256 )); then
  TERM="xterm-256color"
fi
```
