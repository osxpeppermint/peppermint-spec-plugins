
class BashRun extends $Plugin
    
    run:->
        $Terminal.exec("bash", "--login", $Document.info().path);

