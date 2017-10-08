box_height = getPanelHeight();
bot_title_height = 41;
function genPanels(data){
	panels_area = $('#panels_area');
	for(var i=0;i<data.length;i++){
		if(data[i].panel.ptype == TYPE_TABS){
			panels_area.append(gen_tab(data[i]));
		}else{
			panels_area.append(gen_untab(data[i]));
		}
	}
	genTimes();
	$('.carousel').carousel({
	    interval: 2000
	})
}
/**
 * 渲染非tab页面
 * @param data
 * @returns {String}
 */
function gen_untab(data){
	panel = data.panel;
	articles = data.articles;
	str = '<div class="col-md-'
		+panel.psize
		+' col-box" style="height:'
		+box_height
		+'px;"> <div class="box '
	if(panel.pshow == 1){
		str += 'box-success"> <div class="box-header with-border"> <h3 class="box-title">'
			+panel.pname
			+'</h3> <div class="box-tools pull-right"> <div class="btn-group"> <a href="panel/list/'
			+panel.pid
			+'" class="btn btn-panel-tip btn-sm">更多>></a> </div> </div> </div> <div class="box-body" >';
	}else{
		str += ' box-no"><div class="box-body no-padding">';
	}
	switch(panel.ptype){
		case TYPE_LIST_ARTICLE:{
			str += list_art_info(data);
			break;
		}
		case TYPE_SHOW_NOTICE:{
			str += show_notice_info(data);
			break;
		}
		case TYPE_IMAGES:{
			str += image_info(data);
			break;
		}
	}
	str += '</div></div></div>'
	return str;
}
/**
 * 渲染tab页
 * @param data
 * @returns {String}
 */
function gen_tab(data){
	panel = data.panel;
	subPanels = data.subPanels;
	str = '<div class="col-md-'
		+panel.psize
		+' col-box" style="height:'
		+box_height+'px;"><div class="nav-tabs-custom"><ul class="nav nav-tabs">';
	for(var i=0;i<subPanels.length;i++){
		if(0==i){
			str += '<li class="active"><a href="#tab_'
				+ subPanels[i].panel.pid
				+'" data-toggle="tab">'
				+ subPanels[i].panel.pname
				+'</a></li>'; 
		}else{
			str += '<li><a href="#tab_'
				+ subPanels[i].panel.pid
				+'" data-toggle="tab">'
				+ subPanels[i].panel.pname
				+'</a></li>'; 
		}
	}
	str += '</ul><div class="tab-content box-body">';
	for(var i=0;i<subPanels.length;i++){
		if(0==i){
			str += '<div class="chart tab-pane active" id="tab_'+subPanels[i].panel.pid+'">'; 
		}else{
			str += '<div class="chart tab-pane" id="tab_'+subPanels[i].panel.pid+'">'; 
		}
		switch(subPanels[i].panel.ptype){
			case TYPE_LIST_ARTICLE:{
				str += list_art_info(subPanels[i]);
				break;
			}
			case TYPE_SHOW_NOTICE:{
				str += show_notice_info(subPanels[i]);
				break;
			}
			case TYPE_IMAGES:{
				str += image_info(subPanels[i]);
				break;
			}
		}
		str += '</div>';
	}
	str += '</div></div></div>';
	return str;
}
/**
 * 渲染列表文章类
 * @param data
 * @returns {String}
 */
function list_art_info(data){
	panel = data.panel;
	articles = data.articles;
	str = '<table class="table table-condensed table-hover">';
	
	for(var i=0;i<articles.length;i++){
		str += '<tr><td width="75%"><a href="article/'+articles[i].aid+'">'+articles[i].atitle+'</a></td><td class="times">'+articles[i].atime+'</td></tr>';
	}
	str += '</table>';
	return str;
}
/**
 * 渲染公告展示
 * @param data
 * @returns
 */
function show_notice_info(data){
	return data.panel.pvalue;
}
/**
 * 渲染图片轮播类
 * @param data
 */
function image_info(data){
	panel = data.panel;
	articles = data.articles;
	str = '<div id="carousel_'
		+panel.pid
		+'" class="carousel slide" data-interval="2000"><div class="carousel-inner">';
	for(var i=0;i<articles.length;i++){
		if(i == 0){
			str += '<div class="item active"><a href="'
				+articles[i].aurl
				+'"><img src="'
				+articles[i].avalue
				+'" alt="'
				+articles[i].atitle
				+'"></a></div>';
		}else{
			str += '<div class="item"><a href="'
				+articles[i].aurl
				+'"><img src="'
				+articles[i].avalue
				+'" alt="'
				+articles[i].atitle
				+'"></a></div>';
		}
	}
	str += '<a class="carousel-control left" href="#carousel_'
		+panel.pid
		+'" data-slide="prev">&lsaquo;</a>'
		+'<a class="carousel-control right" href="#carousel_'
		+panel.pid
		+'" data-slide="next">&rsaquo;</a>'
	return str;
}