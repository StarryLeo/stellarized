let g:airline#themes#stellarized_dark#palette = {}

let s:gry0 = [ "#282d3e", 236 ]
let s:gry1 = [ "#323748", 237 ]
let s:gry3 = [ "#baa999", 145 ]
let s:red_ = [ "#c98272", 174 ]
let s:gren = [ "#859c73", 108 ]
let s:blue = [ "#7899c4", 110 ]

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

let g:airline#themes#stellarized_dark#palette.ctrlp =
  \ airline#extensions#ctrlp#generate_color_map( s:nrm2 , s:nrm1 , s:nrm2 )

