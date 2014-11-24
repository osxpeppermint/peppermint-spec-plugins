
class LitcoffeeCompile extends $Plugin

    run:->
        core.document_write_("#{ $Document.info().path }.js", CoffeeScript.compile($Document.info().content, {literate:true}) );

