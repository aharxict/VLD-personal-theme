<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li><a href="{virtual_path}{member_pictures_link}"><!-- IF settings.enable_old_style_pictures -->{lang:"member","frm_pictures"}<!-- ELSE -->{lang:"member","frm_albums"}<!-- ENDIF --></a></li>
                <!-- IF hide_content != "1" AND settings.enable_old_style_pictures == "0" -->
                <li class="active"><a href="{virtual_path}{album_pictures_link}">{trim:album_description,30}</a></li>
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
               <div class="panel-heading"><h4 class="pagetitle">{lang:"member","app_pictures"}</h4></div> 
                 <div class="panel-body padding-b-0">
                     
                <!-- IF hide_content != "1" -->
                    <div class="container-small">
                       <!-- IF album_display -->
                       <div class="row smallgutter">
                        <!-- BEGIN profile_pictures -->

                        <div class="margin-b-15 col-sm-3 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                            <div class="image">
                                <!-- IF picture_adult -->
                                <!-- IF session.showadult AND session.can_view_adult_images -->
                                <a href="{top.virtual_path}{picture_link}"><img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=top.member_media_path,filename=picture_preview}" alt="" border="0" /></a>
                                <!-- ELSE -->
                                <a href="{top.virtual_path}{picture_link}"><img class="img-full img-responsive" src="{vldthemes:a="blur",path=top.member_media_path,filename=picture_preview}" alt="" border="0" /></a>
                                <!-- ENDIF -->
                                <!-- ELSE -->
                                <a href="{top.virtual_path}{picture_link}"><img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=top.member_media_path,filename=picture_preview}" alt="" border="0" /></a>
                                <!-- ENDIF -->
                            </div>
                        </div>

                        <!-- END profile_pictures -->
                        </div>
                        <!-- ELSE -->
                        
                            <form name="privatealbum" method="post"  class="margin-b-15" action="">
                              
                                <div class="form-group">
                                    <label for="field_album_password">{lang:"member","private_album_warning"}</label>
                                    <input class="text form-control " id="field_album_password" name="album_password" value="" type="text" />
                                </div>

                                <input class="submit btn btn-primary" name="private_on" value="{lang:"member","private_warning_yes"}" type="submit" />&nbsp;
                                <input class="submit btn btn-primary" name="private_off" value="{lang:"member","private_warning_no"}" onclick="javascript:history.go(-1)" type="button" />

                            </form>
                                
                        <!-- ENDIF -->
                    </div>
                </div>
             <!-- ENDIF -->
    

            <!-- IF total_pages > "1" AND hide_content != 1 -->
          
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
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
            <!-- ENDIF --> 

          </div>           
      </div>      
     <div class="col-sm-3">  
        <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
                    
<!-- INCLUDE footer.tpl -->
