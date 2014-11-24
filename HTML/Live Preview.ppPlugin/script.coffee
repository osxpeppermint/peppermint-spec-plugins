
class HtmlLivePreview extends $Plugin

    run:->
        $Utility.load("Html ❯ Live Preview", $Document.info().content, $Document.info().folder);
        @on.documentChanged(()=>
            $Utility.load("Html ❯ Live Preview", $Document.info().content, $Document.info().folder);
        );
