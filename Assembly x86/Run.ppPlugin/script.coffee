
class AssemblyRun extends $Plugin

    run:->
        $Terminal.exec("nasm", "-f", "macho", $Document.info().path,
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","NASM has to be installed in your $PATH");
                else
                    interFile = $Document.info().path.replace(".asm",".o");
                    outputFile = $Document.info().folder + "a.out";
                    result = $Terminal.exec("ld", "-macosx_version_min", "10.7.0", interFile, "-o", outputFile,
                        (result)=>
                            $Terminal.exec(outputFile);
                    );
                                    
        );
        


