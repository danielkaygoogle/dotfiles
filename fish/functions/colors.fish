function colors
    function show_color -a color
        echo -n (set_color $color)"$color "
        echo -n (set_color --bold $color)"$color "
        echo (set_color normal)
    end

    echo "normal     "(set_color --bold)"bold"(set_color normal)
    for color in (set_color --print-colors)
        test $color != normal; and show_color $color
    end | column -t
end
