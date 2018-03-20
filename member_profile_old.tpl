<!-- INCLUDE header.tpl -->
<div class="webffo-breadcrumb">
  <div class="webffo-inner">
		<ol class="breadcrumb">
      <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
			<li class="active"><!-- INCLUDE member_sections_location.tpl --></li>
		</ol>
	</div>
</div>



<div class="webffo-inner bg_white_alpha bevelbottom clearfix">
		<div class="padding-15">
      <div class="pull-left title">
  			<h4>{member_username}<!-- INCLUDE member_sections_online.tpl --></h4>
  		</div>
  		<div class="options pull-right">
  			<div class="btn-group">
  			
  				 <!-- IF settings.enable_friends AND member_is_friend == "0" -->
			  <a title="{lang:"member","add_friends"}" class="btn btn-primary trigger_tooltip" data-toggle="tooltip" data-placement="left" href="{virtual_path}{member_add_friends_link}" title="{lang:"member","friends"}"> <span class="glyphicon glyphicon-plus-sign"></span> {lang:"member","friends"}</a>
			<!-- ENDIF -->
			<!-- IF settings.enable_favorites AND member_is_self_favorite == "0" -->
			 <a title="{lang:"member","add_favorites"}" class="favorites btn btn-primary trigger_tooltip" data-toggle="tooltip" data-placement="bottom" href="{virtual_path}{member_add_favorites_link}" title="{lang:"member","add_favorites"}"> <span class="glyphicon glyphicon-star"></span> {lang:"member","add_favorites"}</a>
			<!-- ENDIF -->
			<!-- IF settings.enable_messaging -->
			 <a title="{lang:"member","send_message"}" class="message btn btn-primary trigger_tooltip" data-toggle="tooltip" data-placement="right" href="{virtual_path}{member_send_message_link}" title="{lang:"member","send_message"}"> <span class="glyphicon glyphicon-comment"></span> {lang:"member","send_message"}</a>
			<!-- ENDIF -->
  			</div>
  		</div>
      <div class="clear"></div>
      </div>
</div>


<!-- INCLUDE message.tpl -->
<!-- IF hide_content != "1" -->

