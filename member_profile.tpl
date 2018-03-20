<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">         
        <div class="col-sm-12">
            <div class="webffo-breadcrumb">
                <div class="webffo-inner">
                    <ol class="breadcrumb">
                        <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                        <li class="active"><!-- INCLUDE member_sections_location.tpl --></li>
                    </ol>
                </div>
            </div>
        </div>


        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
                        
        <!-- IF hide_content != "1" -->

        <div class="col-sm-12">
            <div id="prof_topimg" class=" bg-primary relative margin-b-15">
                    <div id="prof_leftimg">
                        <div class="profimg round_img">
                            <!-- INCLUDE member_sections_picture_lightbox.tpl -->
                        </div>
                    </div>
                         <div id="prof_userdata">
                             <div class="vt_prof_name">  {member_username}, {profile_field_age_value_years}</div>
                             <div class="vt_prof_from">
                             <!-- IF profile_field_city_value -->{profile_field_city_value} <!-- ENDIF -->
                             <!-- IF profile_field_city_value AND profile_field_country_value -->, <!-- ENDIF -->
                             <!-- IF profile_field_country_value -->{profile_field_country_value} <!-- ENDIF -->
                             </div>
                             
                              <div class="prof_ratings">
                                    <!-- IF settings.enable_member_rating AND member_rated AND session.can_rate_members -->
                                    <!-- IF member_id == session.member_id -->
                                    {ratings:type="member",member_id=member_id,item_id=member_id,score=member_score,votes=member_votes,forcelocked=1}
                                    <!-- ELSE -->
                                    {ratings:type="member",member_id=member_id,item_id=member_id,score=member_score,votes=member_votes}
                                    <!-- ENDIF -->
                                    <!-- ENDIF -->
                                </div>
                             
                         </div>
                         
                    <div id="profile_btns" class="actionbuttons margin-b-15 btn-group">
                         <!-- INCLUDE member_sections_links.tpl -->
                    </div>
                    
                    <div class="hidden-xs">
                      <!-- IF session.member_id == top.member_id --><button onclick="return bigPicture()" class="btn_bigpict btn-xs btn btn-primary"><span class="glyphicon glyphicon-camera"></span></button> <!-- ENDIF -->
                           <div style="background-image:url({vldthemes:a="getBigPicture",member_id=member_id,media_path=member_media_path})" id="bigpicture"></div>
                    </div>
            </div>
       </div>

     

            <div class="col-sm-9 col-xs-12 ">
                              
              <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">{member_username}</h4>
                 </div>
                 <div class="panel-body">
                     
                    
     
                    <!-- BEGIN profile_groups -->
                    <!-- IF rowcnt > "0" -->
                    <div class="margin-t-15 clearfix"></div>
                    <!-- ENDIF -->
                         <h4 data-id="{group_id}" class="title margin-t-0 member_profilegroupname gnr_{rowcnt}"> {group_name} </h4>
                         <div  id="tab_{rowcnt}" class="clearfix xpanel-collapse xcollapse ">
                          
                                <!-- BEGIN profile_fields -->
                                  <div class="group_el_{parent.group_id} field_{field_label} member_profilefield  <!-- IF rownum == "2" --> <!-- ENDIF -->">
                                     <span class="prof_fieldname">{field_name}:</span>
                                     <span class="">
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
                                     </span>
                          
                                      </div>
                                    <!-- END profile_fields -->
                            </div>
              
 
                    <!-- END profile_groups -->
                </div>              
              </div>
              
              
                <!-- IF settings.enable_guestbooks AND ( !member_access_guestbook OR member_access_guestbook == "1" AND member_is_friend OR member_id == session.member_id ) -->
                   {guestbooks:member_id=member_id,limit=6,comments_form=1,cache_time=0}  
                <!-- ENDIF --> 
               
            </div>
            
            
             <div class="col-sm-3 col-xs-12 prof_sidebar">

               <?php 
                vldThemes::getCompatibility($_obj);
               ?>

               
               {vldthemes:a="getFakecheck",member_id=member_id,media_path=member_media_path}
              
               <!-- IF member_id != session.member_id -->         
                <div class="panel panel-default ">
                    <div class="panel-heading">{member_username}</div>
                    <ul class="list-group">
                    
  			
                        <!-- IF settings.enable_friends AND member_is_friend == "0" -->
                        <li class="list-group-item">  
                              <a title="{lang:"member","add_friends"}" class="" href="{virtual_path}{member_add_friends_link}" title="{lang:"member","friends"}"> <span class="glyphicon glyphicon-plus-sign"></span> {lang:"member","friends"}</a>
                        </li>
                        <!-- ENDIF -->
                        <!-- IF settings.enable_favorites AND member_is_self_favorite == "0" -->
                        <li class="list-group-item">
                              <a title="{lang:"member","add_favorites"}" class="" href="{virtual_path}{member_add_favorites_link}" title="{lang:"member","add_favorites"}"> <span class="glyphicon glyphicon-star"></span> {lang:"member","add_favorites"}</a>
                        </li>
                        <!-- ENDIF -->

                        <!-- IF settings.enable_messaging -->
                        <li class="hidden-xs hidden-sm list-group-item">
                            <a title="{lang:"member","send_message"}" href="#" onclick="return showConversations({member_id})" title="{lang:"member","send_message"}"> <span class="glyphicon glyphicon-envelope"></span> {lang:"member","send_message"}</a>
                        </li>
                        
                        <li class="hidden-lg hidden-md list-group-item">
                            <a title="{lang:"member","send_message"}" href="{virtual_path}{member_send_message_link}" title="{lang:"member","send_message"}"> <span class="glyphicon glyphicon-envelope"></span> {lang:"member","send_message"}</a>
                        </li>
                        <!-- ENDIF -->
                        <!-- IF settings.enable_gifts -->
                        <li class="list-group-item">
                            <a class=" " href="{virtual_path}{member_send_gift_link}" title="{lang:"member","send_gift"}">
                                <span class="glyphicon glyphicon-gift"></span> {lang:"member","send_gift"}
                            </a>
                        </li>
                        <!-- ENDIF -->
                        <!-- IF settings.quick_messages -->
                        <li class="list-group-item">
                            <a href="#" class=" " data-toggle="modal" data-target="#winkbox" title="{lang:"member","send_wink"}"><span class="glyphicon glyphicon-hand-up"></span> {lang:"member","send_wink"}</a>              
                        </li>
                        <!-- ENDIF -->

                        <!-- IF loggedin AND settings.enable_chat AND session.can_chat AND !member_no_chat -->
                        <!-- IF member_access_chat == "1" AND member_is_friend == "0" -->
                        <li class="list-group-item">
                            <a href="#" class=" " onclick="alert('{lang:"member","chat_friends_only"}');
                                    return false;" title="{lang:"member","chat"}"><span class="glyphicon glyphicon-envelope"></span>{lang:"member","chat"}</a>
                        </li>
                        <!-- ELSE -->
                        <li class="list-group-item">
                            <a href="#" class=""  onclick="return chatInitIM({member_id}, '{member_username}')" title="{lang:"member","chat"}"><span class="glyphicon glyphicon-comment"></span> {lang:"member","chat"}</a>
                        </li>
                        <!-- ENDIF -->
                        <!-- ENDIF -->                      
                        <!-- IF settings.enable_blocked_members -->
                        <li class="list-group-item">
                            <a href="#" onclick="javascript:confirmLink('{lang:"member","block?"}', '{virtual_path}{member_block_link}');
                                    return false;" title="{lang:"member","block"}"><span class="glyphicon glyphicon-minus-sign"></span> {lang:"member","block"}</a>
                        </li>
                        <!-- ENDIF -->  


                    </ul>
                </div>
                <!-- ELSE -->
                
                     <!-- INCLUDE webffo_account_sidebar.tpl -->
                
                <!-- ENDIF -->
                

                
                <div class="panel panel-default ">
                    <div class="panel-heading">{vldthemes:a="lang",key="profile_stats"}</div>
                    <ul class="list-group">
                         <!-- IF vts_mod_activity_enabled -->
                         <li class="list-group-item clearfix">
                         {vldthemes:a="lang",key="activity_level"} <span class="pull-right label label-warning">{vldthemes:a="getLevel",member_id=member_id}</span>
                        </li>
                        <!-- ENDIF -->
                        <li class="list-group-item"><span class="pull-right">{totalviews}</span>{lang:"member","views"}</li>
                        <li class="list-group-item"><span class="pull-right">{member_last_visit}</span>{vldthemes:a="lang",key="lastvisit"}</li>
                        <li class="list-group-item"><span class="pull-right">{member_join_date}</span>{vldthemes:a="lang",key="joindate"}</li>
                    </ul>
                </div>   
                
                
                <div class="panel panel-default ">
                    <div class="panel-heading">{vldthemes:a="lang",key="horoscope"}</div>
                    <img class="center-block img-responsive" src="{top.virtual_tpl_path}{session.template}/images/zodiac_{vldthemes:a="zodiac",member_id=member_id}.png">
                </div>

                <!-- IF settings.enable_reports AND settings.enable_profile_reports AND session.can_submit_reports -->
                <div class="hidden-xs margin-t-15">
                    {reports:type="profile",member_id=member_id,item_id=member_id}
                </div>  
                <!-- ENDIF -->   

                <!-- IF settings.quick_messages -->
                <div class="modal fade" id="winkbox">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">{lang:"member","send_wink"}</h4>
                            </div>
                            <div class="modal-body">
                                <select class="select form-control" id="quick_messages" name="quick_messages">
                                    {dropdownlist:settings.quick_messages,""}
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
                                <a href="#" class="btn btn-primary" onclick="send_wink({member_id}, $('#quick_messages').val());
                                        return false;">{lang:"core","submit"}</a>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
                <!-- ENDIF -->

            </div>
            
            <div class="col-lg-2 col-xs-12 visible-xs">
                <div style="width:100%" class="margin-t-15 margin-b-15 btn-group-vertical">
                    <!-- INCLUDE member_sections_links.tpl -->
                </div> 
            </div> 
 
        </div>  
    </div>


<script type="text/javascript">
  $(function(){
    if($('body').width() < 800) {
      $('#profile_btns').addClass('btn-group-vertical');
    }
  });
</script>

<!-- ENDIF -->
</div>
</div>

<!-- INCLUDE footer.tpl -->