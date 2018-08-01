<table><tbody align="center">

<tr><td colspan='2'><h1>stellarized</h1>
<img src="https://github.com/nightsense/stellarized/raw/master/images/header.jpg" />
<h4>paint vim with the stars</h4>
</td></tr>

<tr></tr>

<tr>
<td>
<br>
<img alt="screenshot of the stellarized vim theme, light version" src="https://github.com/nightsense/stellarized/raw/master/images/screenshot-light.png" width="422" />
<br>
</td>
<td>
<br>
<img alt="screenshot of the stellarized vim theme, dark version" src="https://github.com/nightsense/stellarized/raw/master/images/screenshot-dark.png" width="422" />
<br>
</td>
</tr>

<tr></tr>

<tr><td colspan='2'>

<h5>The <a href='http://ethanschoonover.com/solarized'>solarized theme</a>, inspired by reading a book under<br>a shady tree on a sunny day, features a base palette<br>of dark green-blue and bright orange-yellow.</h5>

<h5>The stellarized theme takes this basic idea and shifts<br>the base hues to reflect the <a href='http://www.vendian.org/mncharity/dir3/starcolor/details.html'>colours of the stars</a>.</h5>

<h5>Specifically, dark base colors are shifted bluewise (to<br>the approximate "hot star hue"), while light base colors<br>are shifted orangewise (to the "cold star hue").</h5>

<h5>stellarized is a special adaptation of <a href='https://github.com/nightsense/snow'>snow</a>.</h5>

</td></tr>

</tbody></table>


## installation

If you don’t have a preferred plugin helper, consider trying [vim-plug](https://github.com/junegunn/vim-plug), which can be installed with:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

With vim-plug, stellarized can be installed by adding the following to the top of your vimrc...

```
call plug#begin('~/.vim/plugged')
Plug 'nightsense/stellarized'
call plug#end()
```

...then reloading vimrc (by running `:so %` at the vim command line, or by restarting vim), followed by `:PlugUpdate`.

## activation

For a sunny day, add the following to vimrc:

```
set background=light
colorscheme stellarized
```

For a starry night:

```
set background=dark
colorscheme stellarized
```

To set the background automatically based on the time at which vim is launched:

```
if strftime('%H') >= 7 && strftime('%H') < 19
  set background=light
else
  set background=dark
endif
colorscheme stellarized
```

...which activates the light version of stellarized during the day (7AM-7PM), dark version at night.

> The [night-and-day](https://github.com/nightsense/night-and-day) plugin can switch themes and/or backgrounds automatically, using absolute or sun-relative time.

## status line themes

stellarized comes with light and dark themes for airline and lightline.

For instance, to activate the airline theme with dark background:

```
let g:airline_theme='stellarized_dark'
```

Or the lightline theme with light background:

```
let g:lightline = { 'colorscheme': 'stellarized_light' }
```

Status line themes can be added to the time-based snippet above:

```
if strftime('%H') >= 7 && strftime('%H') < 19
  set background=light
  let g:lightline = { 'colorscheme': 'stellarized_light' }
else
  set background=dark
  let g:lightline = { 'colorscheme': 'stellarized_dark' }
endif
colorscheme stellarized
```

## terminal vim

### colors

stellarized should work in 256-color and true-color terminals. You may need the following in vimrc:

```
set termguicolors
```

### cursor shape

To set mode-specific cursor shapes in terminal vim, see the [Vim Tips Wiki](http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes).

For instance, to set cursor shapes in vte-compatible terminals (like urxvt), you could add to vimrc:

```
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
```

...which sets the cursor to a vertical line for insert mode, underline for replace mode, and block for normal mode.

---

###### released under the [MIT license](https://opensource.org/licenses/MIT)
###### generated with [Colortemplate](https://github.com/lifepillar/vim-colortemplate)
###### night sky photo by [ESO/S. Brunier (CC BY 4.0)](https://commons.wikimedia.org/wiki/File:ESO_-_Milky_Way.jpg)