<div class="webffo-inner margin-t-25 margin-b-25">
    <div class="clearfix">

  	<div class="row page_member_profile">
  
          <div class="col-lg-3 col-md-3 col-sm-4 ">
  
    					<div class="image picture_zoom  bg_white_alpha bevelbottom clearfix">
    						<!-- INCLUDE member_sections_picture.tpl -->
                          
          		  <!-- IF settings.enable_pictures AND member_total_albums AND ( !member_access_pictures OR member_access_pictures == "1" AND member_is_friend OR member_id == session.member_id ) -->
  							<!-- IF settings.enable_old_style_pictures -->
  								<div class="sidepics album_preview_pull">
  									{pictures:member_id=member_id,limit="6"}
  								</div>
  							<!-- ELSE -->
  							 <div class="container-fluid album_preview_pull">              
                	<div class="sidedata row">
  									{pictures:member_id=member_id,limit="6",albums="1"}
  								</div>
                 </div>
  							<!-- ENDIF -->
  						<!-- ENDIF -->
              <div class="padding-15 ">
                <div class="btn-group btn-group-justified">
      								<!-- IF settings.enable_gifts -->
      									<a class="btn btn-default btn-sm " href="{virtual_path}{member_send_gift_link}" title="{lang:"member","send_gift"}">
      									<span class="glyphicon glyphicon-gift"></span> {lang:"member","send_gift"}</a>
      								<!-- ENDIF -->
      								<!-- IF settings.quick_messages -->
                      	<a href="#" class="btn btn-default btn-sm " data-toggle="modal" data-target="#winkbox" title="{lang:"member","send_wink"}"><span class="glyphicon glyphicon-hand-up"></span> {lang:"member","send_wink"}</a>              
      								<!-- ENDIF -->
      								<!-- IF loggedin AND settings.enable_chat AND session.can_chat AND !member_no_chat -->
      									<!-- IF member_access_chat == "1" AND member_is_friend == "0" -->
      								  	<a href="#" class="btn btn-default btn-sm " onclick="alert('{lang:"member","chat_friends_only"}');return false;" title="{lang:"member","chat"}"><span class="glyphicon glyphicon-envelope"></span>{lang:"member","chat"}</a>
      									<!-- ELSE -->
      										<a href="#" class="btn btn-default btn-sm"  onclick="return chatInitIM({member_id},'{member_username}')" title="{lang:"member","chat"}"><span class="glyphicon glyphicon-envelope"></span> {lang:"member","chat"}</a>
      									<!-- ENDIF -->
      								<!-- ENDIF -->
                  </div>
                </div>   
          
                
    					</div>
      
        
              	<!-- IF settings.quick_messages -->
               <div class="modal fade" id="winkbox">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">{lang:"member","send_wink"}</h4>
                      </div>
                      <div class="modal-body">
  			              	<select class="select" id="quick_messages" name="quick_messages">
  											  {dropdownlist:settings.quick_messages,""}
  									  	</select>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
  							     	  <a href="#" class="btn btn-primary" onclick="send_wink({member_id},$('#quick_messages').val());return false;">{lang:"core","submit"}</a>
                      </div>
                    </div><!-- /.modal-content -->
                  </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
              	<!-- ENDIF -->
  
  							<!-- IF settings.enable_member_rating AND member_rated AND session.can_rate_members -->
  									<!-- IF member_id == session.member_id -->
  										{ratings:type="member",member_id=member_id,item_id=member_id,score=member_score,votes=member_votes,forcelocked=1}
  									<!-- ELSE -->
  										{ratings:type="member",member_id=member_id,item_id=member_id,score=member_score,votes=member_votes}
  									<!-- ENDIF -->
  
  							<!-- ENDIF -->
  		
  							<div class="member_views">{lang:"member","views"}: {member_total_views} </div>
          

          
              </div>
              
          <div class="col-lg-8 col-md-8  col-md-8 col-sm-8">
  
  						<!-- IF settings.enable_videos AND member_total_videos AND ( !member_access_videos OR member_access_videos == "1" AND member_is_friend OR member_id == session.member_id ) -->
  							<h5><a href="{virtual_path}{member_videos_link}">{lang:"member","frm_videos"} ({member_total_videos})</a></h5>
  							<div class="sidepics">
  								{videos:member_id=member_id,limit="6"}
  							</div>
  						<!-- ENDIF -->
  						<!-- IF settings.enable_friends AND session.can_view_all_friends AND member_total_friends AND ( !member_access_friends OR member_access_friends == "1" AND member_is_friend OR member_id == session.member_id ) -->
  							<h5><a href="{virtual_path}{member_friends_link}">{lang:"member","frm_friends"} ({member_total_friends})</a></h5>
  							<div class="sidepics">
  								{friends:member_id=member_id,limit="6"}
  							</div>
  						<!-- ENDIF -->
  
          
  						<div class="dataitem profile_infos single">
  
  							<div class="suboptions_wrap">
  								<div class="suboptions">
  									<ul class="nav nav-tabs nav-append-content" id="profile_tabs">
  										<!-- BEGIN profile_groups -->
  											<li class="{ifelse:rowcnt,"0","active",""}"><a id="profile_data_{rowcnt}_tab"  data-toggle="tab" href="#tab_{rowcnt}">{group_name}</a></li>
  										<!-- END profile_groups -->
  					          <!-- IF settings.enable_guestbooks AND ( !member_access_guestbook OR member_access_guestbook == "1" AND member_is_friend OR member_id == session.member_id ) -->
                        	<li class=""><a id="profile_data_guestbook_tab"  data-toggle="tab" href="#tab_guestbook">{lang:"member","comments_list"}</a></li>
    						      <!-- ENDIF -->
                      
  									</ul>
  									<div class="clear"></div>
  								</div>
  							</div>
  							<div class="clear"></div>
  
                <div class="tab-content bg_white datainfo profile">
  							<!-- BEGIN profile_groups -->
  									<div class="tab-pane   {ifelse:rowcnt,"0","active",""}"  id="tab_{rowcnt}">
                        <dl>
    										<!-- BEGIN profile_fields -->
                          <dt>{field_name}:</dt>
    											<dd>
    												<!-- IF field_value -->
    													<!-- IF field_type == "checkbox" -->
    														{break:field_value}
    													<!-- ELSEIF field_type == "birthday" -->
    														{field_value_years}
    													<!-- ELSE -->
    														{field_value}
    													<!-- ENDIF -->
    												<!-- ELSE -->
    													{lang:"core","user_field_none"}
    												<!-- ENDIF -->
    												<div class="clear"></div>
    											</dd>
    										<!-- END profile_fields -->
    									</dl>
  								</div>
  							<!-- END profile_groups -->
                                
                  
  						<!-- IF settings.enable_guestbooks AND ( !member_access_guestbook OR member_access_guestbook == "1" AND member_is_friend OR member_id == session.member_id ) -->
  						  <div class="tab-pane guestbook_pane" id="tab_guestbook">
                  {guestbooks:member_id=member_id,limit=6,comments_form=1,cache_time=0}
  						  </div>
              <!-- ENDIF -->
              
                
                </div>
  						</div>  
              
              <div class="pull-right">
            		<!-- IF settings.enable_blocked_members -->
            			 <a href="#"  onclick="javascript:confirmLink('{lang:"member","block?"}', '{virtual_path}{member_block_link}');return false;" title="{lang:"member","block"}">{lang:"member","block"}</a>
            		<!-- ENDIF -->  
                <!-- IF settings.enable_reports AND settings.enable_profile_reports AND session.can_submit_reports -->
          					{reports:type="profile",member_id=member_id,item_id=member_id}
          		  <!-- ENDIF -->      
              </div>
                 
            {activities:member_id=member_id,timeframe="45",limit="20",actions="friends|blogs|albums|pictures|audios|events|videos|gifts|guestbooks|comments",template="ext.activities.tpl"}
         
  		  </div><!-- von col 9 -->
        <div class="col-lg-1">
            <div style="width:100%;margin-top:38px;" class="btn-group-vertical">
    				 <!-- INCLUDE member_sections_links.tpl -->
             </div> 
        </div> 
        

  		</div>  
  	</div>
	</div>
</div>

<!-- ENDIF -->

<!-- INCLUDE footer.tpl -->
