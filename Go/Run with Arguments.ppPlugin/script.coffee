
class GoRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "go", "run", $Document.info().path ].concat( input.split(" ") );
            args = args.concat((result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Go code, the Go compiler must be installed");
            );  
            $Terminal.exec.apply($Terminal, args);
        );