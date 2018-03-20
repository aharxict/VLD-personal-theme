<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li class="active"><a href="{virtual_path}{member_blog_link}">{lang:"member","frm_blog"}</a> <a href="{virtual_path}{member_blog_rss_link}" target="_blank"><img src="{virtual_tpl_path}{session.template}/media/rss.png" border="0" /></a></li>
            </ol>    
        </div> 
        <div class="col-lg-12 profileactions">
            <div class="options">
                <div class="btn-group">
                    <!-- INCLUDE member_sections_links.tpl -->
                 </div>
            </div>
        </div>              
        <div class="col-sm-9">              
            <div class="panel panel-default">
                <div class="panel-heading">{lang:"member","app_blog"}</div>
                <div class="panel-body">
                <!-- IF hide_content != "1" -->

                    <!-- BEGIN blog_entries -->
                        <!-- IF rowcnt > "0" -->
                            <hr>
                         <!-- ENDIF -->
                
                         <div class="row">
                            <div class="col-sm-3  col-xs-12  ">
                                <div class="entry_image image_overlay_actions">
                                    <!-- IF entry_picture -->
                                    <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                                        <img src="{vldthemes:a="thumbnail",path=member_media_path,filename=entry_picture}" class="img-full img-responsive" alt="" border="0" /></a>
                                    <!-- ELSEIF member_picture AND member_picture_active -->
                                    <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                                        <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=top.member_media_path,filename=entry_picture_preview}" alt="" border="0" />
                                    </a>
                                    <!-- ELSE -->
                                    <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                                        <img  class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" />
                                    </a>
                                    <!-- ENDIF -->                                                         
                                </div> 
                            </div>

                            <div class="col-lg-9">
                                <h4><a class="nowrap " href="{top.virtual_path}{entry_link}">{trim:entry_title,40}</a></h4>
                                <div class="text-justify">
                                    {trim:entry_body,590}
                                </div>
                            </div>    
                      </div>   
                    <!-- END blog_entries -->
                               <!-- ENDIF -->

                </div>
      



                <!-- IF total_pages > "1" -->
                        <div id="footer_pagination" class="row footer_pagination_small ">
                            <div class="padding-15 clearfix">
                                <div class="pull-right">
                                    <span>{pages_info}</span>
                                    <div class="btn-group">
                                        <!-- IF previous_page != "0" -->
                                        <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"member","previous_page"}</a>
                                        <!-- ENDIF -->
                                        <!-- IF next_page != "0" -->
                                        <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"member","next_page"} &raquo;</a>
                                        <!-- ENDIF -->
                                    </div>
                                </div> 
                            </div>
                        </div> 
                <!-- ENDIF -->
 
            </div>    
        </div>    
        <div class="col-sm-3">
           <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
     </div>  
</div>
</div>
<!-- INCLUDE footer.tpl -->
