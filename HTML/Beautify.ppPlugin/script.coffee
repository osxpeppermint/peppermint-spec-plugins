
class HtmlBeautify extends $Plugin

    init:->
        @include("html_beautify");

    run:->

        if $Editor.selection()==""
            $Editor.content( ht_beautify($Editor.content(), { 'indent_size':1, 'indent_char':"\t"}), true);
        else
            $Editor.selection( ht_beautify($Editor.selection(), { 'indent_size':1, 'indent_char':"\t"}), true);

