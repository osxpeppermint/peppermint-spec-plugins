
class JavascriptBeautify extends $Plugin

    init:->
        @include("js_beautify");

    run:->

        if $Editor.selection()==""
            $Editor.content( js_beautify($Editor.content(), { 'indent_size':1, 'indent_char':"\t"}), true);
        else
            $Editor.selection( js_beautify($Editor.selection(), { 'indent_size':1, 'indent_char':"\t"}), true);

