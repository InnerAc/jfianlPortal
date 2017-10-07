function init(){
	$.ajax({
		type: "POST",
		url: 'panel/4',
		dataType: "json",
		success:function(data){
			genPanels(data);
		}
	});
}