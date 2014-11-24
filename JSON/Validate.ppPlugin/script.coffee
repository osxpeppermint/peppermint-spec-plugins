
class JsonValidate extends $Plugin

    init:->
        @include("json_validator");

    run:->
        if $Editor.selection()==""
            input = $Editor.content();
        else
            input = $Editor.selection();

        try
            jsl.parser.parse(input);
            $Dialog.alert("Valid JSON", "No errors found.");
        catch exc
            $Dialog.alert("Invalid JSON", exc.message);
