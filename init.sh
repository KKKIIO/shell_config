if [ -n "$ZSH_VERSION" ]; then
    shell="zsh"
else 
    shell="bash"
fi

eval "$(lua ~/.local/shell_config/z.lua  --init $shell once enhanced)"
