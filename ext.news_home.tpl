<!-- IF ext_news -->
		<!-- BEGIN ext_news -->
			<div class="list-group-item dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
        <a href="{top.virtual_path}{news_link}" title="{trim:news_body,100}">{news_title} </a><small>{trim:news_body,30}</small>							
			</div>
		<!-- END ext_news -->
<!-- ENDIF -->
