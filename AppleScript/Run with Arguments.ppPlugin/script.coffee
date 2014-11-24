
class ApplescriptRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "osascript", $Document.info().path ].concat( input.split(" ") );
            $Terminal.exec.apply($Terminal, args);
        );