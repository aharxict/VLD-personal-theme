<!-- INCLUDE header.tpl -->

<div class="webffo-breadcrumb">
  <div class="webffo-inner">
		<ol class="breadcrumb">
        <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
	      <li>{anchor:url1="account/home/",url2="index.php?m=account_home",name="photo|frm_profile"}</li>
				<li class="active">{anchor:url1="account/photo/",url2="index.php?m=account_photo",name="photo|frm_photo"}</li>
			</ul>
		</div>
</div>
  
<!-- INCLUDE message.tpl -->


<div class="webffo-inner bg_white_alpha bevelbottom clearfix">
		<div class="padding-15 clearfix">
       <div class="pull-left title">
  			 <h4>{lang:"photo","app_photo"}</h4>  
  		 </div>
                 
       <div class="pull-right">    
          <div class="btn-group">
             {anchor:url1="account/home/",url2="index.php?m=account_home",name="photo|opt_home",class=" btn btn-primary"}
    				 {anchor:url1="account/profile/",url2="index.php?m=account_profile",name="photo|opt_profile",class="active btn btn-primary"}
    				 {anchor:url1="account/photo/",url2="index.php?m=account_photo",name="photo|opt_photo",class="active btn btn-primary"}
          </div>		
      </div>

       <div class="pull-right margin-r-15">    
          <div class="">{lang:"photo","profile_pct"} {session.completepct}% </div>
          <div class="progress progress-striped">
            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{session.completepct}" aria-valuemin="0" aria-valuemax="100" style="width:{session.completepct}%">
              <span class="sr-only">{messages_pct}% </span>
             </div>
          </div>		
      </div>
     
     </div> 
       
</div>

<div class="webffo-inner margin-t-25 margin-b-25">
  <div class="bg_white_alpha bevelbottom clearfix page_account_photo_thumbnail">
    <!-- IF hide_content != "1" -->

		<div class="padding-15">
			<div class="single">
				<table class="plain thumbnail_table">
					<tr>
		         <td class="data">
							<div class="data">
								<img class="img-responsive" src="{virtual_pic_path}{session.media_path}{photo_filename_large}" border="0" id="thumb_cropbox" alt="" />
							</div>
							<div class="form">
								<form name="edit" method="post" action="">
									<div class="fieldset margin-t-15">
										<dl class="fieldset">
											<dd class="submit"><input class="submit btn btn-primary" type="submit" name="submit_regular" value="{lang:"photo","submit"}" /></dd>
										</dl>                                    
									</div>
									<input type="hidden" name="issubmit" value="1" />
									<input type="hidden" size="4" id="thumb_x" name="thumb_x" />
									<input type="hidden" size="4" id="thumb_y" name="thumb_y" />
									<input type="hidden" size="4" id="thumb_w" name="thumb_w" />
									<input type="hidden" size="4" id="thumb_h" name="thumb_h" />
								</form>
							</div>
						</td>
						<td>
							<div class="image">
								<div style="width: {settings.thumbnail_photo_width}px; height: {settings.thumbnail_photo_height}px; overflow:hidden; border: 1px solid #000;">
									<img src="{virtual_pic_path}{session.media_path}{photo_filename_large}" border="0" id="thumb_preview" alt="" /><br />
								</div>
							</div>
						</td>     
		       </tr>
		   </table>
			</div>
		</div>
		<div class="clear"></div>

	</div>

	<script type="text/javascript" language="javascript">
		$(document).ready(function(){
			jQuery('#thumb_cropbox').Jcrop({
				onChange: showPreview,
				onSelect: showPreview,
				bgOpacity: .8,
				minSize: [ {settings.thumbnail_photo_width}, {settings.thumbnail_photo_height} ],
	            setSelect: [ 10, 10, {settings.thumbnail_photo_width}, {settings.thumbnail_photo_height} ],
				aspectRatio: {photo_ratio}
			});
		});
		function showPreview(coords)
		{
			if (parseInt(coords.w) > 0)
			{
				var rx = {settings.thumbnail_width} / coords.w;
				var ry = {settings.thumbnail_height} / coords.h;

				jQuery('#thumb_preview').css({
					width: Math.round(rx * {photo_width}) + 'px',
					height: Math.round(ry * {photo_height}) + 'px',
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

<!-- ENDIF -->
   </div>
</div>  
<!-- INCLUDE footer.tpl -->
