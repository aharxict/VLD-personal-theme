<!-- IF ext_albums -->
	<div class="member_album_preview clearfix">
		<!-- BEGIN ext_albums -->	
					<div class="preview_image  album_preview_pull preview_{rowcnt} ">
						<!-- IF album_preview AND album_picture_active -->
							<!-- IF album_picture_adult == "0" OR album_picture_adult AND session.can_view_adult_images AND session.showadult -->
								<a href="{top.virtual_path}{album_pictures_link}"><img  class="img-responsive img-full" src="{top.virtual_pic_path}{member_media_path}{album_preview}" alt="" border="0" /></a>
							<!-- ELSE -->
								<a href="{top.virtual_path}{album_pictures_link}"><img class="img-responsive img-full" src="{top.virtual_tpl_path}{session.template}/media/user_picture_adult.gif" alt="" border="0" /></a>
							<!-- ENDIF -->
						<!-- ELSE -->
							<a href="{top.virtual_path}{album_pictures_link}"><img class="img-responsive img-full"src="{top.virtual_tpl_path}{session.template}/media/album_picture_none.gif" border="0" /></a>
						<!-- ENDIF -->
					</div>
			<!-- <a href="{top.virtual_path}{album_pictures_link}" class="album_counter"><span><i class="glyphicon glyphicon-camera"></i> {album_total_pictures}</span></a> -->
		<!-- END ext_albums -->
	</div>
<!-- ENDIF -->
