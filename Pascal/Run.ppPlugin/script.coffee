class PascalRun extends $Plugin
    
    run:->
        outputFile = $Document.info().path.replace( ".#{ $Document.info().extension }", "");
        $Terminal.exec("gpc", $Document.info().path,
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Pascal code, the GNU Pascal compiler must be installed");
                else
                    $Terminal.exec(outputFile);
                                    
        );

