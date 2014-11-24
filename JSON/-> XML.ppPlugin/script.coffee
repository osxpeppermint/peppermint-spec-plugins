
class JsonToXml extends $Plugin

    init:->
        @include("json_to_xml");

    run:->
        if $Editor.selection()==""
            $Editor.content( json2xml(JSON.parse($Editor.content()),"\t"), true);
        else
            $Editor.selection( json2xml(JSON.parse($Editor.selection()),"\t"), true);