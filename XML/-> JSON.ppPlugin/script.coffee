
class XmlToJson extends $Plugin

   init:->
      @include("xml_to_json");

   run:->
      if $Editor.selection()==""
            $Editor.content( xml2json(parseXml($Editor.content()),"\t"), true);
        else
            $Editor.selection( xml2json(parseXml($Editor.selection()),"\t"), true);
