
class LuaRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "lua", $Document.info().path ].concat( input.split(" ") );
            args = args.concat((result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Lua code, the Lua interpreter must be installed");
            );  
            $Terminal.exec.apply($Terminal, args);
        );