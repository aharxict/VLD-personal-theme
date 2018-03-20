<!-- BEGIN guestbook_entries -->
	<item>
		<title>{htmlentities:member_username}</title>
		<pubDate>{entry_post_date_rss}</pubDate>
		<author>{htmlentities:member_username}</author>
		<link>{top.virtual_path}{htmlentities:entry_link}</link>
		<description>
			<!-- IF member_picture AND member_picture_active -->
				&lt;img src="{top.virtual_pic_path}{member_media_path}{member_picture}" alt="" align="left" border="0" /&gt;
			<!-- ENDIF -->
			{htmlentities:entry_body}
		</description>
		<guid>{top.virtual_path}{htmlentities:entry_link}</guid>
	</item>
<!-- END guestbook_entries -->