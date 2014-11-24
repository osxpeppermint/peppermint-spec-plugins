

class CoffeescriptPreview extends $Plugin

    run:->
        $Utility.loadDocument("CoffeeScript ❯ Preview", $Core.coffee($Document.info().content), "javascript");
        
