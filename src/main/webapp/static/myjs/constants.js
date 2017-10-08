PANEL_TYPES = ['列表文章类','公告展示类','图片轮播类','文章标题滚动展示类','列表链接类','iframe内嵌类','tab聚合类','自由定制类'];
TYPE_LIST_ARTICLE = 0;
TYPE_SHOW_NOTICE = 1;
TYPE_IMAGES = 2;
TYPE_TITLE_ROLL = 3;
TYPE_LIST_LINK = 4;
TYPE_IFRAME = 5;
TYPE_TABS = 6;
TYPE_SELF = 7;
function genTimes(){
	times = $('.times');
	for(i =0;i<times.length;i++){
		$(times[i]).html(timstamp2date(Number($(times[i]).html())));
	}
}
function timstamp2date(unixtime){
	return new Date(unixtime).toLocaleDateString().replace('/','-').replace('/','-');
}
function getPanelHeight(){
	width = window.innerWidth;
	return genPanelHeight(width);
}
function genPanelHeight(width){
	return parseInt(width/5);
}