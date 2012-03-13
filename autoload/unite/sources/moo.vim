scriptencoding utf-8

function! unite#sources#moo#define()
	return s:source
endfunction

let s:source = {
\	"name" : "moo",
\	"description" : "スーパー牛さんパワー",
\	"moo__counter" : 0
\}

function! s:source.async_gather_candidates(args, context)
	let a:context.source.unite__cached_candidates = []
	let space = repeat(" ", self.moo__counter)

	let result = [
\space.'             (__)                 ',
\space.'             (oo)                 ',
\space.'       /------\/                  ',
\space.'      / |    ||                   ',
\space.'     *  /\---/\                   ',
\space.'        ~~   ~~                   ',
\'    ...."Have you mooed today?"...',
\    ]
	
	let self.moo__counter += 1
	return map(result, '{"word" : v:val[0:winwidth("%")-10]}')
endfunction


