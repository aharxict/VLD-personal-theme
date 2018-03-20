<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">             
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li class="active"><a href="{virtual_path}{member_videos_link}">{lang:"member","frm_videos"}</a></li>	
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
                <div class="panel-heading"><h4 class="pagetitle">{lang:"member","app_videos"}</h4> </div>
                <div class="panel-body padding-b-0 clearfix">
                    <!-- IF hide_content != "1" -->
                        <div class="container-fluid container-small">
                        <div class="row">
                            <!-- BEGIN profile_videos -->
                            <div class="col-lg-3 margin-b-10">
                              
                                    <div class="image ">
                                        <!-- IF video_type -->
                                        <a href="{top.virtual_path}{video_link}">
                                            <img style="" class="img-full img-responsive" src="{metavideo:video_id=meta_id,type=video_type,media="preview",preview=video_preview}" alt="" border="0" /></a>
                                        <!-- ELSE -->
                                        <!-- IF video_preview -->
                                        <!-- IF video_adult -->
                                        <!-- IF session.showadult AND session.can_view_adult_images -->
                                        <a href="{top.virtual_path}{video_link}"><img  class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=video_preview}" alt="" border="0" /></a>
                                        <!-- ELSE -->
                                        <a href="{top.virtual_path}{video_link}"><img  class="img-full img-responsive" src="{vldthemes:a="blur",path=member_media_path,filename=video_preview}" alt="" border="0" /></a>
                                        <!-- ENDIF -->
                                        <!-- ELSE -->
                                        <a href="{top.virtual_path}{video_link}"><img class="img-full img-responsive"  src="{top.virtual_pic_path}{top.member_media_path}{video_preview}" alt="" border="0" /></a>
                                        <!-- ENDIF -->
                                        <!-- ELSE -->
                                        <a href="{top.virtual_path}{video_link}"><img  class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/video_picture_none.gif" alt="" border="0" /></a>
                                        <!-- ENDIF -->
                                        <!-- ENDIF -->
                                    </div>
                            </div>

                            <!-- END profile_videos -->
                        </div>
                        </div>
                    <!-- ENDIF -->
                </div>
               </div>

            <!-- IF total_pages > "1" AND hide_content != "1" -->
            <div class="footer_wrap">
                <div class="footer">
                    <p>{pages_info}</p>
                    <!-- IF previous_page != "0" -->
                    <a href="{virtual_path}{previous_page_link}">&laquo; {lang:"member","previous_page"}</a>
                    <!-- ENDIF -->
                    <!-- IF next_page != "0" -->
                    <a href="{virtual_path}{next_page_link}">{lang:"member","next_page"} &raquo;</a>
                    <!-- ENDIF -->
                    <div class="clear"></div>
                </div>
            </div>
            <!-- ENDIF -->  
        </div>            
        <div class="col-sm-3">
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div><!-- INCLUDE footer.tpl -->
