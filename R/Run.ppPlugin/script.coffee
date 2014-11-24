
class RRun extends $Plugin
    
    run:->
        $Terminal.exec("Rscript", $Document.info().path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute R code, the R interpreter must be installed");
        );  


