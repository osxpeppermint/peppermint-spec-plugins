
class CssBeautify extends $Plugin

    init:->
        @include("cssbeautify");

    run:->

        if $Editor.selection()==""
            $Editor.content( cssbeautify($Editor.content()), true);
        else
            $Editor.selection( cssbeautify($Editor.selection()), true);