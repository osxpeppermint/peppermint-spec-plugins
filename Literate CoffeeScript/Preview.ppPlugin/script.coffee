
class LitcoffeePreview extends $Plugin
    
    loadPreview: (theme=null)->
        if theme?
            @theme = theme
        
        html = "<style>" + @import("css/#{@theme}.css") + "</style>";
        html += @converter.makeHtml( $Document.info().content );
        
        $Utility.load("CoffeeScript (Literate) ❯ Preview", html);

    init: ->
        unless Markdown?
            @include("markdown");
            
        @converter = new Markdown.Converter();
        
        if !@theme?
            @theme = "Cerulean";

    run:->  
        @loadPreview();
    
    menu: -> { 
        "Amelia"        :=> @loadPreview("Amelia")
        "Blueish"       :=> @loadPreview("Blueish")
        "Cerulean"      :=> @loadPreview("Cerulean")
        "Easy Reader"   :=> @loadPreview("Easy Reader")
        "Journal"       :=> @loadPreview("Journal")
        "Simplex"       :=> @loadPreview("Spruce")
        "Superhero"     :=> @loadPreview("Superhero")
        "United"        :=> @loadPreview("United")
    }

