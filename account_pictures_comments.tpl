<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                 <li> <a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>     
                 <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <!-- IF settings.enable_old_style_pictures == "0" -->
                        <li>{anchor:url1="account/albums/",url2="index.php?m=account_albums",name="pictures|frm_albums"}</li>
                        <li><a href="{virtual_path}{pictures_album_link}">{lang:"pictures","frm_editalbum"}</a></li>
                <!-- ENDIF -->
                <li><a href="{virtual_path}{pictures_view_link}">{lang:"pictures","frm_pictures"}</a></li>
                <li><a href="{virtual_path}{pictures_edit_link}">{lang:"pictures","frm_editpicture"}</a></li>
                <li><a href="{virtual_path}{pictures_comments_link}">{lang:"pictures","frm_comments"}</a></li>
             </ol>
	
            <div class="btn-group margin-b-15 actionbuttons">
                <a class="btn btn-default" href="{virtual_path}{pictures_edit_link}">{lang:"pictures","opt_editpicture"}</a>
                <a class="btn btn-default active" href="{virtual_path}{pictures_comments_link}">{lang:"pictures","opt_viewcomments"}</a>
                <a class="btn btn-default" href="{virtual_path}{pictures_add_link}">{lang:"pictures","opt_addpicture"}</a>
	    </div>
        </div>   

       <!-- INCLUDE message.tpl --> 
        <div class="col-sm-9">              
                
              

                 <div class="panel panel-default">
                      <div class="panel-heading">{lang:"pictures","app_comments"}</div>
                      <div class="panel-body">

                         <!-- IF hide_content != "1" -->

                            <!-- BEGIN picture_comments -->
                                <div class="loop_comment {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                                      
                                    <div class="image col-lg-4 col-md-4">
                                         <!-- INCLUDE member_sections_picture.tpl -->
                                    </div>

                                    <div class="itemheader col-lg-8">
                                            <!-- INCLUDE member_sections_name.tpl -->
                                            <ul class="itemheader">
                                                <li>{lang:"pictures","post_date"} {comment_post_date}</li>
                                                <!-- IF session.can_delete_own_pictures_comments -->
                                                        <li class="remove"><a href="#" onclick="javascript:confirmLink('{lang:"pictures","delete_comment?"}', '{top.virtual_path}{comment_delete_link}')" title="{lang:"pictures","delete_comment"}">{lang:"pictures","delete_comment"}</a></li>
                                                <!-- ENDIF -->
                                            </ul>
                                    </div>
                                    <div class="entry">{comment_body}</div>
                                </div>
                            <!-- END picture_comments -->
                            

                            <!-- IF total_pages > "1" -->
                                <div class="footer_wrap">
                                    <div class="footer">
                                            <p>{lang:"core","page_numbers"}</p>
                                            {page_links}
                                            <div class="clear"></div>
                                    </div>
                                </div>             
                            <!-- ENDIF -->

                <!-- ENDIF -->
                </div>    
                </div>    
        </div>    
        <div class="col-sm-3 ">
            <!-- INCLUDE webffo_account_sidebar.tpl -->
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->
