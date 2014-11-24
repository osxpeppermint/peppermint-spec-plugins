
class HtmlPreview extends $Plugin

	run:->
		$Utility.load("Html ❯ Preview", $Document.info().content, $Document.info().folder);
