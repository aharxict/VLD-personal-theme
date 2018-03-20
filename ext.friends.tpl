<!-- IF ext_friends -->
	<!-- BEGIN ext_friends -->
	
			<div class="col-lg-1 nr_{rowcnt} col-md-2 <!-- IF rowcnt > '4' --> hidden-md  <!-- ENDIF -->  user_profile_padding  col-xs-4 col-sm-2 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
				<div class="profile_wrapper margin-b-15 bg_white_alpha bevelbottom clearfix">
						<div class="image">
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