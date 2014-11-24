

class ApplescriptDebug extends $Plugin

    run:->
        $Terminal.setVar("AEDebugReceives",1);
        
        $Terminal.execSilent("osascript", $Document.info().path, 
            (interm)=>
            ,    
            (result)=>
                # Received final result
                $Terminal.setVar("AEDebugReceives",0);
                result = result.replace(/\r/gm, "____");
                
                reg = /\('utf8'"(.+)"\)/gm;
                match = reg.exec(result);
                while match?
                    $Terminal.echo("Received",";#0778D3;");
                    lines = match[1].split("____");
                    for line in lines
                        $Terminal.echo(line);
                    
                    match = reg.exec(result);
                    $Terminal.echo("\n");
        
                parts = result.split("------oo  end of event  oo------");
                lastpart = parts[parts.length - 1];
                lastpart = lastpart.split("____");
                $Terminal.echo("Result",";#FF7C2B;");
                for line in lastpart
                    $Terminal.echo(line);
                
        );
        

