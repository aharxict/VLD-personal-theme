<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li class="active"><a href="{virtual_path}{member_pictures_link}">{lang:"member","frm_albums"}</a></li>
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
               <div class="panel-heading"><h4 class="pagetitle">{lang:"member","app_albums"}</h4></div> 
                 <div class="panel-body padding-b-0">
               
                    <!-- IF hide_content != "1" -->

                        <!-- BEGIN profile_albums -->
                        
                            <!-- IF rowcnt > "0" -->
                                <hr>
                            <!-- ENDIF -->

                          <div class="row margin-b-15">
                              <div class=" col-md-3 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                                    <div class="image">
                                        <!-- IF album_preview AND album_picture_active -->
                                        <!-- IF settings.adult_images AND album_picture_adult -->
                                        <!-- IF session.showadult AND session.can_view_adult_images -->
                                        <a href="{top.virtual_path}{album_pictures_link}"><img  class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=top.member_media_path,filename=album_preview}" alt="" border="0" /></a>
                                        <!-- ELSE -->
                                        <a href="{top.virtual_path}{album_pictures_link}"><img class="img-full img-responsive" src="{vldthemes:a="blur",path=top.member_media_path,filename=album_preview}" alt="" border="0" /></a>
                                        <!-- ENDIF -->
                                        <!-- ELSE -->
                                        <a href="{top.virtual_path}{album_pictures_link}"><img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=top.member_media_path,filename=album_preview}" alt="" border="0" /></a>
                                        <!-- ENDIF -->
                                        <!-- ELSE -->
                                        <a href="{top.virtual_path}{album_pictures_link}"><img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/album_picture_none.gif" border="0" /></a>
                                        <!-- ENDIF -->
                                    </div>
                            </div>
                            <div class="col-sm-6">{album_description}</div>
                            <div class="col-sm-3 visible-lg">
                                <span class="margin-l-15 pull-right label label-default"><span class="glyphicon glyphicon-picture"></span> {album_total_pictures} </span>
                                <small class="pull-right text-muted">  
                                 <!-- IF album_update_date -->
                                 {album_update_date}
                                 <!-- ELSE -->
                                 {album_post_date}
                                 <!-- ENDIF -->
                                </small>
                            </div>
                        </div>
                        <!-- END profile_albums -->
           
                    <!-- ENDIF -->
                </div>

                <!-- IF total_pages > "1" AND hide_content != "1"  --> 
              
                    <div class="pull-right">
                        <span>{pages_info}</span>
                        <div class="btn-group">
                            <!-- IF previous_page != "0" -->
                            <a class="btn btn-primary" href="{virtual_path}{previous_page_link}">&laquo; {lang:"member","previous_page"}</a>
                            <!-- ENDIF -->
                            <!-- IF next_page != "0" -->
                            <a class="btn btn-primary" href="{virtual_path}{next_page_link}">{lang:"member","next_page"} &raquo;</a>
                            <!-- ENDIF -->
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
