<!-- BEGIN search_profiles -->
	<item>
		<title>{htmlentities:member_username}</title>
		<pubDate><!-- IF member_last_visit_rss -->{member_last_visit_rss}<!-- ELSE -->{member_join_date_rss}<!-- ENDIF --></pubDate>
		<author>{htmlentities:member_username}</author>
		<link>{top.virtual_path}{htmlentities:member_profile_link}</link>
		<description>
			<!-- IF member_picture AND member_picture_active -->
				&lt;img src="{top.virtual_pic_path}{member_media_path}{member_picture}" alt="" align="left" border="0" /&gt;
			<!-- ENDIF -->
			{lang:"core","userinfo_age"}: {htmlentities:profile_field_age_value_years}&lt;br /&gt;
			{lang:"core","userinfo_gender"}: {htmlentities:profile_field_gender1_value}&lt;br /&gt;
			{lang:"core","userinfo_seeking"}: {htmlentities:profile_field_gender2_value}&lt;br /&gt;
			{lang:"core","userinfo_location"}: {htmlentities:profile_field_country_value}, {htmlentities:profile_field_city_value}
		</description>
		<guid>{top.virtual_path}{htmlentities:member_profile_link}</guid>
	</item>
<!-- END search_profiles -->