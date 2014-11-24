
class NodejsRun extends $Plugin
    
    run:->
        $Terminal.exec(@bin["node"], $Document.info().path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute JS code, the Node.js compiler must be installed");
        );  


