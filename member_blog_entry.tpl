<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li><a href="{virtual_path}{member_blog_link}">{lang:"member","frm_blog"}</a></li>
                <!-- IF hide_content != "1" -->
                <li class="active"><a href="{virtual_path}{entry_link}">{trim:entry_title,30}</a></li>
                <!-- ENDIF -->
                <li class="active action"><a href="{virtual_path}{member_blog_rss_link}" target="_blank"><img src="{virtual_tpl_path}{session.template}/media/rss.png" border="0" /></a></li>
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
              
                   <!-- IF hide_content != "1" -->
                   
                   
                <div class="panel panel-default">
                   <div class="panel-heading"> {entry_title}</div>
                   <div class="panel-body">
                
                   <div class="row">
                          
                       <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 ">
                           <div class="bg_white_alpha bevelbottom ">
                               <div class="image margin-b-15">
                                   <!-- IF entry_picture -->
                                   <a class="picture_zoom" href="{top.virtual_pic_path}{member_media_path}{entry_picture_large}" id="blog_picture_{entry_id}" target="_blank">
                                       <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=entry_picture_large,width="300"}" alt="" border="0" />
                                   </a>
                                   <!-- ELSE -->
                                   <a href="{top.virtual_path}{entry_link}"><img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>
                                   <!-- ENDIF -->
                               </div>

                               <strong>{lang:"member","post_date"}</strong> {entry_post_date}<br>
                               <a href="{top.virtual_path}{entry_link}">{entry_total_comments} {lang:"member","comments"}</a><br>
                               <strong>{lang:"member","views"}:</strong> {entry_total_views}<br>

                           </div>
                       </div> 
                        <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 ">
                            <div class="entry bg_white_alpha">          
                                <div class="title"><h2>{entry_title}</h2></div>
                                    {entry_body}
                            </div>
                             <!-- IF settings.enable_reports AND settings.enable_blog_reports AND session.can_submit_reports -->
                                <div class="well margin-t-15">{reports:type="blog",member_id=member_id,item_id=entry_id}</div>
                                <!-- ENDIF -->


                        </div>
                      </div>
                    </div> 
                 </div>         
            
              
            <!-- IF entry_allow_comments AND session.can_view_all_blogs_comments -->

            <div class="comments  bg_white_alpha margin-t-15 bevelbottom page_member_blogs_comments">

                <div id="comments_page">
                    {comments:type="blog",member_id=member_id,content_id=entry_id}
                </div>

                <div class="panel panel-default">
                <div class="panel-heading"> {lang:"member","add_comment"}</div>
                <div class="panel-body">
                
                    <form name="edit" method="post" action="">
                        <div class="fieldset">
                            <dl class="fieldset">
                                <dt><label for="field_comment_body">{lang:"member","add_comment"}</label></dt>
                                <dd><textarea class="form-control textarea_full" id="field_comment_body" cols="40" rows="5" name="body">{comment_body}</textarea></dd>
                                <!-- IF settings.blogs_comments_captcha -->
                                <dt><label for="field_captcha">{lang:"member","verify_number"}</label></dt>
                                <dd class="form-inline">
                                    <input type="text" id="field_captcha" class="form-control " name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                                    <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                                </dd>
                                <!-- ENDIF -->
                                <dd class="submit margin-t-15"><input class="btn btn-primary" type="submit" name="submit" value="{lang:"member","submit"}" /></dd>
                            </dl>
                        </div>
                        <input type="hidden" name="iscomment" value="1" />     
                 </div>
            </div>
          </div>
            <!-- ENDIF -->
                               
         <!-- ENDIF -->  
         </div>
        <div class="col-sm-3">
           <!-- INCLUDE webffo_sidebar.tpl -->
       </div>  
</div>
</div>

<!-- INCLUDE footer.tpl -->
