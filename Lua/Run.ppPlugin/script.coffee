
class LuaRun extends $Plugin
    
    run:->
        $Terminal.exec("lua", $Document.info().path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Lua code, the Lua interpreter must be installed");
        );  


