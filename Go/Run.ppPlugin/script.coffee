
class GoRun extends $Plugin
    
    run:->
        $Terminal.exec("go", "run", $Document.info().path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Go code, the Go compiler must be installed");
        );  


