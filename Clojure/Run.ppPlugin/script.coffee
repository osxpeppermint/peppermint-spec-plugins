
class ClojureRun extends $Plugin
    
    run:->
        $Terminal.exec("java", "-cp", @bin["clojure"], "clojure.main", $Document.info().path, 
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute Clojure code, the Java compiler must be installed");
        );  


