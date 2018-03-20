<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
       <div class="col-lg-12">              
          <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li ><a href="{virtual_path}{member_videos_link}">{lang:"member","frm_videos"}</a></li>	
                <!-- IF hide_content != "1" -->
                <li class="active"><a href="{virtual_path}{video_link}"><!-- IF video_description -->{trim:video_description,30}<!-- ELSE -->{lang:"member","frm_view"}<!-- ENDIF --></a></li>
                <!-- ENDIF -->
            </ol>   
       </div>  
       
       
        <div class="col-lg-12 profileactions">
            <div class="options">
                <div class="btn-group">
                    <!-- INCLUDE member_sections_links.tpl -->
                 </div>
            </div>
         </div>   
         
         <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
         
         <div class="col-sm-9">              
           
             <div class="panel panel-default">
                 <div class="panel-heading"><h4 class="pagetitle">{lang:"member","app_videos"}</h4></div>
                 <div class="panel-body">

                    <!-- IF hide_content != "1" -->

                    <div class="outter page_member_videos_view clearfix">
                        <div class="arrows">
                            <div class="pull-left margin-b-15 ">
                                <a href="{virtual_path}{video_page_link}" class="btn-xs btn btn-primary">&laquo; {lang:"member","back_to_videos"}</a>
                            </div>
                            <div class="pull-right margin-b-15 ">
                                {video_order_id} / {member_total_videos}
                                <a href="{virtual_path}{previous_video_link}" class="btn btn-xs btn-default" >&laquo; {lang:"member","previous_page"}</a>&nbsp;
                                <a href="{virtual_path}{next_video_link}" class="btn btn-xs  btn-default">{lang:"member","next_page"} &raquo;</a>
                            </div>
                            <div class="clear"></div>
                        </div>

                           
                        <div class="single galleryitem ">

                            <!-- IF video_adult AND session.showadult == "0" AND agree_adult_video == "0" AND session.can_view_adult_videos -->
                            <div class="form">
                                <form name="adultpicture" method="post" action="{virtual_path}{video_link}">
                                    <div class="fieldset">
                                        <dl class="fieldset">
                                            <dt>{lang:"member","adult_notice"}</dt>
                                            <dt><label class="checkbox"><input  name="adult_remember" type="checkbox" value="1">&nbsp;{lang:"member","adult_remember_yes"}</label></dt>
                                            <dd class="submit">
                                                <input class="submit btn btn-primary" name="adult_on" value="{lang:"member","adult_warning_yes"}" type="submit" />
                                                <input class="submit btn btn-primary" name="adult_off" value="{lang:"member","adult_warning_no"}" onclick="javascript:history.go(-1)" type="button" />
                                            </dd>
                                        </dl>
                                    </div>
                                </form>
                            </div>
                            <!-- ELSEIF video_display -->
                            <div class="image">
                                <!-- IF video_type -->
                                {metavideo:video_id=meta_id,type=video_type}
                                <!-- ELSE -->
                                <!-- IF video_streaming == "1" -->
                                <div id="mpl"><a href="http://www.macromedia.com/go/getflashplayer">Get Flash</a> to see this player.</div>
                                <script type="text/javascript" language="javascript">
                                                    swfobject.embedSWF("{virtual_path}media/utils/mediaplayer.swf", "mpl", "{settings.video_width}", "{settings.video_height}", "9.0.0", false,
                                    {'autostart':'false','file':'{top.virtual_pic_path}{member_media_path}{video_filename}','logo':'{top.virtual_path}media/overlay_player.png','wmode':'transparent'},
                                    {'allowfullscreen':'true','wmode':'transparent'}, {});
                                </script>
                                <!-- ELSE -->
                                <object width="400" height="370" id="mediaplayer" classid="CLSID:22D6F312-B0F6-11D0-94AB-0080C74C7E95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701" standby="Loading Microsoft Windows? Media Player components..." type="application/x-oleobject" align="middle">
                                    <param name="filename" value="{top.virtual_pic_path}{member_media_path}{video_filename}">
                                    <param name="showstatusbar" value="1">
                                    <param name="autostart" value="1">
                                    <param name="animationatstart" value="1">
                                    <param name="transparentatstart" value="1">
                                    <param name="showcontrols" value="1">
                                    <param name="width" value="400">
                                    <param name="height" value="370">
                                    <embed type="application/x-mplayer2" pluginspage="http://www.microsoft.com/windows/mediaplayer/" src="{top.virtual_pic_path}{member_media_path}{video_filename}" align="middle" showstatusbar="1" animationatstart="1" showcontrols="1" autostart="1" transparentatstart="1" width="400" height="370"></embed>
                                </object>
                                <!-- ENDIF -->
                                <!-- ENDIF -->
                            </div>
                            <!-- ENDIF -->
                        </div>
                                
                        <div class="margin-t-15 padding-t-0">
                            <div class="entry">
                                {video_description}
                            </div>
                            <div class="itemfooter">
                                {lang:"member","views"}: {video_total_views}  <br>
                            </div>
                            <div class="positionrelative">
                                <!-- IF settings.enable_video_rating AND session.can_rate_videos AND video_rated -->		
                                {ratings:type="video",member_id=top.member_id,item_id=video_id,score=video_score,votes=video_votes}		
                                <!-- ENDIF -->
                            </div>
                                
                            <!-- IF settings.enable_reports AND settings.enable_video_reports AND session.can_submit_reports -->			
                                 {reports:type="video",member_id=top.member_id,item_id=video_id} <br>
                            <!-- ENDIF -->
                        </div>   

                    </div>
                 </div>
               </div>
                                
                <!-- IF video_display AND settings.enable_video_comments AND video_allow_comments AND session.can_view_all_videos_comments -->

                <div class="panel panel-default">
                  <div class="panel-heading"><h4 class="pagetitle">{lang:"member","add_comment"}</h4></div>
                    <div class="panel-body">
                        <form name="edit" method="post" action="">
                          <div class="form-group">
                              <label for="field_comment_body">{lang:"member","add_comment"}</label>
                              <textarea class="form-control" id="field_comment_body" cols="40" rows="2" name="body">{comment_body}</textarea>
                          </div>
                          
                          <!-- IF settings.videos_comments_captcha -->
                           <div class="form-group"><label for="field_captcha">{lang:"member","verify_number"}</label>
                            <input type="text" id="field_captcha" class="form-control" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                            <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                          </div>
                        <!-- ENDIF -->
                        <input class="submit btn btn-primary" type="submit" name="submit" value="{lang:"member","submit"}" />  
                        <input type="hidden" name="iscomment" value="1" />
                       
                        </form>
                    </div>
                  </div>
                  
                 {comments:type="video",member_id=member_id,content_id=video_id}

                <!-- ENDIF --> 
                <!-- ENDIF -->
            </div>
            <!-- IF !post.dynamic_request -->   
            <div class="col-sm-3">
                <!-- INCLUDE webffo_sidebar.tpl -->
            </div>
            <!-- ENDIF -->  
         </div>
    </div>
  <!-- INCLUDE footer.tpl -->