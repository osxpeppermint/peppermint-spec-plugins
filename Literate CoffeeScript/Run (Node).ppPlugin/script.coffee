class LitcoffeeRun extends $Plugin
    
    run:->
        temp = $Document.temp(CoffeeScript.compile($Document.info().content, {literate:true}));
        $Terminal.exec(@bin["node"], temp.path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute JS code, the Node.js compiler must be installed");
        ); 