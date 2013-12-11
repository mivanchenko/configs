# PS1='\[\e[1;94m\]\u\[\e[0m\]@\[\e[1;31m\]\h:\[\e[1;32m\]\w\[\e[1;94m\]\njobs:\j\[\e[0m\]\$ '
# PS1='\[\e[0;37m\][\[\e[1;94m\]\[\e[1;94m\]\u\[\e[0m\]@\[\e[1;31m\]\h: \[\e[1;32m\]\w\[\e[1;94m\]\[\e[0;37m\]]\n\[\e[0m\]\$ '
# export LS_COLORS="no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:"
export EDITOR=/usr/bin/vim
export PS1="\[\033[92m\]\w/ \[\033[33m\]\$ \[\033[m\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

bor () {
	echo
		wget http://bash.im/forweb/ -q -O - \
		| sed "s/' + '//g" \
		| iconv -f cp1251 \
		| w3m -T text/html -dump \
		| sed '1,2d;N;$!P;$!D;$d;'
		echo -e "\r"
}
