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