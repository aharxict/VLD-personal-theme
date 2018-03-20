<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li class="active">{anchor:url1="videos/",url2="index.php?m=videos",name="videos|frm_videos"}</li>
            </ol>
	</div>

    <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
    
    <div class="col-sm-9">
        
        <div class="panel panel-default">
           <div class="panel-heading">{lang:"videos","app_videos"} </div>
           <div class="panel-body">
      
            <!-- IF hide_content != "1" AND global_videos -->

            <div class="container-small">
                <div class="row">
                <!-- BEGIN global_videos -->
                  <div class="col-md-3">
                        <div class="image ">
                            <!-- IF video_type -->
                            <a href="{top.virtual_path}{video_link}"><img class="img-full img-responsive" src="{metavideo:video_id=meta_id,type=video_type,media="preview",preview=video_preview}" alt="" border="0" /> </a>
                            <!-- ELSE -->
                            <!-- IF video_preview -->
                            <!-- IF video_adult -->
                            <!-- IF session.showadult AND session.can_view_adult_images -->
                            <a href="{top.virtual_path}{video_link}" class="img" title="{trim:video_description,60}"><img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=video_preview}" alt="" border="0" /> </a>
                            <!-- ELSE -->
                            <a href="{top.virtual_path}{video_link}" class="img" title="{trim:video_description,60}"><img class="img-full img-responsive" src="{vldthemes:a="blur",path=member_media_path,filename=video_preview}" alt="" border="0" /> </a>
                            <!-- ENDIF -->
                            <!-- ELSE -->
                            <a href="{top.virtual_path}{video_link}" class="img" title="{trim:video_description,60}"><img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=video_preview}" alt="" border="0" /> </a>
                            <!-- ENDIF -->
                            <!-- ELSE -->
                            <a href="{top.virtual_path}{video_link}" class="img" title="{trim:video_description,60}"><img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/video_picture_none.gif" alt="" border="0" /> </a>
                            <!-- ENDIF -->
                            <!-- ENDIF -->
                            <span class="author">{lang:"videos","added_by"} <a href="{top.virtual_path}{member_profile_link}">{trim:member_username,10}</a></span>
                            <div class="clear"></div>
                            <span class="views">{lang:"videos","total_views"}: {video_total_views} </span> <br>
                            <!-- IF video_allow_comments -->
                            <span class="comments">{lang:"videos","total_comments"}: {video_total_comments}</span>
                            <!-- ENDIF -->
                        </div>
                        <!-- IF settings.enable_video_rating AND video_rated -->
                        <div class="positionrelative">
                            <span class="ratingother">{ratings:type="video",member_id=member_id,item_id=video_id,score=video_score,votes=video_votes,forcelocked=1,hidescore=1}</span>
                        </div>
                        <!-- ENDIF -->
                    </div>
                 <!-- END global_videos -->

                 </div>
              
            </div>
              <!-- ENDIF -->
            </div>


            <!-- IF hide_content != "1" AND total_pages > "1" -->
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                    <div class="pull-right">
                        <span>{lang:"search","page_numbers"}</span>
                        <div class="btn-group">
                            {page_links}
                        </div>
                    </div> 
                </div> 
                <script type="text/javascript">
                  $(function(){
                    $('#footer_pagination a').addClass('btn btn-default');
                  });
                </script>
            <!-- ENDIF -->
        </div>
    </div>
    <div class="col-sm-3">
        <!-- INCLUDE webffo_sidebar.tpl -->
    </div>  
 </div>
</div>
<!-- INCLUDE footer.tpl -->