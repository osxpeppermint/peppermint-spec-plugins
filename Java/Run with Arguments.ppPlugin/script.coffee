
class JavaRun extends $Plugin
    
    run:->
        outputFile = $Document.info().path.replace( "#{$Document.info().folder}", "").replace(".#{$Document.info().extension}","");
        $Dialog.input("Command line arguments:", (input)=>
            $Terminal.exec("javac", $Document.info().path, "-d", $Document.info().folder,
                (result)=>
                    if result.indexOf("No such file or directory") > -1
                        $Dialog.alert("Compiler not found","To execute Java code, the Java compiler must be installed");
                    else
                        args = ["java", "-classpath", $Document.info().folder, outputFile].concat(input.split(" "));
                        $Terminal.exec.apply($Terminal, args);
                                        
            );
        );
