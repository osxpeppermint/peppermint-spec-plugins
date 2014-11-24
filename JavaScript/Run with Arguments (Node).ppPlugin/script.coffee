
class NodejsRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ @bin["node"], $Document.info().path ].concat( input.split(" ") );
            args = args.concat((result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute JS code, the Node.js compiler must be installed");
            );  
            $Terminal.exec.apply($Terminal, args);
        );