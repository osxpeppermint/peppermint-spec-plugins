
class PhpRun extends $Plugin
    
    run:->
        $Terminal.exec("php", $Document.info().path);


