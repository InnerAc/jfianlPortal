function addArt(){
	avalue = editor.txt.html();
	$('#avalue').val(avalue);
	$('#iform').submit();
}
function addImg(){
	$('#iform').submit();
}
function updateArt(){
	avalue = editor.txt.html();
	$('#avalue').val(avalue);
	$('#iform').submit();
}
function removeFile(fid){
	$.ajax({
		type: "POST",
		url: 'admin/article/removeFile',
		dataType: "json",
		data: {fid:fid},
		success:function(data){
			if(data.statu == 200){
				alert('删除成功');
				$('#file_'+fid).remove();
			}else{
				alert(data.msg);
			}
		}
	});
}