Compass.ErpApp.Widgets.Customer = {
	addWidget:function(){
        Ext.getCmp('knitkitCenterRegion').addContentToActiveCodeMirror('<%= render_widget :customer %>');
	}
}

Compass.ErpApp.Widgets.AvailableWidgets.push({
    name:'customer',
    iconUrl:'/images/icons/customer/customer_48x48.png',
    onClick:Compass.ErpApp.Widgets.Customer.addWidget,
    about:'This widget creates customer view'
});