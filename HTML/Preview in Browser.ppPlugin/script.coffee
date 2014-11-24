
class HtmlPreviewInBrowser extends $Plugin

	run:->
		core.showInBrowser_($Document.info().path);
