<!-- BEGIN news_obj -->
	<item>
		<title>{news_title}</title>
		<pubDate>{news_date_rss}</pubDate>
		<link>{top.virtual_path}{htmlentities:news_link}</link>
		<description>
			<!-- IF news_picture -->
				&lt;img src="{top.virtual_pic_path}{news_picture}" alt="" align="left" border="0" /&gt;
			<!-- ENDIF -->
			{htmlentities:news_body}
		</description>
		<guid>{top.virtual_path}{htmlentities:news_link}</guid>
	</item>
<!-- END news_obj -->