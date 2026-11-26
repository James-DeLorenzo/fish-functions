function arch-news
    if count $argv > 0
        set news_num :$argv[1]
    else
        set news_num 0
    end
    curl -sL https://archlinux.org/feeds/news/ | yq -px ".rss.channel.item | .[$news_num] | \"<h1>\"+ .title + \"</h1>\n\" + .description" | uvx html2text | glow -w $COLUMNS -p
end
