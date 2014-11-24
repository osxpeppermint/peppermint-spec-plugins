
class RubyRun extends $Plugin
    
    run:->
        $Terminal.exec("ruby", $Document.info().path);


