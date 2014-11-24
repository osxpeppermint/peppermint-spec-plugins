class DRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            outputFile = $Document.info().path.replace( ".#{ $Document.info().extension }", "");
            $Terminal.exec("dmd", $Document.info().path, "-of#{ outputFile }",
                (result)=>
                    if result.indexOf("No such file or directory") > -1
                        $Dialog.alert("Compiler not found","To execute D code, the DMD compiler must be installed");
                    else
                        args = [ outputFile ].concat( input.split(" ") );
                        $Terminal.exec.apply($Terminal,args);
                                    
            );
        );
