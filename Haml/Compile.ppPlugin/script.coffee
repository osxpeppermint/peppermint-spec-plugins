
class HamlCompile extends $Plugin

    init:->
        @include("haml");

    run:->

        try
            result = haml.compileHaml({ source: $Document.info().content })();
            core.document_write_("#{ $Document.info().path }.html", result );
            
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
