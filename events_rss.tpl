<!-- BEGIN events_entries -->
	<item>
		<title>{event_name} - {event_field_place_value}</title>
		<pubDate>{event_start_date_rss}</pubDate>
		<author>{htmlentities:member_username}</author>
		<link>{top.virtual_path}{htmlentities:event_details_link}</link>
		<description>
			<!-- IF event_picture_preview AND event_picture_active -->
				&lt;img src="{top.virtual_pic_path}{member_media_path}{event_picture_preview}" alt="" align="left" border="0" /&gt;
			<!-- ENDIF -->
			{htmlentities:event_field_summary_value}
		</description>
		<guid>{top.virtual_path}{htmlentities:event_details_link}</guid>
	</item>
<!-- END events_entries -->