

class CoffeescriptLivePreview extends $Plugin

    loadPreview:->
        try
            $Utility.loadDocument("CoffeeScript ❯ Live Preview", $Core.coffee($Document.info().content), "javascript");
        catch error
            # Don't do anything

    run:->
        @loadPreview();
        @on.documentChanged(()=>
            @loadPreview();
        );
