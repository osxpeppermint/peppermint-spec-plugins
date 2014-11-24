class FortranRun extends $Plugin
    
    run:->
        outputFile = $Document.info().folder + "a.out";
        $Terminal.exec("gfortran", $Document.info().path, "-o", outputFile,
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Fortran code, the GNU Fortran compiler must be installed");
                else
                    $Terminal.exec(outputFile);
                                    
        );

