
class LitcoffeeRunWithArgs extends $Plugin
    
    run:->
        temp = $Document.temp(CoffeeScript.compile($Document.info().content, {literate:true}));
        $Dialog.input("Command line arguments:", (input)=>
            args = [ @bin["node"], temp.path ].concat( input.split(" ") );
            args = args.concat((result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute JS code, the Node.js compiler must be installed");
            );  
            $Terminal.exec.apply($Terminal, args);
        );