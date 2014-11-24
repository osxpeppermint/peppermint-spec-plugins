class CoffeescriptRun extends $Plugin
    
    run:->
        temp = $Document.temp($Core.coffee($Document.info().content));
        $Terminal.exec(@bin["node"], temp.path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute JS code, the Node.js compiler must be installed");
        ); 