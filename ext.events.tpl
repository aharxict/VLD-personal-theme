<!-- IF ext_events -->
	<div class="typepage">
		<div class="dataitem single previewbox">
			<!-- BEGIN ext_events -->
				<div class="image" style="text-align:center">
					<!-- IF event_picture_preview AND event_picture_active -->
						<a href="{top.virtual_path}{event_details_link}"><img src="{top.virtual_pic_path}{member_media_path}{event_picture_preview}" alt="" border="0" /></a>
					<!-- ELSE -->
						<a href="{top.virtual_path}{event_details_link}"><img src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>
					<!-- ENDIF --><br />
				</div>
				<!-- IF rowlast OR rowcnt mod "5" == "4" --><div class="clear"></div><!-- ENDIF -->
			<!-- END ext_events -->
		</div>
	</div>
	<div class="clear"></div>
<!-- ENDIF -->
