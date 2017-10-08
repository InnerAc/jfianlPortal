function updateValue(){
	value = $('#tarUrl').val();
	pid = $('#div_pid').html();
	$.ajax({
		type: "POST",
		url: 'admin/panel/updateValue',
		dataType: "json",
		data: {pid:pid,pvalue:value},
		success:function(data){
			if(data.statu == 200){
				alert('更新成功');
			}else{
				alert(data.msg);
			}
		}
	});
}
function updateTextArea(){
	if($('#div_ptype').html() == '1'){
		value = editor.txt.html()
	}else{
		value = $('#textarea0').val();
	}
	pid = $('#div_pid').html();
	$.ajax({
		type: "POST",
		url: 'admin/panel/updateValue',
		dataType: "json",
		data: {pid:pid,pvalue:value},
		success:function(data){
			if(data.statu == 200){
				alert('更新成功');
			}else{
				alert(data.msg);
			}
		}
	});
}
function deleteArt(aid,e){
	$.ajax({
		type: "POST",
		url: 'admin/article/delete',
		dataType: "json",
		data: {aid:aid},
		success:function(data){
			if(data.statu == 200){
				$(e).parent().parent().remove();
				alert('删除成功');
			}else{
				alert(data.msg);
			}
		}
	});
}
function selectTabs(){
	allPanels = $('#allPanels');
	allPanels.html('');
	$.get('admin/panel/panels',function(data){
		for(i=0;i<data.length;i++){
			item = '<div class="col-md-2"><div class="box box-info box-solid"><div class="box-header with-border"><h3 class="box-title">'
				+data[i].pname
				+'</h3><div class="box-tools pull-right"><a onclick="selectIt(this);" pid="'
				+data[i].pid
				+'" pname="'
				+data[i].pname
				+'" class="btn btn-box-tool"><i class="fa fa-plus"></i></a></div></div></div></div>';
			allPanels.append(item);
		}
	});
	$('#tabSelect').modal();
}
function selectIt(a){
	a = $(a);
	selectedPanels = $('#selectedPanels');
	pid = a.attr('pid');
	pname = a.attr('pname');
	item = '<div class="col-md-2"><div class="box box-info box-solid"><div class="box-header with-border"><h3 class="box-title">'
		+pname
		+'</h3><div class="box-tools pull-right"><a onclick="unselectIt(this);" pid="'
		+pid
		+'" pname="'
		+pname
		+'" class="btn btn-box-tool"><i class="fa fa-minus"></i></a></div></div></div></div>';
	selectedPanels.append(item);
	$(a).parent().parent().parent().parent().remove();
	$('#selectedPanels').sortable();
	$('#selectedPanels').disableSelection();
}
function unselectIt(a){
	a = $(a);
	allPanels = $('#allPanels');
	pid = a.attr('pid');
	pname = a.attr('pname');
	item = '<div class="col-md-2"><div class="box box-info box-solid"><div class="box-header with-border"><h3 class="box-title">'
		+pname
		+'</h3><div class="box-tools pull-right"><a onclick="selectIt(this);" pid="'
		+pid
		+'" pname="'
		+pname
		+'" class="btn btn-box-tool"><i class="fa fa-plus"></i></a></div></div></div></div>';
	allPanels.append(item);
	$(a).parent().parent().parent().parent().remove();
}
function commitTab(){
	selectedPanels = $('#selectedPanels');
	as = selectedPanels.find('a');
	tabs = '';
	for(i=0;i<as.length;i++){
		if(i == 0){
			tabs = $(as[i]).attr('pid');
		}else{
			tabs += ','+$(as[i]).attr('pid');
		}
	}
	$('#tarUrl').val(tabs);
	$('#tabSelect').modal('hide');
}