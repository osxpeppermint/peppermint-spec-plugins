
class ClojureRunWithArgs extends $Plugin
    
    run:->
        $Dialog.input("Command line arguments:", (input)=>
            args = [ "java", "-cp", @bin["clojure"], "clojure.main", $Document.info().path ].concat( input.split(" ") );
            args = args.concat((result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Clojure code, the Java compiler must be installed");
            );  
            $Terminal.exec.apply($Terminal, args);
        );