<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li><a href="{virtual_path}{member_pictures_link}"><!-- IF settings.enable_old_style_pictures -->{lang:"member","frm_pictures"}<!-- ELSE -->{lang:"member","frm_albums"}<!-- ENDIF --></a></li>
                <!-- IF hide_content != "1" AND settings.enable_old_style_pictures == "0" -->
                <li><a href="{virtual_path}{album_pictures_link}">{trim:album_description,30}</a></li>
                <li class="active"><a href="{virtual_path}{picture_link}"><!-- IF picture_description -->{trim:picture_description,30}<!-- ELSE -->{lang:"member","frm_view"}<!-- ENDIF --></a></li>
                <!-- ELSEIF hide_content != "1" -->
                <li class="active"><a href="{virtual_path}{picture_link}"><!-- IF picture_description -->{trim:picture_description,30}<!-- ELSE -->{lang:"member","frm_view"}<!-- ENDIF --></a></li>
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
                
           <div class="col-sm-9">              

                <!-- IF hide_content != "1" -->
                    <div class="panel panel-default">
                       <div class="panel-heading"><h4 class="pagetitle">{lang:"member","app_pictures"}</h4></div> 
                       <div class="panel-body">
                           
                      

                            <!-- IF album_display -->
                                <div class="clearfix">
                                    <div style="float: left">
                                        <a class="btn-xs btn btn-default" href="{virtual_path}{pictures_page_link}">{lang:"member","back_to_album"}</a>
                                    </div>
                                    <div style="float: right">
                                        <!-- IF !settings.enable_old_style_pictures -->
                                        {picture_order_id} / {album_total_pictures}
                                        <!-- ENDIF -->
                                        <a class="btn btn-xs btn-primary" href="{virtual_path}{previous_picture_link}">&laquo; {lang:"member","previous_page"}</a>&nbsp;
                                        <a class="btn btn-xs btn-primary" href="{virtual_path}{next_picture_link}">{lang:"member","next_page"} &raquo;</a>
                                    </div>
                                </div>

                                <!-- IF picture_adult AND session.showadult == "0" AND agree_adult_picture == "0" AND session.can_view_adult_images -->
                                  <form name="adultpicture" class="" method="post" action="{virtual_path}{picture_link}">

                                    {lang:"member","adult_notice"}
                                    <label class="checkbox"><input  name="adult_remember" type="checkbox" value="1">&nbsp;{lang:"member","adult_remember_yes"}</label>

                                    <input class="submit btn btn-primary" name="adult_on" value="{lang:"member","adult_warning_yes"}" type="submit" />
                                    <input class="submit btn btn-primary" name="adult_off" value="{lang:"member","adult_warning_no"}" onclick="javascript:history.go(-1)" type="button" />

                                  </form>
                                <!-- ELSEIF picture_display -->
                                <div class=" margin-t-15">
                                    <div class="">
                                        <div class="image">
                                            <a href="{virtual_path}{picture_link}"><img class="img-responsive img-full" src="{top.virtual_pic_path}{member_media_path}{picture_filename}" alt="" border="0" /></a>
                                        </div>
                                        <div class="margin-t-15 well hidden-xs">
                                            {picture_description}
                                        </div>
                                        <div class="itemfooter hidden-xs">
                                            <!-- IF settings.enable_picture_rating AND session.can_rate_pictures AND picture_rated -->
                                            {ratings:type="picture",member_id=top.member_id,item_id=picture_id,score=picture_score,votes=picture_votes} 
                                            <!-- ENDIF -->
                                            {lang:"member","views"}: {picture_total_views}
                                            <!-- IF settings.enable_reports AND settings.enable_picture_reports AND session.can_submit_reports -->
                                            <div class="pull-right">
                                                {reports:type="picture",member_id=top.member_id,item_id=picture_id}
                                            </div>
                                            <!-- ENDIF -->
                                        </div>
                                    </div>
                                </div> 
                            <!-- ENDIF -->
                           
                     <!-- ELSE -->     
                        <form name="privatealbum"  class="margin-b-15" method="post" action="">
                            <div class="form-group">
                                <label for="field_album_password">{lang:"member","private_album_warning"}</label>
                                <input class="form-control" id="field_album_password" name="album_password" value="" type="text" />
                            </div>    
                                    
                            <input class="btn btn-default" name="private_on" value="{lang:"member","private_warning_yes"}" type="submit" />&nbsp;
                            <input class="btn btn-default" name="private_off" value="{lang:"member","private_warning_no"}" onclick="javascript:history.go(-1)" type="button" />
                        </form>
                     <!-- ENDIF -->
             

                 <!-- ENDIF -->
             </div>
        </div>    
                        
         <!-- IF picture_display AND settings.enable_picture_comments AND picture_allow_comments AND session.can_view_all_pictures_comments -->

        <div class="panel panel-default">
            <div class="panel-heading"><h4 class="pagetitle">{lang:"member","comments_list"}</h4></div> 
            <div class="panel-body">       
                <form name="edit" method="post" action="">
                    <div class="fieldset old_form">
                        <dl class="fieldset">
                            <dt><label for="field_comment_body">{lang:"member","add_comment"}</label></dt>
                            <dd><textarea class="textarea form-control textarea_full" id="field_comment_body" cols="40" rows="5" name="body">{comment_body}</textarea></dd>
                            <!-- IF settings.pictures_comments_captcha -->
                            <dt><label for="field_captcha">{lang:"member","verify_number"}</label></dt>
                            <dd class="form-inline"> 
                                <input type="text" id="field_captcha" class="text form-control" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                                <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                            </dd>
                            <!-- ENDIF -->
                            <dd class="submit margin-t-15 "><input class="submit btn btn-primary" type="submit" name="submit" value="{lang:"member","submit"}" /></dd>
                        </dl>
                    </div>
                    <input type="hidden" name="iscomment" value="1" />
                </form>
            </div>
        </div>


        {comments:type="picture",member_id=member_id,content_id=picture_id}

         <!-- ENDIF -->
                
                 
    </div>
<!-- IF !post.dynamic_request -->

        <div class="col-sm-3">
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
        </div>
    </div>
    </div>
    <!-- INCLUDE footer.tpl -->
<!-- ENDIF -->
