<!-- IF ext_pictures -->
	<!-- BEGIN ext_pictures -->
		<div class="image">
			<!-- IF picture_adult == "0" OR picture_adult AND session.can_view_adult_images AND session.showadult -->
				<a href="{top.virtual_path}{picture_link}"><img src="{top.virtual_pic_path}{member_media_path}{picture_preview}" alt="" border="0" /></a>
			<!-- ELSE -->
				<a href="{top.virtual_path}{picture_link}"><img src="{top.virtual_tpl_path}{session.template}/media/user_picture_adult.gif" alt="" border="0" /></a>
			<!-- ENDIF -->
		</div>
	<!-- END ext_pictures -->
	<div class="clear"></div>
<!-- ENDIF -->
