
class HtmlStripTags extends $Plugin

	run:->
		if $Editor.selection()==""
			$Editor.content( $($Editor.content()).text(), true );
		else
			$Editor.selection( $($Editor.selection()).text() );
