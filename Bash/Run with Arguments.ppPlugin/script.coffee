
class BashRunWithArgs extends $Plugin

    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "bash", "--login", $Document.info().path ].concat( input.split(" ") );
            $Terminal.exec.apply($Terminal, args);
        );
