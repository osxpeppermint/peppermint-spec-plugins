
class PerlRun extends $Plugin
    
    run:->
        $Terminal.exec("perl", $Document.info().path);


