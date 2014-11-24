
class PhpRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "php", $Document.info().path ].concat( input.split(" ") );
            $Terminal.exec.apply($Terminal, args);
        );