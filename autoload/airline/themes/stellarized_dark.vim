let g:airline#themes#stellarized_dark#palette = {}

let s:gry0 = [ "#222532", 235 ]
let s:gry1 = [ "#2d3243", 236 ]
let s:gry3 = [ "#c5b3a3", 180 ]
let s:red_ = [ "#d96a6f", 167 ]
let s:gren = [ "#499d54", 71 ]
let s:blue = [ "#3890de", 32 ]

let s:nrm1 = [ s:gry0[0] , s:gry3[0] , s:gry0[1] , s:gry3[1] ]
let s:nrm2 = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]
let s:insr = [ s:gry0[0] , s:gren[0] , s:gry0[1] , s:gren[1] ]
let s:visl = [ s:gry0[0] , s:blue[0] , s:gry0[1] , s:blue[1] ]
let s:rplc = [ s:gry0[0] , s:red_[0] , s:gry0[1] , s:red_[1] ]
let s:inac = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]

let g:airline#themes#stellarized_dark#palette.normal =
  \ airline#themes#generate_color_map( s:nrm1 , s:nrm2 , s:nrm2 )

let g:airline#themes#stellarized_dark#palette.insert =
  \ airline#themes#generate_color_map( s:insr , s:nrm2 , s:nrm2 )

let g:airline#themes#stellarized_dark#palette.visual =
  \ airline#themes#generate_color_map( s:visl , s:nrm2 , s:nrm2 )

let g:airline#themes#stellarized_dark#palette.replace =
  \ airline#themes#generate_color_map( s:rplc , s:nrm2 , s:nrm2 )

let g:airline#themes#stellarized_dark#palette.inactive =
  \ airline#themes#generate_color_map( s:inac , s:inac , s:inac )

if !get(g:, "loaded_ctrlp", 0)
  finish
endif

let g:airline#themes#stellarized_dark#palette.ctrlp =
  \ airline#extensions#ctrlp#generate_color_map( s:nrm2 , s:nrm1 , s:nrm2 )

