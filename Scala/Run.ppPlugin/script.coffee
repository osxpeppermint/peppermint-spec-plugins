
class ScalaRun extends $Plugin
    
    run:->
        outputFile = $Document.info().path.replace( ".#{ $Document.info().extension }", "");
        $Terminal.exec("scalac", $Document.info().path, "-d", $Document.info().folder,
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Scala code, Scala and the Java compiler must be installed");
                else
                    $Terminal.exec("scala", outputFile);
                                    
        );
