
class SwiftRun extends $Plugin
    
    run:->
        $Terminal.exec("xcrun", "swift", $Document.info().path);