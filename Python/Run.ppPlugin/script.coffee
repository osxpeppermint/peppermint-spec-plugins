
class PythonRun extends $Plugin
    
    run:->
        $Terminal.exec("python", $Document.info().path);


