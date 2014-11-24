class CRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            outputFile = $Document.info().folder + "a.out";
            $Terminal.exec("clang", $Document.info().path, "-o", outputFile,
                (result)=>
                    if result.indexOf("No such file or directory") > -1
                        $Dialog.alert("Compiler not found","To execute C code, the Clang compiler must be installed");
                    else
                        args = [ outputFile ].concat( input.split(" ") );
                        $Terminal.exec.apply($Terminal,args);
                                    
            );
        );
