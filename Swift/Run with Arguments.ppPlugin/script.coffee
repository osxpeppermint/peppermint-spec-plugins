
class SwiftRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "xcrun", "swift", $Document.info().path ].concat( input.split(" ") );
            $Terminal.exec.apply($Terminal, args);
        );