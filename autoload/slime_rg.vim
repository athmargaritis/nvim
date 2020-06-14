function! slime_rg#slime_config_rg() abort
    " Split window nicely and open a terminal.
    vs|te
    " Spawn shell.
    " `terminal` will put you in insert mode, so don't use it.
    enew | call termopen('ipython3')
    let l:repl_job_id = b:terminal_job_id
    " Go to previous split.
    execute 'normal!' . "\<c-w>p"
    " let buffer's REPL be the one we just entered.
    let b:slime_config = {'jobid': l:repl_job_id}
endfunction
