#-- START ZCACHE GENERATED FILE
#-- GENERATED: Jeu 19 mar 2020 17:29:19 CET
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/Users/thomasbarach/.antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/thomasbarach/.antigen/bundles/zsh-users/zsh-history-substring-search /Users/thomasbarach/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/thomasbarach/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/thomasbarach/.antigen/bundles/Tarrasch/zsh-command-not-found /Users/thomasbarach/.antigen/bundles/hcgraf/zsh-sudo /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/jsontools /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /Users/thomasbarach/.antigen/bundles/littleq0903/gcloud-zsh-completion /Users/thomasbarach/.antigen/bundles/nnao45/zsh-kubectl-completion /Users/thomasbarach/.antigen/bundles/denysdovhan/spaceship-prompt) path+=(/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/thomasbarach/.antigen/bundles/zsh-users/zsh-history-substring-search /Users/thomasbarach/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/thomasbarach/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/thomasbarach/.antigen/bundles/Tarrasch/zsh-command-not-found /Users/thomasbarach/.antigen/bundles/hcgraf/zsh-sudo /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/jsontools /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /Users/thomasbarach/.antigen/bundles/littleq0903/gcloud-zsh-completion /Users/thomasbarach/.antigen/bundles/nnao45/zsh-kubectl-completion /Users/thomasbarach/.antigen/bundles/denysdovhan/spaceship-prompt)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/Users/thomasbarach/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/Tarrasch/zsh-command-not-found/command-not-found.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/hcgraf/zsh-sudo/sudo.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv/dotenv.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/jsontools/jsontools.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node/node.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize/colorize.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/nnao45/zsh-kubectl-completion/zsh-kubectl-completion.plugin.zsh';
source '/Users/thomasbarach/.antigen/bundles/denysdovhan/spaceship-prompt/spaceship.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/zsh-users/zsh-history-substring-search.git / plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/Tarrasch/zsh-command-not-found.git / plugin true' 'https://github.com/hcgraf/zsh-sudo.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dotenv plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/osx plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/jsontools plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/node plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/colored-man-pages plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/colorize plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/common-aliases plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/copyfile plugin true' 'https://github.com/littleq0903/gcloud-zsh-completion.git / plugin true' 'https://github.com/nnao45/zsh-kubectl-completion.git / plugin true' 'https://github.com/denysdovhan/spaceship-prompt.git / theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-history-substring-search//' '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-history-substring-search///zsh-history-substring-search.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/thomasbarach/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/Tarrasch/zsh-command-not-found//' '/Users/thomasbarach/.antigen/bundles/Tarrasch/zsh-command-not-found///command-not-found.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/hcgraf/zsh-sudo//' '/Users/thomasbarach/.antigen/bundles/hcgraf/zsh-sudo///sudo.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotenv/dotenv.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/jsontools' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/jsontools/jsontools.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node/node.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize/colorize.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile' '/Users/thomasbarach/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/littleq0903/gcloud-zsh-completion//' '/Users/thomasbarach/.antigen/bundles/nnao45/zsh-kubectl-completion//' '/Users/thomasbarach/.antigen/bundles/nnao45/zsh-kubectl-completion///zsh-kubectl-completion.plugin.zsh' '/Users/thomasbarach/.antigen/bundles/denysdovhan/spaceship-prompt//' '/Users/thomasbarach/.antigen/bundles/denysdovhan/spaceship-prompt///spaceship.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
