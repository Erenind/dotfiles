if status is-interactive
    # Commands to run in interactive sessions can go here
    export PATH="$HOME/.local/bin:$PATH"

    # 在 Fish Shell 中加载 wal 颜色
    if test -e ~/.cache/wal/sequences
        cat ~/.cache/wal/sequences
    end

    # 加载 TTY wal颜色支持
    # if test -e ~/.cache/wal/colors-tty.sh
    #     bash -c "source ~/.cache/wal/colors-tty.sh"
    # end
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    export http_proxy="socks5://127.0.0.1:10808/"
    export https_proxy="socks5://127.0.0.1:10808/"
end
