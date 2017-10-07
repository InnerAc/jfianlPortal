box_height = getPanelHeight();
function genPanels(data){
	panels_area = $('#panels_area');
	panels_area.append(gen_list_view(data));
	genTimes();
}
function gen_list_view(data){
	panel = data.panel;
	articles = data.articles;
	str = '<div class="col-md-'
		+panel.psize
		+' col-box"> <div class="box '
	if(panel.pshow == 1){
		str += 'box-success"> <div class="box-header"> <h3 class="box-title">'
			+panel.pname
			+'</h3> <div class="box-tools pull-right"> <div class="btn-group"> <a href="panel/list/'
			+panel.pid
			+'" class="btn btn-panel-tip btn-sm">更多>></a> </div> </div> </div> <div class="box-body" style="height:'
			+box_height
			+'px;">';
	}else{
		str += ' box-no"><div class="box-body" style="height:'+
		box_height+'px;">'
	}
	str += list_art_info(data);
	str += '</div></div></div>'
	return str;
}
function list_art_info(data){
	panel = data.panel;
	articles = data.articles;
	str = '<table class="table table-condensed table-hover">';
	
	for(i=0;i<articles.length;i++){
		str += '<tr><td width="75%"><a href="article/'+articles[i].aid+'">'+articles[i].atitle+'</a></td><td class="times">'+articles[i].atime+'</td></tr>';
	}
	str += '</table>';
	return str;
}