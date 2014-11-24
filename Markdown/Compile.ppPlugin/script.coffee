class MarkdownCompile extends $Plugin
    
    init:->
        unless Markdown?
            @include("markdown");

        @converter = new Markdown.Converter();

    run:->
        html = @converter.makeHtml( $Document.info().content );
        core.document_write_("#{ $Document.info().path }.html", html);
