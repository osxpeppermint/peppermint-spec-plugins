class OcamlRun extends $Plugin
    
    run:->
        $Terminal.exec("ocaml", $Document.info().path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute OCaml code, the OCaml interpreter must be installed");
        );

