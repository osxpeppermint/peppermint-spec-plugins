class HaskellRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            outputFile = $Document.info().path.replace(".#{ $Document.info().extension }","");
            $Terminal.exec("ghc", $Document.info().path,
                (result)=>
                    if result.indexOf("No such file or directory") > -1
                        $Dialog.alert("Compiler not found","To execute Haskell code, the Glasgow Haskell compiler must be installed");
                    else
                        args = [ outputFile ].concat( input.split(" ") );
                        $Terminal.exec.apply($Terminal,args);
                                    
            );
        );
