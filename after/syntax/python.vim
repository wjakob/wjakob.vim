" replaces lambda with λ
"   (borrowed from github.com/ehamberg/vim-cute-python -- that library
"   replaces many more operators which makes it annoying and ugly)
if has('conceal')
	syntax keyword pyNiceStatement lambda conceal cchar=λ
	syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

	syn match pyNiceVariable '\a\@<!alpha\%(\a\)\@!' conceal cchar=α containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!beta\%(\a\)\@!' conceal cchar=β containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!gamma\%(\a\)\@!' conceal cchar=γ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!delta\%(\a\)\@!' conceal cchar=δ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!epsilon\%(\a\)\@!' conceal cchar=ε containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!zeta\%(\a\)\@!' conceal cchar=ζ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!eta\%(\a\)\@!' conceal cchar=η containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!theta\%(\a\)\@!' conceal cchar=θ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!kappa\%(\a\)\@!' conceal cchar=κ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!lambda\%(\a\)\@!' conceal cchar=λ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!mu\%(\a\)\@!' conceal cchar=μ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!nu\%(\a\)\@!' conceal cchar=ν containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!xi\%(\a\)\@!' conceal cchar=ξ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!pi\%(\a\)\@!' conceal cchar=π containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!rho\%(\a\)\@!' conceal cchar=ρ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!sigma\%(\a\)\@!' conceal cchar=σ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!tau\%(\a\)\@!' conceal cchar=τ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!upsilon\%(\a\)\@!' conceal cchar=υ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!phi\%(\a\)\@!' conceal cchar=φ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!chi\%(\a\)\@!' conceal cchar=χ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!psi\%(\a\)\@!' conceal cchar=ψ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!omega\%(\a\)\@!' conceal cchar=ω containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!Delta\%(\a\)\@!' conceal cchar=Δ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!Lambda\%(\a\)\@!' conceal cchar=Λ containedin=pythonFunction
	syn match pyNiceVariable '\a\@<!nabla\%(\a\)\@!' conceal cchar=∇ containedin=pythonFunction

	hi link pyNiceStatement Statement
	hi link pyNiceKeyword Keyword
	hi! link Conceal Operator
	setlocal conceallevel=2
endif
