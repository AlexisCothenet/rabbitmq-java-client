bit = require 'bit'

-- Description of the values below is contained in ex_cmds_defs.h file.
local RANGE      =    0x001
local BANG       =    0x002
local EXTRA      =    0x004
local XFILE      =    0x008
local NOSPC      =    0x010
local DFLALL     =    0x020
local WHOLEFOLD  =    0x040
local NEEDARG    =    0x080
local TRLBAR     =    0x100
local REGSTR     =    0x200
local COUNT      =    0x400
local NOTRLCOM   =    0x800
local ZEROR      =   0x1000
local USECTRLV   =   0x2000
local NOTADR     =   0x4000
local EDITCMD    =   0x8000
local BUFNAME    =  0x10000
local BUFUNL     =  0x20000
local ARGOPT     =  0x40000
local SBOXOK     =  0x80000
local CMDWIN     = 0x100000
local MODIFY     = 0x200000
local EXFLAGS    = 0x400000
local FILES      = bit.bor(XFILE, EXTRA)
local WORD1      = bit.bor(EXTRA, NOSPC)
local FILE1      = bit.bor(FILES, NOSPC)

-- The following table is described in ex_cmds_defs.h file.
return {
  {
    command='append',
    flags=bit.bor(BANG, RANGE, ZEROR, TRLBAR, CMDWIN, MODIFY),
    func='ex_append',
  },
  {
    command='abbreviate',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='abclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_abclear',
  },
  {
    command='aboveleft',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='all',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_all',
  },
  {
    command='amenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='anoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='args',
    flags=bit.bor(BANG, FILES, EDITCMD, ARGOPT, TRLBAR),
    func='ex_args',
  },
  {
    command='argadd',
    flags=bit.bor(BANG, NEEDARG, RANGE, NOTADR, ZEROR, FILES, TRLBAR),
    func='ex_argadd',
  },
  {
    command='argdelete',
    flags=bit.bor(BANG, RANGE, NOTADR, FILES, TRLBAR),
    func='ex_argdelete',
  },
  {
    command='argdo',
    flags=bit.bor(BANG, NEEDARG, EXTRA, NOTRLCOM),
    func='ex_listdo',
  },
  {
    command='argedit',
    flags=bit.bor(BANG, NEEDARG, RANGE, NOTADR, FILE1, EDITCMD, ARGOPT, TRLBAR),
    func='ex_argedit',
  },
  {
    command='argglobal',
    flags=bit.bor(BANG, FILES, EDITCMD, ARGOPT, TRLBAR),
    func='ex_args',
  },
  {
    command='arglocal',
    flags=bit.bor(BANG, FILES, EDITCMD, ARGOPT, TRLBAR),
    func='ex_args',
  },
  {
    command='argument',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, EXTRA, EDITCMD, ARGOPT, TRLBAR),
    func='ex_argument',
  },
  {
    command='ascii',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='do_ascii',
  },
  {
    command='autocmd',
    flags=bit.bor(BANG, EXTRA, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_autocmd',
  },
  {
    command='augroup',
    flags=bit.bor(BANG, WORD1, TRLBAR, CMDWIN),
    func='ex_autocmd',
  },
  {
    command='aunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='buffer',
    flags=bit.bor(BANG, RANGE, NOTADR, BUFNAME, BUFUNL, COUNT, EXTRA, EDITCMD, TRLBAR),
    func='ex_buffer',
  },
  {
    command='bNext',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bprevious',
  },
  {
    command='ball',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_buffer_all',
  },
  {
    command='badd',
    flags=bit.bor(NEEDARG, FILE1, EDITCMD, TRLBAR, CMDWIN),
    func='ex_edit',
  },
  {
    command='bdelete',
    flags=bit.bor(BANG, RANGE, NOTADR, BUFNAME, COUNT, EXTRA, TRLBAR),
    func='ex_bunload',
  },
  {
    command='behave',
    flags=bit.bor(NEEDARG, WORD1, TRLBAR, CMDWIN),
    func='ex_behave',
  },
  {
    command='belowright',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='bfirst',
    flags=bit.bor(BANG, RANGE, NOTADR, EDITCMD, TRLBAR),
    func='ex_brewind',
  },
  {
    command='blast',
    flags=bit.bor(BANG, RANGE, NOTADR, EDITCMD, TRLBAR),
    func='ex_blast',
  },
  {
    command='bmodified',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bmodified',
  },
  {
    command='bnext',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bnext',
  },
  {
    command='botright',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='bprevious',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bprevious',
  },
  {
    command='brewind',
    flags=bit.bor(BANG, RANGE, NOTADR, EDITCMD, TRLBAR),
    func='ex_brewind',
  },
  {
    command='break',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_break',
  },
  {
    command='breakadd',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_breakadd',
  },
  {
    command='breakdel',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_breakdel',
  },
  {
    command='breaklist',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_breaklist',
  },
  {
    command='browse',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM, CMDWIN),
    func='ex_wrongmodifier',
  },
  {
    command='buffers',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='buflist_list',
  },
  {
    command='bufdo',
    flags=bit.bor(BANG, NEEDARG, EXTRA, NOTRLCOM),
    func='ex_listdo',
  },
  {
    command='bunload',
    flags=bit.bor(BANG, RANGE, NOTADR, BUFNAME, COUNT, EXTRA, TRLBAR),
    func='ex_bunload',
  },
  {
    command='bwipeout',
    flags=bit.bor(BANG, RANGE, NOTADR, BUFNAME, BUFUNL, COUNT, EXTRA, TRLBAR),
    func='ex_bunload',
  },
  {
    command='change',
    flags=bit.bor(BANG, WHOLEFOLD, RANGE, COUNT, TRLBAR, CMDWIN, MODIFY),
    func='ex_change',
  },
  {
    command='cNext',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='cNfile',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='cabbrev',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='cabclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_abclear',
  },
  {
    command='caddbuffer',
    flags=bit.bor(RANGE, NOTADR, WORD1, TRLBAR),
    func='ex_cbuffer',
  },
  {
    command='caddexpr',
    flags=bit.bor(NEEDARG, WORD1, NOTRLCOM, TRLBAR),
    func='ex_cexpr',
  },
  {
    command='caddfile',
    flags=bit.bor(TRLBAR, FILE1),
    func='ex_cfile',
  },
  {
    command='call',
    flags=bit.bor(RANGE, NEEDARG, EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_call',
  },
  {
    command='catch',
    flags=bit.bor(EXTRA, SBOXOK, CMDWIN),
    func='ex_catch',
  },
  {
    command='cbuffer',
    flags=bit.bor(BANG, RANGE, NOTADR, WORD1, TRLBAR),
    func='ex_cbuffer',
  },
  {
    command='cc',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='cclose',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_cclose',
  },
  {
    command='cd',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_cd',
  },
  {
    command='center',
    flags=bit.bor(TRLBAR, RANGE, WHOLEFOLD, EXTRA, CMDWIN, MODIFY),
    func='ex_align',
  },
  {
    command='cexpr',
    flags=bit.bor(NEEDARG, WORD1, NOTRLCOM, TRLBAR, BANG),
    func='ex_cexpr',
  },
  {
    command='cfile',
    flags=bit.bor(TRLBAR, FILE1, BANG),
    func='ex_cfile',
  },
  {
    command='cfirst',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='cgetfile',
    flags=bit.bor(TRLBAR, FILE1),
    func='ex_cfile',
  },
  {
    command='cgetbuffer',
    flags=bit.bor(RANGE, NOTADR, WORD1, TRLBAR),
    func='ex_cbuffer',
  },
  {
    command='cgetexpr',
    flags=bit.bor(NEEDARG, WORD1, NOTRLCOM, TRLBAR),
    func='ex_cexpr',
  },
  {
    command='chdir',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_cd',
  },
  {
    command='changes',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_changes',
  },
  {
    command='checkpath',
    flags=bit.bor(TRLBAR, BANG, CMDWIN),
    func='ex_checkpath',
  },
  {
    command='checktime',
    flags=bit.bor(RANGE, NOTADR, BUFNAME, COUNT, EXTRA, TRLBAR),
    func='ex_checktime',
  },
  {
    command='clist',
    flags=bit.bor(BANG, EXTRA, TRLBAR, CMDWIN),
    func='qf_list',
  },
  {
    command='clast',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='close',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_close',
  },
  {
    command='cmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='cmapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='cmenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='cnext',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='cnewer',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='qf_age',
  },
  {
    command='cnfile',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='cnoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='cnoreabbrev',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='cnoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='copy',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, TRLBAR, CMDWIN, MODIFY),
    func='ex_copymove',
  },
  {
    command='colder',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='qf_age',
  },
  {
    command='colorscheme',
    flags=bit.bor(WORD1, TRLBAR, CMDWIN),
    func='ex_colorscheme',
  },
  {
    command='command',
    flags=bit.bor(EXTRA, BANG, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_command',
  },
  {
    command='comclear',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_comclear',
  },
  {
    command='compiler',
    flags=bit.bor(BANG, TRLBAR, WORD1, CMDWIN),
    func='ex_compiler',
  },
  {
    command='continue',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_continue',
  },
  {
    command='confirm',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM, CMDWIN),
    func='ex_wrongmodifier',
  },
  {
    command='copen',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_copen',
  },
  {
    command='cprevious',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='cpfile',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='cquit',
    flags=bit.bor(TRLBAR, BANG),
    func='ex_cquit',
  },
  {
    command='crewind',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='cscope',
    flags=bit.bor(EXTRA, NOTRLCOM, XFILE),
    func='do_cscope',
  },
  {
    command='cstag',
    flags=bit.bor(BANG, TRLBAR, WORD1),
    func='do_cstag',
  },
  {
    command='cunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='cunabbrev',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='cunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='cwindow',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_cwindow',
  },
  {
    command='delete',
    flags=bit.bor(RANGE, WHOLEFOLD, REGSTR, COUNT, TRLBAR, CMDWIN, MODIFY),
    func='ex_operators',
  },
  {
    command='delmarks',
    flags=bit.bor(BANG, EXTRA, TRLBAR, CMDWIN),
    func='ex_delmarks',
  },
  {
    command='debug',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_debug',
  },
  {
    command='debuggreedy',
    flags=bit.bor(RANGE, NOTADR, ZEROR, TRLBAR, CMDWIN),
    func='ex_debuggreedy',
  },
  {
    command='delcommand',
    flags=bit.bor(NEEDARG, WORD1, TRLBAR, CMDWIN),
    func='ex_delcommand',
  },
  {
    command='delfunction',
    flags=bit.bor(NEEDARG, WORD1, CMDWIN),
    func='ex_delfunction',
  },
  {
    command='display',
    flags=bit.bor(EXTRA, NOTRLCOM, TRLBAR, SBOXOK, CMDWIN),
    func='ex_display',
  },
  {
    command='diffupdate',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_diffupdate',
  },
  {
    command='diffget',
    flags=bit.bor(RANGE, EXTRA, TRLBAR, MODIFY),
    func='ex_diffgetput',
  },
  {
    command='diffoff',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_diffoff',
  },
  {
    command='diffpatch',
    flags=bit.bor(EXTRA, FILE1, TRLBAR, MODIFY),
    func='ex_diffpatch',
  },
  {
    command='diffput',
    flags=bit.bor(RANGE, EXTRA, TRLBAR),
    func='ex_diffgetput',
  },
  {
    command='diffsplit',
    flags=bit.bor(EXTRA, FILE1, TRLBAR),
    func='ex_diffsplit',
  },
  {
    command='diffthis',
    flags=bit.bor(TRLBAR),
    func='ex_diffthis',
  },
  {
    command='digraphs',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_digraphs',
  },
  {
    command='djump',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA),
    func='ex_findpat',
  },
  {
    command='dlist',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA, CMDWIN),
    func='ex_findpat',
  },
  {
    command='doautocmd',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_doautocmd',
  },
  {
    command='doautoall',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_doautoall',
  },
  {
    command='drop',
    flags=bit.bor(FILES, EDITCMD, NEEDARG, ARGOPT, TRLBAR),
    func='ex_drop',
  },
  {
    command='dsearch',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA, CMDWIN),
    func='ex_findpat',
  },
  {
    command='dsplit',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA),
    func='ex_findpat',
  },
  {
    command='edit',
    flags=bit.bor(BANG, FILE1, EDITCMD, ARGOPT, TRLBAR),
    func='ex_edit',
  },
  {
    command='earlier',
    flags=bit.bor(TRLBAR, EXTRA, NOSPC, CMDWIN),
    func='ex_later',
  },
  {
    command='echo',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_echo',
  },
  {
    command='echoerr',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_execute',
  },
  {
    command='echohl',
    flags=bit.bor(EXTRA, TRLBAR, SBOXOK, CMDWIN),
    func='ex_echohl',
  },
  {
    command='echomsg',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_execute',
  },
  {
    command='echon',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_echo',
  },
  {
    command='else',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_else',
  },
  {
    command='elseif',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_else',
  },
  {
    command='emenu',
    flags=bit.bor(NEEDARG, EXTRA, TRLBAR, NOTRLCOM, RANGE, NOTADR, CMDWIN),
    func='ex_emenu',
  },
  {
    command='endif',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_endif',
  },
  {
    command='endfunction',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_endfunction',
  },
  {
    command='endfor',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_endwhile',
  },
  {
    command='endtry',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_endtry',
  },
  {
    command='endwhile',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_endwhile',
  },
  {
    command='enew',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_edit',
  },
  {
    command='ex',
    flags=bit.bor(BANG, FILE1, EDITCMD, ARGOPT, TRLBAR),
    func='ex_edit',
  },
  {
    command='execute',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_execute',
  },
  {
    command='exit',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, FILE1, ARGOPT, DFLALL, TRLBAR, CMDWIN),
    func='ex_exit',
  },
  {
    command='exusage',
    flags=bit.bor(TRLBAR),
    func='ex_exusage',
  },
  {
    command='file',
    flags=bit.bor(RANGE, NOTADR, ZEROR, BANG, FILE1, TRLBAR),
    func='ex_file',
  },
  {
    command='files',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='buflist_list',
  },
  {
    command='filetype',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_filetype',
  },
  {
    command='find',
    flags=bit.bor(RANGE, NOTADR, BANG, FILE1, EDITCMD, ARGOPT, TRLBAR),
    func='ex_find',
  },
  {
    command='finally',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_finally',
  },
  {
    command='finish',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_finish',
  },
  {
    command='first',
    flags=bit.bor(EXTRA, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_rewind',
  },
  {
    command='fold',
    flags=bit.bor(RANGE, WHOLEFOLD, TRLBAR, SBOXOK, CMDWIN),
    func='ex_fold',
  },
  {
    command='foldclose',
    flags=bit.bor(RANGE, BANG, WHOLEFOLD, TRLBAR, SBOXOK, CMDWIN),
    func='ex_foldopen',
  },
  {
    command='folddoopen',
    flags=bit.bor(RANGE, DFLALL, NEEDARG, EXTRA, NOTRLCOM),
    func='ex_folddo',
  },
  {
    command='folddoclosed',
    flags=bit.bor(RANGE, DFLALL, NEEDARG, EXTRA, NOTRLCOM),
    func='ex_folddo',
  },
  {
    command='foldopen',
    flags=bit.bor(RANGE, BANG, WHOLEFOLD, TRLBAR, SBOXOK, CMDWIN),
    func='ex_foldopen',
  },
  {
    command='for',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_while',
  },
  {
    command='function',
    flags=bit.bor(EXTRA, BANG, CMDWIN),
    func='ex_function',
  },
  {
    command='global',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, EXTRA, DFLALL, SBOXOK, CMDWIN),
    func='ex_global',
  },
  {
    command='goto',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, SBOXOK, CMDWIN),
    func='ex_goto',
  },
  {
    command='grep',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_make',
  },
  {
    command='grepadd',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_make',
  },
  {
    command='gui',
    flags=bit.bor(BANG, FILES, EDITCMD, ARGOPT, TRLBAR, CMDWIN),
    func='ex_gui',
  },
  {
    command='gvim',
    flags=bit.bor(BANG, FILES, EDITCMD, ARGOPT, TRLBAR, CMDWIN),
    func='ex_gui',
  },
  {
    command='help',
    flags=bit.bor(BANG, EXTRA, NOTRLCOM),
    func='ex_help',
  },
  {
    command='helpclose',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_helpclose',
  },
  {
    command='helpfind',
    flags=bit.bor(EXTRA, NOTRLCOM),
    func='ex_helpfind',
  },
  {
    command='helpgrep',
    flags=bit.bor(EXTRA, NOTRLCOM, NEEDARG),
    func='ex_helpgrep',
  },
  {
    command='helptags',
    flags=bit.bor(NEEDARG, FILES, TRLBAR, CMDWIN),
    func='ex_helptags',
  },
  {
    command='hardcopy',
    flags=bit.bor(RANGE, COUNT, EXTRA, TRLBAR, DFLALL, BANG),
    func='ex_hardcopy',
  },
  {
    command='highlight',
    flags=bit.bor(BANG, EXTRA, TRLBAR, SBOXOK, CMDWIN),
    func='ex_highlight',
  },
  {
    command='hide',
    flags=bit.bor(BANG, EXTRA, NOTRLCOM),
    func='ex_hide',
  },
  {
    command='history',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_history',
  },
  {
    command='insert',
    flags=bit.bor(BANG, RANGE, TRLBAR, CMDWIN, MODIFY),
    func='ex_append',
  },
  {
    command='iabbrev',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='iabclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_abclear',
  },
  {
    command='if',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_if',
  },
  {
    command='ijump',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA),
    func='ex_findpat',
  },
  {
    command='ilist',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA, CMDWIN),
    func='ex_findpat',
  },
  {
    command='imap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='imapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='imenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='inoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='inoreabbrev',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='inoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='intro',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_intro',
  },
  {
    command='isearch',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA, CMDWIN),
    func='ex_findpat',
  },
  {
    command='isplit',
    flags=bit.bor(BANG, RANGE, DFLALL, WHOLEFOLD, EXTRA),
    func='ex_findpat',
  },
  {
    command='iunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='iunabbrev',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='iunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='join',
    flags=bit.bor(BANG, RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN, MODIFY),
    func='ex_join',
  },
  {
    command='jumps',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_jumps',
  },
  {
    command='k',
    flags=bit.bor(RANGE, WORD1, TRLBAR, SBOXOK, CMDWIN),
    func='ex_mark',
  },
  {
    command='keepmarks',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='keepjumps',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='keeppatterns',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='keepalt',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='list',
    flags=bit.bor(RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN),
    func='ex_print',
  },
  {
    command='lNext',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='lNfile',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='last',
    flags=bit.bor(EXTRA, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_last',
  },
  {
    command='language',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_language',
  },
  {
    command='laddexpr',
    flags=bit.bor(NEEDARG, WORD1, NOTRLCOM, TRLBAR),
    func='ex_cexpr',
  },
  {
    command='laddbuffer',
    flags=bit.bor(RANGE, NOTADR, WORD1, TRLBAR),
    func='ex_cbuffer',
  },
  {
    command='laddfile',
    flags=bit.bor(TRLBAR, FILE1),
    func='ex_cfile',
  },
  {
    command='later',
    flags=bit.bor(TRLBAR, EXTRA, NOSPC, CMDWIN),
    func='ex_later',
  },
  {
    command='lbuffer',
    flags=bit.bor(BANG, RANGE, NOTADR, WORD1, TRLBAR),
    func='ex_cbuffer',
  },
  {
    command='lcd',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_cd',
  },
  {
    command='lchdir',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_cd',
  },
  {
    command='lclose',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_cclose',
  },
  {
    command='lcscope',
    flags=bit.bor(EXTRA, NOTRLCOM, XFILE),
    func='do_cscope',
  },
  {
    command='left',
    flags=bit.bor(TRLBAR, RANGE, WHOLEFOLD, EXTRA, CMDWIN, MODIFY),
    func='ex_align',
  },
  {
    command='leftabove',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='let',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_let',
  },
  {
    command='lexpr',
    flags=bit.bor(NEEDARG, WORD1, NOTRLCOM, TRLBAR, BANG),
    func='ex_cexpr',
  },
  {
    command='lfile',
    flags=bit.bor(TRLBAR, FILE1, BANG),
    func='ex_cfile',
  },
  {
    command='lfirst',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='lgetfile',
    flags=bit.bor(TRLBAR, FILE1),
    func='ex_cfile',
  },
  {
    command='lgetbuffer',
    flags=bit.bor(RANGE, NOTADR, WORD1, TRLBAR),
    func='ex_cbuffer',
  },
  {
    command='lgetexpr',
    flags=bit.bor(NEEDARG, WORD1, NOTRLCOM, TRLBAR),
    func='ex_cexpr',
  },
  {
    command='lgrep',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_make',
  },
  {
    command='lgrepadd',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_make',
  },
  {
    command='lhelpgrep',
    flags=bit.bor(EXTRA, NOTRLCOM, NEEDARG),
    func='ex_helpgrep',
  },
  {
    command='ll',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='llast',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='llist',
    flags=bit.bor(BANG, EXTRA, TRLBAR, CMDWIN),
    func='qf_list',
  },
  {
    command='lmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='lmapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='lmake',
    flags=bit.bor(BANG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_make',
  },
  {
    command='lnoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='lnext',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='lnewer',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='qf_age',
  },
  {
    command='lnfile',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='loadview',
    flags=bit.bor(FILE1, TRLBAR),
    func='ex_loadview',
  },
  {
    command='loadkeymap',
    flags=bit.bor(CMDWIN),
    func='ex_loadkeymap',
  },
  {
    command='lockmarks',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='lockvar',
    flags=bit.bor(BANG, EXTRA, NEEDARG, SBOXOK, CMDWIN),
    func='ex_lockvar',
  },
  {
    command='lolder',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='qf_age',
  },
  {
    command='lopen',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_copen',
  },
  {
    command='lprevious',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='lpfile',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cnext',
  },
  {
    command='lrewind',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR, BANG),
    func='ex_cc',
  },
  {
    command='ltag',
    flags=bit.bor(NOTADR, TRLBAR, BANG, WORD1),
    func='ex_tag',
  },
  {
    command='lunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='lua',
    flags=bit.bor(RANGE, EXTRA, NEEDARG, CMDWIN),
    func='ex_script_ni',
  },
  {
    command='luado',
    flags=bit.bor(RANGE, DFLALL, EXTRA, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='luafile',
    flags=bit.bor(RANGE, FILE1, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='lvimgrep',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_vimgrep',
  },
  {
    command='lvimgrepadd',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_vimgrep',
  },
  {
    command='lwindow',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_cwindow',
  },
  {
    command='ls',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='buflist_list',
  },
  {
    command='move',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, TRLBAR, CMDWIN, MODIFY),
    func='ex_copymove',
  },
  {
    command='mark',
    flags=bit.bor(RANGE, WORD1, TRLBAR, SBOXOK, CMDWIN),
    func='ex_mark',
  },
  {
    command='make',
    flags=bit.bor(BANG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_make',
  },
  {
    command='map',
    flags=bit.bor(BANG, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='mapclear',
    flags=bit.bor(EXTRA, BANG, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='marks',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='do_marks',
  },
  {
    command='match',
    flags=bit.bor(RANGE, NOTADR, EXTRA, CMDWIN),
    func='ex_match',
  },
  {
    command='menu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, BANG, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='menutranslate',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menutranslate',
  },
  {
    command='messages',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_messages',
  },
  {
    command='mkexrc',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_mkrc',
  },
  {
    command='mksession',
    flags=bit.bor(BANG, FILE1, TRLBAR),
    func='ex_mkrc',
  },
  {
    command='mkspell',
    flags=bit.bor(BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_mkspell',
  },
  {
    command='mkvimrc',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_mkrc',
  },
  {
    command='mkview',
    flags=bit.bor(BANG, FILE1, TRLBAR),
    func='ex_mkrc',
  },
  {
    command='mode',
    flags=bit.bor(WORD1, TRLBAR, CMDWIN),
    func='ex_mode',
  },
  {
    command='mzscheme',
    flags=bit.bor(RANGE, EXTRA, DFLALL, NEEDARG, CMDWIN, SBOXOK),
    func='ex_script_ni',
  },
  {
    command='mzfile',
    flags=bit.bor(RANGE, FILE1, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='next',
    flags=bit.bor(RANGE, NOTADR, BANG, FILES, EDITCMD, ARGOPT, TRLBAR),
    func='ex_next',
  },
  {
    command='nbkey',
    flags=bit.bor(EXTRA, NOTADR, NEEDARG),
    func='ex_nbkey',
  },
  {
    command='nbclose',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_nbclose',
  },
  {
    command='nbstart',
    flags=bit.bor(WORD1, TRLBAR, CMDWIN),
    func='ex_nbstart',
  },
  {
    command='new',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='nmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='nmapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='nmenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='nnoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='nnoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='noremap',
    flags=bit.bor(BANG, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='noautocmd',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='nohlsearch',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_nohlsearch',
  },
  {
    command='noreabbrev',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='noremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, BANG, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='noswapfile',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='normal',
    flags=bit.bor(RANGE, BANG, EXTRA, NEEDARG, NOTRLCOM, USECTRLV, SBOXOK, CMDWIN),
    func='ex_normal',
  },
  {
    command='number',
    flags=bit.bor(RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN),
    func='ex_print',
  },
  {
    command='nunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='nunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='open',
    flags=bit.bor(RANGE, BANG, EXTRA),
    func='ex_open',
  },
  {
    command='oldfiles',
    flags=bit.bor(BANG, TRLBAR, SBOXOK, CMDWIN),
    func='ex_oldfiles',
  },
  {
    command='omap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='omapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='omenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='only',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_only',
  },
  {
    command='onoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='onoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='options',
    flags=bit.bor(TRLBAR),
    func='ex_options',
  },
  {
    command='ounmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='ounmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='ownsyntax',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_ownsyntax',
  },
  {
    command='print',
    flags=bit.bor(RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN, SBOXOK),
    func='ex_print',
  },
  {
    command='pclose',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_pclose',
  },
  {
    command='perl',
    flags=bit.bor(RANGE, EXTRA, DFLALL, NEEDARG, SBOXOK, CMDWIN),
    func='ex_script_ni',
  },
  {
    command='perldo',
    flags=bit.bor(RANGE, EXTRA, DFLALL, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='pedit',
    flags=bit.bor(BANG, FILE1, EDITCMD, ARGOPT, TRLBAR),
    func='ex_pedit',
  },
  {
    command='pop',
    flags=bit.bor(RANGE, NOTADR, BANG, COUNT, TRLBAR, ZEROR),
    func='ex_tag',
  },
  {
    command='popup',
    flags=bit.bor(NEEDARG, EXTRA, BANG, TRLBAR, NOTRLCOM, CMDWIN),
    func='ex_popup',
  },
  {
    command='ppop',
    flags=bit.bor(RANGE, NOTADR, BANG, COUNT, TRLBAR, ZEROR),
    func='ex_ptag',
  },
  {
    command='preserve',
    flags=bit.bor(TRLBAR),
    func='ex_preserve',
  },
  {
    command='previous',
    flags=bit.bor(EXTRA, RANGE, NOTADR, COUNT, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_previous',
  },
  {
    command='promptfind',
    flags=bit.bor(EXTRA, NOTRLCOM, CMDWIN),
    func='gui_mch_find_dialog',
  },
  {
    command='promptrepl',
    flags=bit.bor(EXTRA, NOTRLCOM, CMDWIN),
    func='gui_mch_replace_dialog',
  },
  {
    command='profile',
    flags=bit.bor(BANG, EXTRA, TRLBAR, CMDWIN),
    func='ex_profile',
  },
  {
    command='profdel',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_breakdel',
  },
  {
    command='psearch',
    flags=bit.bor(BANG, RANGE, WHOLEFOLD, DFLALL, EXTRA),
    func='ex_psearch',
  },
  {
    command='ptag',
    flags=bit.bor(RANGE, NOTADR, BANG, WORD1, TRLBAR, ZEROR),
    func='ex_ptag',
  },
  {
    command='ptNext',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_ptag',
  },
  {
    command='ptfirst',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_ptag',
  },
  {
    command='ptjump',
    flags=bit.bor(BANG, TRLBAR, WORD1),
    func='ex_ptag',
  },
  {
    command='ptlast',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_ptag',
  },
  {
    command='ptnext',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_ptag',
  },
  {
    command='ptprevious',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_ptag',
  },
  {
    command='ptrewind',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_ptag',
  },
  {
    command='ptselect',
    flags=bit.bor(BANG, TRLBAR, WORD1),
    func='ex_ptag',
  },
  {
    command='put',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, REGSTR, TRLBAR, ZEROR, CMDWIN, MODIFY),
    func='ex_put',
  },
  {
    command='pwd',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_pwd',
  },
  {
    command='python',
    flags=bit.bor(RANGE, EXTRA, NEEDARG, CMDWIN),
    func='ex_python',
  },
  {
    command='pydo',
    flags=bit.bor(RANGE, DFLALL, EXTRA, NEEDARG, CMDWIN),
    func='ex_pydo',
  },
  {
    command='pyfile',
    flags=bit.bor(RANGE, FILE1, NEEDARG, CMDWIN),
    func='ex_pyfile',
  },
  {
    command='py3',
    flags=bit.bor(RANGE, EXTRA, NEEDARG, CMDWIN),
    func='ex_script_ni',
  },
  {
    command='py3do',
    flags=bit.bor(RANGE, DFLALL, EXTRA, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='python3',
    flags=bit.bor(RANGE, EXTRA, NEEDARG, CMDWIN),
    func='ex_script_ni',
  },
  {
    command='py3file',
    flags=bit.bor(RANGE, FILE1, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='quit',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_quit',
  },
  {
    command='quitall',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_quit_all',
  },
  {
    command='qall',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_quit_all',
  },
  {
    command='read',
    flags=bit.bor(BANG, RANGE, WHOLEFOLD, FILE1, ARGOPT, TRLBAR, ZEROR, CMDWIN, MODIFY),
    func='ex_read',
  },
  {
    command='recover',
    flags=bit.bor(BANG, FILE1, TRLBAR),
    func='ex_recover',
  },
  {
    command='redo',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_redo',
  },
  {
    command='redir',
    flags=bit.bor(BANG, FILES, TRLBAR, CMDWIN),
    func='ex_redir',
  },
  {
    command='redraw',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_redraw',
  },
  {
    command='redrawstatus',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_redrawstatus',
  },
  {
    command='registers',
    flags=bit.bor(EXTRA, NOTRLCOM, TRLBAR, CMDWIN),
    func='ex_display',
  },
  {
    command='resize',
    flags=bit.bor(RANGE, NOTADR, TRLBAR, WORD1),
    func='ex_resize',
  },
  {
    command='retab',
    flags=bit.bor(TRLBAR, RANGE, WHOLEFOLD, DFLALL, BANG, WORD1, CMDWIN, MODIFY),
    func='ex_retab',
  },
  {
    command='return',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_return',
  },
  {
    command='rewind',
    flags=bit.bor(EXTRA, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_rewind',
  },
  {
    command='right',
    flags=bit.bor(TRLBAR, RANGE, WHOLEFOLD, EXTRA, CMDWIN, MODIFY),
    func='ex_align',
  },
  {
    command='rightbelow',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='runtime',
    flags=bit.bor(BANG, NEEDARG, FILES, TRLBAR, SBOXOK, CMDWIN),
    func='ex_runtime',
  },
  {
    command='rundo',
    flags=bit.bor(NEEDARG, FILE1),
    func='ex_rundo',
  },
  {
    command='ruby',
    flags=bit.bor(RANGE, EXTRA, NEEDARG, CMDWIN),
    func='ex_script_ni',
  },
  {
    command='rubydo',
    flags=bit.bor(RANGE, DFLALL, EXTRA, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='rubyfile',
    flags=bit.bor(RANGE, FILE1, NEEDARG, CMDWIN),
    func='ex_ni',
  },
  {
    command='rviminfo',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_viminfo',
  },
  {
    command='substitute',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, CMDWIN),
    func='do_sub',
  },
  {
    command='sNext',
    flags=bit.bor(EXTRA, RANGE, NOTADR, COUNT, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_previous',
  },
  {
    command='sargument',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, EXTRA, EDITCMD, ARGOPT, TRLBAR),
    func='ex_argument',
  },
  {
    command='sall',
    flags=bit.bor(BANG, RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_all',
  },
  {
    command='sandbox',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='saveas',
    flags=bit.bor(BANG, DFLALL, FILE1, ARGOPT, CMDWIN, TRLBAR),
    func='ex_write',
  },
  {
    command='sbuffer',
    flags=bit.bor(BANG, RANGE, NOTADR, BUFNAME, BUFUNL, COUNT, EXTRA, EDITCMD, TRLBAR),
    func='ex_buffer',
  },
  {
    command='sbNext',
    flags=bit.bor(RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bprevious',
  },
  {
    command='sball',
    flags=bit.bor(RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_buffer_all',
  },
  {
    command='sbfirst',
    flags=bit.bor(EDITCMD, TRLBAR),
    func='ex_brewind',
  },
  {
    command='sblast',
    flags=bit.bor(EDITCMD, TRLBAR),
    func='ex_blast',
  },
  {
    command='sbmodified',
    flags=bit.bor(RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bmodified',
  },
  {
    command='sbnext',
    flags=bit.bor(RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bnext',
  },
  {
    command='sbprevious',
    flags=bit.bor(RANGE, NOTADR, COUNT, EDITCMD, TRLBAR),
    func='ex_bprevious',
  },
  {
    command='sbrewind',
    flags=bit.bor(EDITCMD, TRLBAR),
    func='ex_brewind',
  },
  {
    command='scriptnames',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_scriptnames',
  },
  {
    command='scriptencoding',
    flags=bit.bor(WORD1, TRLBAR, CMDWIN),
    func='ex_scriptencoding',
  },
  {
    command='scscope',
    flags=bit.bor(EXTRA, NOTRLCOM),
    func='do_scscope',
  },
  {
    command='set',
    flags=bit.bor(TRLBAR, EXTRA, CMDWIN, SBOXOK),
    func='ex_set',
  },
  {
    command='setfiletype',
    flags=bit.bor(TRLBAR, EXTRA, NEEDARG, CMDWIN),
    func='ex_setfiletype',
  },
  {
    command='setglobal',
    flags=bit.bor(TRLBAR, EXTRA, CMDWIN, SBOXOK),
    func='ex_set',
  },
  {
    command='setlocal',
    flags=bit.bor(TRLBAR, EXTRA, CMDWIN, SBOXOK),
    func='ex_set',
  },
  {
    command='sfind',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='sfirst',
    flags=bit.bor(EXTRA, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_rewind',
  },
  {
    command='simalt',
    flags=bit.bor(NEEDARG, WORD1, TRLBAR, CMDWIN),
    func='ex_simalt',
  },
  {
    command='sign',
    flags=bit.bor(NEEDARG, RANGE, NOTADR, EXTRA, CMDWIN),
    func='ex_sign',
  },
  {
    command='silent',
    flags=bit.bor(NEEDARG, EXTRA, BANG, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_wrongmodifier',
  },
  {
    command='sleep',
    flags=bit.bor(RANGE, NOTADR, COUNT, EXTRA, TRLBAR, CMDWIN),
    func='ex_sleep',
  },
  {
    command='slast',
    flags=bit.bor(EXTRA, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_last',
  },
  {
    command='smagic',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, CMDWIN),
    func='ex_submagic',
  },
  {
    command='smap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='smapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='smenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='snext',
    flags=bit.bor(RANGE, NOTADR, BANG, FILES, EDITCMD, ARGOPT, TRLBAR),
    func='ex_next',
  },
  {
    command='snomagic',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, CMDWIN),
    func='ex_submagic',
  },
  {
    command='snoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='snoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='source',
    flags=bit.bor(BANG, FILE1, TRLBAR, SBOXOK, CMDWIN),
    func='ex_source',
  },
  {
    command='sort',
    flags=bit.bor(RANGE, DFLALL, WHOLEFOLD, BANG, EXTRA, NOTRLCOM, MODIFY),
    func='ex_sort',
  },
  {
    command='split',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='spellgood',
    flags=bit.bor(BANG, RANGE, NOTADR, NEEDARG, EXTRA, TRLBAR),
    func='ex_spell',
  },
  {
    command='spelldump',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_spelldump',
  },
  {
    command='spellinfo',
    flags=bit.bor(TRLBAR),
    func='ex_spellinfo',
  },
  {
    command='spellrepall',
    flags=bit.bor(TRLBAR),
    func='ex_spellrepall',
  },
  {
    command='spellundo',
    flags=bit.bor(BANG, RANGE, NOTADR, NEEDARG, EXTRA, TRLBAR),
    func='ex_spell',
  },
  {
    command='spellwrong',
    flags=bit.bor(BANG, RANGE, NOTADR, NEEDARG, EXTRA, TRLBAR),
    func='ex_spell',
  },
  {
    command='sprevious',
    flags=bit.bor(EXTRA, RANGE, NOTADR, COUNT, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_previous',
  },
  {
    command='srewind',
    flags=bit.bor(EXTRA, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_rewind',
  },
  {
    command='stop',
    flags=bit.bor(TRLBAR, BANG, CMDWIN),
    func='ex_stop',
  },
  {
    command='stag',
    flags=bit.bor(RANGE, NOTADR, BANG, WORD1, TRLBAR, ZEROR),
    func='ex_stag',
  },
  {
    command='startinsert',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_startinsert',
  },
  {
    command='startgreplace',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_startinsert',
  },
  {
    command='startreplace',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_startinsert',
  },
  {
    command='stopinsert',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_stopinsert',
  },
  {
    command='stjump',
    flags=bit.bor(BANG, TRLBAR, WORD1),
    func='ex_stag',
  },
  {
    command='stselect',
    flags=bit.bor(BANG, TRLBAR, WORD1),
    func='ex_stag',
  },
  {
    command='sunhide',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_buffer_all',
  },
  {
    command='sunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='sunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='suspend',
    flags=bit.bor(TRLBAR, BANG, CMDWIN),
    func='ex_stop',
  },
  {
    command='sview',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='swapname',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_swapname',
  },
  {
    command='syntax',
    flags=bit.bor(EXTRA, NOTRLCOM, CMDWIN),
    func='ex_syntax',
  },
  {
    command='syntime',
    flags=bit.bor(NEEDARG, WORD1, TRLBAR, CMDWIN),
    func='ex_syntime',
  },
  {
    command='syncbind',
    flags=bit.bor(TRLBAR),
    func='ex_syncbind',
  },
  {
    command='t',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, TRLBAR, CMDWIN, MODIFY),
    func='ex_copymove',
  },
  {
    command='tNext',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_tag',
  },
  {
    command='tag',
    flags=bit.bor(RANGE, NOTADR, BANG, WORD1, TRLBAR, ZEROR),
    func='ex_tag',
  },
  {
    command='tags',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='do_tags',
  },
  {
    command='tab',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='tabclose',
    flags=bit.bor(RANGE, NOTADR, COUNT, BANG, TRLBAR, CMDWIN),
    func='ex_tabclose',
  },
  {
    command='tabdo',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_listdo',
  },
  {
    command='tabedit',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, ZEROR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='tabfind',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, ZEROR, EDITCMD, ARGOPT, NEEDARG, TRLBAR),
    func='ex_splitview',
  },
  {
    command='tabfirst',
    flags=bit.bor(TRLBAR),
    func='ex_tabnext',
  },
  {
    command='tabmove',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, NOSPC, TRLBAR),
    func='ex_tabmove',
  },
  {
    command='tablast',
    flags=bit.bor(TRLBAR),
    func='ex_tabnext',
  },
  {
    command='tabnext',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_tabnext',
  },
  {
    command='tabnew',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, ZEROR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='tabonly',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='ex_tabonly',
  },
  {
    command='tabprevious',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_tabnext',
  },
  {
    command='tabNext',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_tabnext',
  },
  {
    command='tabrewind',
    flags=bit.bor(TRLBAR),
    func='ex_tabnext',
  },
  {
    command='tabs',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_tabs',
  },
  {
    command='tcl',
    flags=bit.bor(RANGE,EXTRA,NEEDARG,CMDWIN),
    func='ex_script_ni',
  },
  {
    command='tcldo',
    flags=bit.bor(RANGE,DFLALL,EXTRA,NEEDARG,CMDWIN),
    func='ex_ni',
  },
  {
    command='tclfile',
    flags=bit.bor(RANGE,FILE1,NEEDARG,CMDWIN),
    func='ex_ni',
  },
  {
    command='tearoff',
    flags=bit.bor(NEEDARG, EXTRA, TRLBAR, NOTRLCOM, CMDWIN),
    func='ex_tearoff',
  },
  {
    command='terminal',
    flags=bit.bor(BANG, FILES, CMDWIN),
    func='ex_terminal',
  },
  {
    command='tfirst',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_tag',
  },
  {
    command='throw',
    flags=bit.bor(EXTRA, NEEDARG, SBOXOK, CMDWIN),
    func='ex_throw',
  },
  {
    command='tjump',
    flags=bit.bor(BANG, TRLBAR, WORD1),
    func='ex_tag',
  },
  {
    command='tlast',
    flags=bit.bor(BANG, TRLBAR),
    func='ex_tag',
  },
  {
    command='tmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='tmapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='tmenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='tnext',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_tag',
  },
  {
    command='tnoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='topleft',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='tprevious',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_tag',
  },
  {
    command='trewind',
    flags=bit.bor(RANGE, NOTADR, BANG, TRLBAR, ZEROR),
    func='ex_tag',
  },
  {
    command='try',
    flags=bit.bor(TRLBAR, SBOXOK, CMDWIN),
    func='ex_try',
  },
  {
    command='tselect',
    flags=bit.bor(BANG, TRLBAR, WORD1),
    func='ex_tag',
  },
  {
    command='tunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='tunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='undo',
    flags=bit.bor(RANGE, NOTADR, COUNT, ZEROR, TRLBAR, CMDWIN),
    func='ex_undo',
  },
  {
    command='undojoin',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_undojoin',
  },
  {
    command='undolist',
    flags=bit.bor(TRLBAR, CMDWIN),
    func='ex_undolist',
  },
  {
    command='unabbreviate',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_abbreviate',
  },
  {
    command='unhide',
    flags=bit.bor(RANGE, NOTADR, COUNT, TRLBAR),
    func='ex_buffer_all',
  },
  {
    command='unlet',
    flags=bit.bor(BANG, EXTRA, NEEDARG, SBOXOK, CMDWIN),
    func='ex_unlet',
  },
  {
    command='unlockvar',
    flags=bit.bor(BANG, EXTRA, NEEDARG, SBOXOK, CMDWIN),
    func='ex_lockvar',
  },
  {
    command='unmap',
    flags=bit.bor(BANG, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='unmenu',
    flags=bit.bor(BANG, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='unsilent',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_wrongmodifier',
  },
  {
    command='update',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, FILE1, ARGOPT, DFLALL, TRLBAR),
    func='ex_update',
  },
  {
    command='vglobal',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, DFLALL, CMDWIN),
    func='ex_global',
  },
  {
    command='version',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_version',
  },
  {
    command='verbose',
    flags=bit.bor(NEEDARG, RANGE, NOTADR, EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_wrongmodifier',
  },
  {
    command='vertical',
    flags=bit.bor(NEEDARG, EXTRA, NOTRLCOM),
    func='ex_wrongmodifier',
  },
  {
    command='visual',
    flags=bit.bor(BANG, FILE1, EDITCMD, ARGOPT, TRLBAR),
    func='ex_edit',
  },
  {
    command='view',
    flags=bit.bor(BANG, FILE1, EDITCMD, ARGOPT, TRLBAR),
    func='ex_edit',
  },
  {
    command='vimgrep',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_vimgrep',
  },
  {
    command='vimgrepadd',
    flags=bit.bor(RANGE, NOTADR, BANG, NEEDARG, EXTRA, NOTRLCOM, TRLBAR, XFILE),
    func='ex_vimgrep',
  },
  {
    command='viusage',
    flags=bit.bor(TRLBAR),
    func='ex_viusage',
  },
  {
    command='vmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='vmapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='vmenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='vnoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='vnew',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='vnoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='vsplit',
    flags=bit.bor(BANG, FILE1, RANGE, NOTADR, EDITCMD, ARGOPT, TRLBAR),
    func='ex_splitview',
  },
  {
    command='vunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='vunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='write',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, FILE1, ARGOPT, DFLALL, TRLBAR, CMDWIN),
    func='ex_write',
  },
  {
    command='wNext',
    flags=bit.bor(RANGE, WHOLEFOLD, NOTADR, BANG, FILE1, ARGOPT, TRLBAR),
    func='ex_wnext',
  },
  {
    command='wall',
    flags=bit.bor(BANG, TRLBAR, CMDWIN),
    func='do_wqall',
  },
  {
    command='while',
    flags=bit.bor(EXTRA, NOTRLCOM, SBOXOK, CMDWIN),
    func='ex_while',
  },
  {
    command='winsize',
    flags=bit.bor(EXTRA, NEEDARG, TRLBAR),
    func='ex_winsize',
  },
  {
    command='wincmd',
    flags=bit.bor(NEEDARG, WORD1, RANGE, NOTADR),
    func='ex_wincmd',
  },
  {
    command='windo',
    flags=bit.bor(BANG, NEEDARG, EXTRA, NOTRLCOM),
    func='ex_listdo',
  },
  {
    command='winpos',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_ni',
  },
  {
    command='wnext',
    flags=bit.bor(RANGE, NOTADR, BANG, FILE1, ARGOPT, TRLBAR),
    func='ex_wnext',
  },
  {
    command='wprevious',
    flags=bit.bor(RANGE, NOTADR, BANG, FILE1, ARGOPT, TRLBAR),
    func='ex_wnext',
  },
  {
    command='wq',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, FILE1, ARGOPT, DFLALL, TRLBAR),
    func='ex_exit',
  },
  {
    command='wqall',
    flags=bit.bor(BANG, FILE1, ARGOPT, DFLALL, TRLBAR),
    func='do_wqall',
  },
  {
    command='wsverb',
    flags=bit.bor(EXTRA, NOTADR, NEEDARG),
    func='ex_wsverb',
  },
  {
    command='wundo',
    flags=bit.bor(BANG, NEEDARG, FILE1),
    func='ex_wundo',
  },
  {
    command='wviminfo',
    flags=bit.bor(BANG, FILE1, TRLBAR, CMDWIN),
    func='ex_viminfo',
  },
  {
    command='xit',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, FILE1, ARGOPT, DFLALL, TRLBAR, CMDWIN),
    func='ex_exit',
  },
  {
    command='xall',
    flags=bit.bor(BANG, TRLBAR),
    func='do_wqall',
  },
  {
    command='xmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='xmapclear',
    flags=bit.bor(EXTRA, TRLBAR, CMDWIN),
    func='ex_mapclear',
  },
  {
    command='xmenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='xnoremap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_map',
  },
  {
    command='xnoremenu',
    flags=bit.bor(RANGE, NOTADR, ZEROR, EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='xunmap',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_unmap',
  },
  {
    command='xunmenu',
    flags=bit.bor(EXTRA, TRLBAR, NOTRLCOM, USECTRLV, CMDWIN),
    func='ex_menu',
  },
  {
    command='yank',
    flags=bit.bor(RANGE, WHOLEFOLD, REGSTR, COUNT, TRLBAR, CMDWIN),
    func='ex_operators',
  },
  {
    command='z',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, EXFLAGS, TRLBAR, CMDWIN),
    func='ex_z',
  },
  {
    command='!',
    enum='CMD_bang',
    flags=bit.bor(RANGE, WHOLEFOLD, BANG, FILES, CMDWIN),
    func='ex_bang',
  },
  {
    command='#',
    enum='CMD_pound',
    flags=bit.bor(RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN),
    func='ex_print',
  },
  {
    command='&',
    enum='CMD_and',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, CMDWIN, MODIFY),
    func='do_sub',
  },
  {
    command='*',
    enum='CMD_star',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, TRLBAR, CMDWIN),
    func='ex_at',
  },
  {
    command='<',
    enum='CMD_lshift',
    flags=bit.bor(RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN, MODIFY),
    func='ex_operators',
  },
  {
    command='=',
    enum='CMD_equal',
    flags=bit.bor(RANGE, TRLBAR, DFLALL, EXFLAGS, CMDWIN),
    func='ex_equal',
  },
  {
    command='>',
    enum='CMD_rshift',
    flags=bit.bor(RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN, MODIFY),
    func='ex_operators',
  },
  {
    command='@',
    enum='CMD_at',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, TRLBAR, CMDWIN),
    func='ex_at',
  },
  {
    command='Next',
    flags=bit.bor(EXTRA, RANGE, NOTADR, COUNT, BANG, EDITCMD, ARGOPT, TRLBAR),
    func='ex_previous',
  },
  {
    command='Print',
    flags=bit.bor(RANGE, WHOLEFOLD, COUNT, EXFLAGS, TRLBAR, CMDWIN),
    func='ex_print',
  },
  {
    command='~',
    enum='CMD_tilde',
    flags=bit.bor(RANGE, WHOLEFOLD, EXTRA, CMDWIN, MODIFY),
    func='do_sub',
  },
}