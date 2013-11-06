Compass.ErpApp.Widgets.Tnweb = {
	addWidget:function(){
        Ext.getCmp('knitkitCenterRegion').addContentToActiveCodeMirror('<%= render_widget :tnweb %>');
	}
}

Compass.ErpApp.Widgets.AvailableWidgets.push({
    name:'trueweb',
    iconUrl:'/images/icons/tnweb/tnweb_48x48.png',
    onClick:Compass.ErpApp.Widgets.Tnweb.addWidget,
    about:'What my new widget is about'
});