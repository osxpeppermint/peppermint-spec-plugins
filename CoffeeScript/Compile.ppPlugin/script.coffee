
class CoffeescriptCompile extends $Plugin

    run:->
        core.document_write_("#{ $Document.info().path }.js", $Core.coffee($Document.info().content) );
