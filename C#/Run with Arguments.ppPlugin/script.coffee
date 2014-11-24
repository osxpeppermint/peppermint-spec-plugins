
class CsRunWithArgs extends $Plugin

    run:->
        $Dialog.input("Command line arguments:", (input)=>
            $Terminal.exec("gmcs", $Document.info().path,
            (result)=>
                if result.indexOf("No such file or directory") > -1
                    $Dialog.alert("Compiler not found","To execute C# code, the Mono compiler must be installed");
                else
                    output = $Document.info().path.replace( ".#{$Document.info().extension}", "") + ".exe";
                    args = [ "mono", output ].concat( input.split(" ") );
                    $Terminal.exec.apply($Terminal,args);
            );
        );
