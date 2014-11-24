
class HamlPreview extends $Plugin

    init:->
        @include("haml");

    run:->

        try
            result = haml.compileHaml({ source: $Document.info().content })();
            $Utility.loadDocument("Haml ❯ Preview", result, "html");
            
        catch e
            @displayError(e);

    displayError: (error)->
        errorMessage = "";
        if error
            if error.name
                errorMessage += error.name + ": ";
            if error.message
                errorMessage += error.message;
        if errorMessage==""
            errorMessage = "Unknown error";

        $Terminal.echo("Haml:: error: #{errorMessage}");
