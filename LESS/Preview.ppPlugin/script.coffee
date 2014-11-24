
class LessPreview extends $Plugin

    init:->
        @include("less");
        @parser = window.less.Parser();

    run:->
        try
            @parser.parse($Document.info().content, (error,result)=>
                if !error
                    $Utility.loadDocument("Less ❯ Preview", result.toCSS(), "css");
                else
                    @displayError(error);
            );
            
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

        $Terminal.echo("Less:: error: #{errorMessage}");
        