
class ScalaRun extends $Plugin
    
    run:->
        outputFile = $Document.info().path.replace( ".#{ $Document.info().extension }", "");
        $Dialog.input("Command line arguments:", (input)=>
            $Terminal.exec("scalac", $Document.info().path, "-d", $Document.info().folder,
                (result)=>
                    if result.indexOf("No such file or directory") > -1
                        $Dialog.alert("Compiler not found","To execute Scala code, Scala and the Java compiler must be installed");
                    else
                        args = ["scala", outputFile].concat(input.split(" "));
                        $Terminal.exec.apply($Terminal, args);
                                        
            );
        );
