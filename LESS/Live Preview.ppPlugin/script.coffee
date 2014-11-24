class LessLivePreview extends $Plugin

    loadPreview:->
        try
            @parser.parse($Document.info().content, (error,result)=>
                if !error
                    $Utility.loadDocument("Less ❯ Live Preview", result.toCSS(), "css");
                else
                    # Don't do anything
            );
            
        catch e
            # Don't do anything

    init:->
        @include("less");
        @parser = window.less.Parser();

    run:->
        @loadPreview();
        @on.documentChanged(()=>
            @loadPreview();
        );