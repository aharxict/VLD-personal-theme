<!-- IF ext_friends -->
	<!-- BEGIN ext_friends -->
	
			<div class="nr_{rowcnt} friendlist_item dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
				
        <div class="friendlist_item clearfix">
						<div class="friendlist_image pull-left">
							<!-- INCLUDE member_sections_picture.tpl -->
						</div>
													
						<div class="datainfo">
							<!-- INCLUDE member_sections_name.tpl -->
						</div>
            <div class="member_age_loc padding-5 align_center nowrap">	<!-- IF settings.show_online AND member_online --><span class="online_dot"></span><!-- ENDIF --> {member_username}</div>
				</div>	
			</div>
  
	<!-- END ext_friends -->
<!-- ENDIF -->