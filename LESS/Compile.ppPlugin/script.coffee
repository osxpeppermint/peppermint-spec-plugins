
class LessCompile extends $Plugin

    init:->
        @include("less");
        @parser = window.less.Parser();

    run:->

        try
            @parser.parse($Document.info().content, (error,result)=>
                if !error
                    core.document_write_("#{ $Document.info().path }.css", result.toCSS() );
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