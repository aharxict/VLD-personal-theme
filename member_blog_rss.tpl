<!-- BEGIN blog_entries -->
	<item>
		<title>{entry_title}</title>
		<pubDate>{entry_post_date_rss}</pubDate>
		<author>{htmlentities:top.member_username}</author>
		<link>{top.virtual_path}{htmlentities:entry_link}</link>
		<description>
			<!-- IF entry_picture_preview -->
				&lt;img src="{top.virtual_pic_path}{member_media_path}{entry_picture_preview}" alt="" align="left" border="0" /&gt;
			<!-- ENDIF -->
			{htmlentities:entry_body}
		</description>
		<guid>{top.virtual_path}{htmlentities:entry_link}</guid>
	</item>
<!-- END blog_entries -->