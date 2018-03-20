<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li>  <a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>       
                <!-- IF settings.enable_old_style_pictures == "0" -->					
                <li>{anchor:url1="account/albums/",url2="index.php?m=account_albums",name="pictures|frm_albums"}</li>					
                <li>  <a href="{virtual_path}{pictures_album_link}">{lang:"pictures","frm_editalbum"}</a></li>				
                <!-- ENDIF -->				
                <li>  <a href="{virtual_path}{pictures_view_link}">{lang:"pictures","frm_pictures"}</a></li>				
                <li> <a href="{virtual_path}{pictures_edit_link}">{lang:"pictures","frm_editpicture"}</a> </li>				
                <li class="active"> <a href="{virtual_path}{pictures_thumbnail_link}">{lang:"pictures","frm_thumbnail"}</a>   </li>		
            </ol>    
        </div>    
        <div class="col-lg-12 profileactions btn-group">				
                <a class="btn btn-primary active" href="{virtual_path}{pictures_edit_link}">{lang:"pictures","opt_editpicture"}</a>				
                <a class="btn btn-primary " href="{virtual_path}{pictures_comments_link}">{lang:"pictures","opt_viewcomments"}</a>				
                <a class="btn btn-primary " href="{virtual_path}{pictures_add_link}">{lang:"pictures","opt_addpicture"}</a>      
        </div>                     
        <div class="col-sm-9">              
            <div class="well">
                <h4 class="pagetitle">{lang:"pictures","app_thumbnail"}</h4>    		
         
                <div class="webffo-inner margin-t-25 margin-b-25">  
                    <div class="bg_white_alpha bevelbottom clearfix page_account_pictures_thumbnail">    
                        <!-- IF hide_content != "1" -->		
                        <div class="">			
                            <div class="single">				
                             					
                                  	<div class="image">								
                                                <div style="width: {settings.thumbnail_width}px; height: {settings.thumbnail_height}px; overflow:hidden; border: 1px solid #000;">									
                                                    <img src="{virtual_pic_path}{session.media_path}{picture_filename}" border="0" id="thumb_preview" /><br />								
                                                </div>							
                                            </div>					
                                            <div class="data margin-t-15">								
                                                <img src="{virtual_pic_path}{session.media_path}{picture_filename}" border="0" id="thumb_cropbox" />							
                                            </div>							
                                            <div class="form">								
                                                <form name="edit" method="post" action="">									
                                                    <div class="fieldset margin-t-15">										
                                                        <dl class="fieldset">											
                                                            <dd class="submit">
                                                                <input class="submit btn btn-primary" type="submit" name="submit_regular" value="{lang:"pictures","submit"}" />
                                                            </dd>										
                                                        </dl>									
                                                    </div>									
                                                    <input type="hidden" name="issubmit" value="1" />									
                                                    <input type="hidden" size="4" id="thumb_x" name="thumb_x" />									
                                                    <input type="hidden" size="4" id="thumb_y" name="thumb_y" />									
                                                    <input type="hidden" size="4" id="thumb_w" name="thumb_w" />									
                                                    <input type="hidden" size="4" id="thumb_h" name="thumb_h" />								
                                                </form>							
                                            </div>						            													
						          		            
                              			
                            </div>		
                        </div>		
                        <div class="clear">  </div>	
                     </div>	
                    </div>	
      
                <!-- ENDIF -->  
            </div>
        </div>  

        <div class="col-sm-3">
            <!-- INCLUDE webffo_account_sidebar.tpl -->
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>

  <script type="text/javascript" language="javascript">
		$(document).ready(function(){
			jQuery('#thumb_cropbox').Jcrop({
				onChange: showPreview,
				onSelect: showPreview,
				bgOpacity: .8,
				minSize: [ {settings.thumbnail_width}, {settings.thumbnail_height} ],
	            setSelect: [ 10, 10, {settings.thumbnail_width}, {settings.thumbnail_height} ],
				aspectRatio: {picture_ratio}
			});
		});
		function showPreview(coords)
		{
			if (parseInt(coords.w) > 0)
			{
				var rx = {settings.thumbnail_width} / coords.w;
				var ry = {settings.thumbnail_height} / coords.h;
				jQuery('#thumb_preview').css({
					width: Math.round(rx * {picture_width}) + 'px',
					height: Math.round(ry * {picture_height}) + 'px',
					marginLeft: '-' + Math.round(rx * coords.x) + 'px',
					marginTop: '-' + Math.round(ry * coords.y) + 'px'
				});
			}
				$('#thumb_x').val(coords.x);
				$('#thumb_y').val(coords.y);
				$('#thumb_w').val(coords.w);
				$('#thumb_h').val(coords.h);
		}
	</script>
<!-- INCLUDE footer.tpl -->