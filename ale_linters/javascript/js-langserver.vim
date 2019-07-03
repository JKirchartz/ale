" Author: t_t <jamestthompson3@gmail.com>
" Description: Integrate ALE with flow-language-server.

call ale#Set('javascript_js_langserver_executable', 'js-langserver')
call ale#Set('javascript_js_langserver_use_global',
\    get(g:, 'ale_use_global_executables', 0)
\)

call ale#linter#Define('javascript', {
\   'name': 'js-langserver',
\   'lsp': 'stdio',
\   'executable': {b -> ale#node#FindExecutable(b, 'javascript_js_langserver', [
\       'node_modules/.bin/js-langserver',
\   ])},
\   'command': '%e lsp',
\   'language': 'javascript',
\})
