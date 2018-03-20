<!-- IF ext_videos -->
	<!-- BEGIN ext_videos -->
		<div class="image" style="text-align:center">
			<!-- IF video_type -->
				<a href="{top.virtual_path}{video_link}"><img src="{metavideo:video_id=meta_id,type=video_type,media="preview",preview=video_preview}" alt="" border="0" /></a>
			<!-- ELSE -->
				<!-- IF video_preview -->
					<a href="{top.virtual_path}{video_link}"><img src="{top.virtual_pic_path}{member_media_path}{video_preview}" alt="" border="0" /></a>
				<!-- ELSE -->
					<a href="{top.virtual_path}{video_link}"><img src="{top.virtual_tpl_path}{session.template}/media/video_picture_none.gif" alt="" border="0" /></a>
				<!-- ENDIF -->
			<!-- ENDIF -->
		</div>
	<!-- END ext_videos -->
	<div class="clear"></div>
<!-- ENDIF -->
