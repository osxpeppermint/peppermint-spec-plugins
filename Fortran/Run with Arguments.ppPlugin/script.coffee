class FortranRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            outputFile = $Document.info().folder + "a.out";
            $Terminal.exec("gfortran", $Document.info().path, "-o", outputFile,
                (result)=>
                    if result.indexOf("No such file or directory") > -1
                        $Dialog.alert("Compiler not found","To execute Fortran code, the GNU Fortran compiler must be installed");
                    else
                        args = [ outputFile ].concat( input.split(" ") );
                        $Terminal.exec.apply($Terminal,args);
                                    
            );
        );
