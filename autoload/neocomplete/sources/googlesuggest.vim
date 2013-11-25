let s:source = {
            \ 'name': 'GoogleSuggest',
            \ 'kind': 'keyword',
            \ 'mark': '[GoogleSuggest]',
            \ 'min_pattern_length' : 3,
            \ 'max_candidates': 15,
            \ 'is_volatile' : 1,
            \ }


function! neocomplete#sources#googlesuggest#define()
    return s:source
endfunction


function! s:source.gather_candidates(context)
    return googlesuggest#Complete(0, a:context.complete_str)
endfunction
