PANEL_TYPES = ['列表文章类','公告展示类','图片轮播类','文章标题滚动展示类','列表链接类','iframe内嵌类','tab聚合类','自由定制类'];
function genTimes(){
	times = $('.times');
	for(i =0;i<times.length;i++){
		$(times[i]).html(timstamp2date(Number($(times[i]).html())));
	}
}
function timstamp2date(unixtime){
	return new Date(unixtime).toLocaleDateString().replace('/','-').replace('/','-');
}