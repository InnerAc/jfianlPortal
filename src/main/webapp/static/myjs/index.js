function init(){
	$.ajax({
		type: "POST",
		url: 'panel/all',
		dataType: "json",
		success:function(data){
			genPanels(data);
		}
	});
}
function tab_more(e){
	var e = $(e);
	ul = e.parent().parent();
	li = ul.find('li.active');
	a = li.find('a');
	tab_i = a.attr('href');
	i = tab_i.split('_')[1];
	window.open('panel/list/'+i);
}