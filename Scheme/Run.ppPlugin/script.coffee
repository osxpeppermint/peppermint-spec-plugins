
class SchemeRun extends $Plugin
    
    run:->
        $Terminal.exec("scheme", "--batch-mode",
            (result)=>
                $Terminal.write( $Document.info().content );
                
        );


