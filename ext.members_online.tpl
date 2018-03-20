<!-- IF ext_members -->
	<div class="sidebox_wrap">
		<h5><span class="badge">{lang:"core","home_latest_visitors"}</span></h5>
		<div class="sidebox">
			<div class="memberslist clearfix">
				<!-- BEGIN ext_members -->
					<div class="image">
						<!-- IF member_picture AND member_picture_active -->
							<a href="{top.virtual_path}{member_profile_link}"><img src="{top.virtual_pic_path}{member_media_path}{member_picture}" alt="" border="0" /><br/></a>
						<!-- ELSE -->
							<a href="{top.virtual_path}{member_profile_link}"><img src="{top.virtual_tpl_path}{session.template}/media/user_picture_none.gif" alt="" border="0" /><br/></a>
						<!-- ENDIF -->
					</div>
				<!-- END ext_members -->
				<div class="clear"></div>
			</div>
		</div>
	</div>
<!-- ENDIF -->