
class JsonBeautify extends $Plugin

    init:->
        @include("json_beautify");

    run:->

        if $Editor.selection()==""
            $Editor.content( jsl.format.formatJson($Editor.content()), true);
        else
            $Editor.selection( jsl.format.formatJson($Editor.selection()), true);
