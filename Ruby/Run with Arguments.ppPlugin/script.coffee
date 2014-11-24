
class RubyRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "ruby", $Document.info().path ].concat( input.split(" ") );
            $Terminal.exec.apply($Terminal, args);
        );