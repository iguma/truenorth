Compass.ErpApp.Widgets.Comments = {
	addWidget:function(){
        Ext.getCmp('knitkitCenterRegion').addContentToActiveCodeMirror('<%= render_widget :comments %>');
	}
}

Compass.ErpApp.Widgets.AvailableWidgets.push({
    name:'comments',
    iconUrl:'/images/icons/comments/comments_48x48.png',
    onClick:Compass.ErpApp.Widgets.Comments.addWidget,
    about:'This widget creates a comments form where user can leave their comments'
});
