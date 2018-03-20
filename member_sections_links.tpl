
	<a href="{virtual_path}{member_profile_link}" <!-- IF active_module == "member_profile" -->class="btn btn-sm btn-default active"<!-- ELSE --> class="btn btn-sm btn-default" <!-- ENDIF -->><i class="glyphicon glyphicon-user"></i> {lang:"member","frm_profile"}</a>
	<!-- IF member_group_id != settings.canceled_member_group -->
		<!-- IF settings.enable_pictures AND member_total_albums AND ( !member_access_pictures OR member_access_pictures == "1" AND member_is_friend OR member_id == session.member_id ) -->
			<a href="{virtual_path}{member_pictures_link}" <!-- IF active_module == "member_albums" OR active_module == "member_pictures" OR active_module == "member_pictures_view" -->class="btn btn-sm btn-default active"<!-- ELSE -->class="btn btn-sm btn-default"<!-- ENDIF -->><i class="glyphicon glyphicon-picture"></i> {lang:"member","frm_pictures"}</a></li>
		<!-- ENDIF -->
		<!-- IF settings.enable_videos AND member_total_videos AND ( !member_access_videos OR member_access_videos == "1" AND member_is_friend OR member_id == session.member_id ) -->
			<a href="{virtual_path}{member_videos_link}" <!-- IF active_module == "member_videos" OR active_module == "member_videos_view" -->class="btn btn-sm btn-default active"<!-- ELSE -->class="btn btn-sm btn-default"<!-- ENDIF -->><i class="glyphicon glyphicon-film"></i> {lang:"member","frm_videos"} ({member_total_videos})</a></li>
		<!-- ENDIF -->
		<!-- IF settings.enable_audio AND member_total_music AND ( !member_access_music OR member_access_music == "1" AND member_is_friend OR member_id == session.member_id ) -->
			<a href="{virtual_path}{member_audio_link}" <!-- IF active_module == "member_audio" -->class="btn btn-sm btn-default active"<!-- ELSE -->class="btn btn-sm btn-default"<!-- ENDIF -->><i class="glyphicon glyphicon-headphones"></i> {lang:"member","frm_audio"} ({member_total_music})</a></li>
		<!-- ENDIF -->
		<!-- IF settings.enable_friends AND session.can_view_all_friends AND member_total_friends AND ( !member_access_friends OR member_access_friends == "1" AND member_is_friend OR member_id == session.member_id ) -->
			<a href="{virtual_path}{member_friends_link}" <!-- IF active_module == "member_friends" -->class="btn btn-sm btn-default active"<!-- ELSE -->class="btn btn-sm btn-default"<!-- ENDIF -->><i class="glyphicon glyphicon-asterisk"></i> {lang:"member","frm_friends"} ({member_total_friends})</a></li>
		<!-- ENDIF -->
		<!-- IF settings.enable_events AND member_total_events -->
			<a href="{virtual_path}{member_events_link}" <!-- IF active_module == "member_events" OR active_module == "member_events_joined" -->class="btn btn-sm btn-default active"<!-- ELSE -->class="btn btn-sm btn-default"<!-- ENDIF -->><i class="glyphicon glyphicon-calendar"></i> {lang:"member","frm_events"} ({member_total_events})</a></li>
		<!-- ENDIF -->
		<!-- IF settings.enable_gifts AND member_total_gifts -->
			<a href="{virtual_path}{member_gifts_link}" <!-- IF active_module == "member_gifts" -->class="active btn btn-sm btn-default "<!-- ELSE -->class="btn btn-sm btn-default" <!-- ENDIF -->><i class="glyphicon glyphicon-gift"></i> {lang:"member","frm_gifts"} ({member_total_gifts})</a></li>
		<!-- ENDIF -->
		<!-- IF settings.enable_blogs AND member_total_blogs AND ( !member_access_blog OR member_access_blog == "1" AND member_is_friend OR member_id == session.member_id ) -->
			<a href="{virtual_path}{member_blog_link}" <!-- IF active_module == "member_blog" OR active_module == "member_blog_entry" -->class="btn btn-sm btn-default active"<!-- ELSE -->class="btn btn-sm btn-default" <!-- ENDIF -->><i class="glyphicon glyphicon-align-left"></i> {lang:"member","frm_blog"} ({member_total_blogs})</a></li>
		<!-- ENDIF -->
		<!-- IF settings.enable_guestbooks  AND ( !member_access_guestbook OR member_access_guestbook == "1" AND member_is_friend OR member_id == session.member_id ) -->
			<a href="{virtual_path}{member_guestbook_link}" <!-- IF active_module == "member_guestbook" -->class="active btn btn-sm btn-default" <!-- ELSE -->class="btn btn-sm btn-default" <!-- ENDIF -->><i class="glyphicon glyphicon-book"></i> {lang:"member","frm_guestbook"} <!-- IF member_total_guestbooks > "0" --> ({member_total_guestbooks}) <!-- ENDIF --></a>
		<!-- ENDIF -->
	<!-- ENDIF -->
  
