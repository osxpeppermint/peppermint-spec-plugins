class ObjectivecRun extends $Plugin
    
    run:->
        outputFile = $Document.info().folder + "a.out";
        $Terminal.exec("clang", $Document.info().path, "-o", outputFile, "-framework", "Cocoa",
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Objective-C code, the Clang compiler must be installed and a 10.10 SDK is needed");
                else
                    $Terminal.exec(outputFile);
                                    
        );
