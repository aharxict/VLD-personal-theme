<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <ol class="breadcrumb">
                 <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li class="active">{anchor:url1="account/videos/",url2="index.php?m=account_videos",name="videos|frm_videos"}</li>
            </ol>
	</div>
        <div class="actionbuttons margin-b-15 col-lg-12">
            <div class="btn-group">
                {anchor:url1="account/videos/",url2="index.php?m=account_videos",name="videos|opt_viewvideos",class="active btn btn-default"}
                {anchor:url1="account/videos/add/",url2="index.php?m=account_videos&p=add",name="videos|opt_addvideo",class=" btn btn-default"}
            </div>       
        </div>

      
  <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>

  <div class="col-sm-9">
      
        
        <div class="panel panel-default">
           <div class="panel-heading">{lang:"videos","app_videos"} 
              <div title="{videos_info}" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{videos_pct}" aria-valuemin="0" aria-valuemax="100" style="width:{videos_pct}%">
                  <span class="sr-only">{videos_pct}% </span>
                </div>
              </div>    
           </div>
           <div class="panel-body">

             <!-- IF hide_content != "1" -->
                    <div class="container-fluid container-small">
                       <div class="row ">
                        <!-- BEGIN profile_videos -->
                                <div class="loop_video margin-b-15 col-lg-4 col-md-3 col-sm-4 col-xs-12 clearfix {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                            
                                        <div class="image video_wrapper">
                                                 <!-- IF video_type -->
                                                
                                                         <a href="{top.virtual_path}{video_edit_link}"><img class="img-responsive img-full"  src="{metavideo:video_id=meta_id,type=video_type,media="preview",preview=video_preview}" alt="" border="0" /><br /></a>
                                                 <!-- ELSE -->
                                                         <!-- IF video_preview != "" -->
                                                                 <a href="{top.virtual_path}{video_edit_link}"><img class="img-responsive img-full" src="{top.virtual_pic_path}{session.media_path}{video_preview}" alt="" border="0" /><br /></a>
                                                         <!-- ELSE -->
                                                                 <a href="{top.virtual_path}{video_edit_link}"><img class="img-responsive img-full" src="{top.virtual_tpl_path}{session.template}/media/video_picture_none.gif" alt="" border="0" /><br /></a>
                                                         <!-- ENDIF -->
                                                    <!-- ENDIF -->
                                                   <strong>{lang:"videos","dateadded"}:</strong> {video_post_date} 
                                                    <!-- IF settings.enable_videos_categories --> 
                                                    <br><strong> {lang:"videos","category"}:</strong> {video_category} 
                                              <!-- ENDIF -->

                                     <!-- IF settings.enable_video_rating AND video_rated -->
                                     <br><strong>{lang:"videos","rated_on"}:</strong> {video_score} ({video_votes} {lang:"videos","votes"})
                                      <!-- ENDIF -->
                                      </div>

                                    <!-- IF video_description -->
                                    <div>{lang:"videos","notes"}: {video_description} </div>
                                    <!-- ENDIF -->

                                    <div class="datainfo">
                                        <!-- IF settings.enable_encodercloud AND video_streaming > "1" -->
                                        <strong>{lang:"videos","status"}</strong>
                                        <!-- IF video_streaming == "2" -->
                                        {lang:"videos","status_queue"}
                                        <!-- ELSE -->
                                        {lang:"videos","status_error"}
                                        <!-- ENDIF -->
                                        <!-- ENDIF -->
                                    </div>
                                        
                                    <div class="margin-t-15 actions btn-group btn-group-justified">
                                        <!-- IF session.can_view_own_videos_comments -->
                                        <a class="btn btn-primary btn-xs" href="{top.virtual_path}{video_comments_link}">{video_total_comments} {lang:"videos","comments"}</a>
                                        <!-- ENDIF -->
                                        <!-- IF session.can_edit_own_videos -->
                                        <a  class="btn btn-primary btn-xs"  href="{top.virtual_path}{video_edit_link}" title="{lang:"videos","edit"}"><span class="glyphicon glyphicon-pencil"></span></a>
                                        <!-- ENDIF -->
                                        <!-- IF session.can_delete_own_videos -->
                                        <a class="btn btn-danger btn-xs"  href="#" onclick="javascript:confirmLink('{lang:"videos","delete?"}', '{top.virtual_path}{video_delete_link}')" title="{lang:"videos","delete"}"><span class="glyphicon glyphicon-minus"></span></a>
                                        <!-- ENDIF -->
                                    </div>
                            </div>
                            <!-- END profile_videos -->
                          </div>
                    </div>
                    <!-- ENDIF -->

          


            <!-- IF total_pages > "1" AND hide_content != "1"  -->
            
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                    <div class="pull-right">
                        <span>{pages_info}</span>
                        <div class="btn-group">
                            <!-- IF previous_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"videos","previous_page"}</a>
                            <!-- ENDIF -->
                            <!-- IF next_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"videos","next_page"} &raquo;</a>
                            <!-- ENDIF -->
                        </div>
                    </div> 
                </div>
            
            <!-- ENDIF -->


                </div>
           </div>
        </div>
        <div class="col-sm-3">
          <!-- INCLUDE webffo_account_sidebar.tpl -->
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>
    </div>
</div>

<!-- INCLUDE footer.tpl -->