
class JavascriptPack extends $Plugin

    init:->
        @include("packer");
        @packer = new Packer;

    run:->

        if $Editor.selection()==""
            $Editor.content( @packer.pack($Editor.content(),true,true), true);
        else
            $Editor.selection( @packer.pack($Editor.selection(),true,true), true);
