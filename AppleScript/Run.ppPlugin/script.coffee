
class ApplescriptRun extends $Plugin
    
    run:->
        $Terminal.exec("osascript", $Document.info().path);


