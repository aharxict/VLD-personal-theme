<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <!-- IF settings.enable_old_style_pictures == "0" -->
                <li>{anchor:url1="account/albums/",url2="index.php?m=account_albums",name="pictures|frm_albums"}</li>
                <li><a href="{virtual_path}{pictures_album_link}">{lang:"pictures","frm_editalbum"}</a></li>
                <!-- ENDIF -->
                <li class="active"><a href="{virtual_path}{pictures_view_link}">{lang:"pictures","frm_pictures"}</a></li>
            </ol>
        </div>
            
        <div class="btn-group actionbuttons margin-b-15  col-lg-12">    
          <a class="btn btn-primary active" href="{virtual_path}{pictures_view_link}">{lang:"pictures","opt_viewpictures"}</a>
          <a class="btn btn-primary" href="{virtual_path}{pictures_add_link}">{lang:"pictures","opt_addpicture"}</a>
       </div>  
         
              <div class="col-sm-12"> <!-- INCLUDE message.tpl -->  </div>
          
        <div class="col-sm-9">              
            <div class="panel panel-default">
                 <div class="panel-heading">
                      {lang:"pictures","app_pictures"}
                        <div title="{pictures_info}" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{pictures_pct}" aria-valuemin="0" aria-valuemax="100" style="width:{pictures_pct}%">
                                <span class="sr-only">{pictures_pct}% </span>
                            </div>
                        </div>		     
               </div>
               <div class="panel-body padding-b-0">
  
              
                <!-- IF hide_content != "1" -->

                <div class="container-fluid container-small">
                    <div class="row">

                    <!-- BEGIN profile_pictures -->
                    <div class="loop_picture col-sm-3 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                  
                          <div class="ownwell ">
                              <div class="vt_image  ">
                                  <a href="{top.virtual_path}{picture_edit_link}">
                                      <img src="{vldthemes:a="thumbnail",path=session.media_path,filename=picture_preview,cache_stamp=picture_modify_date}" alt="" class="img-full img-responsive ease" border="0" />
                                  </a>
                              </div>
  
                              <div class="vt_link datainfo ">
                                     
                                      <strong>{lang:"pictures","set_as_adult"}:</strong> <!-- IF settings.adult_images AND picture_adult --> {lang:"core","yes"} <!-- ELSE --> {lang:"core","no"} <!-- ENDIF -->
                                      
                                      <br>
                                      <strong>{lang:"pictures","post_date"}:</strong> {picture_post_date}
                                
                              </div>
                     
                              <div class="ownwell_actions actions btn-group btn-group-justified">
                                  <!-- IF session.can_view_own_pictures_comments -->
                                      <a class="btn btn-xs btn-link" href="{top.virtual_path}{picture_comments_link}"><span class="glyphicon glyphicon-comment"></span> {picture_total_comments}</a>
                                  <!-- ENDIF -->
                                  <!-- IF session.can_edit_own_pictures -->
                                  <a class="btn btn-xs btn-link" href="{top.virtual_path}{picture_edit_link}" title="{lang:"pictures","edit"}"><span class="glyphicon glyphicon-pencil"></span></a>
                                  <!-- ENDIF -->
                                  <!-- IF session.can_delete_own_pictures -->
                                  <a class="btn btn-xs btn-link" href="#" onclick="javascript:confirmLink('{lang:"pictures","delete?"}', '{top.virtual_path}{picture_delete_link}')" title="{lang:"pictures","delete"}">
                                    <span class="glyphicon glyphicon-minus"></span></a>
                                  <!-- ENDIF -->
                              </div>
                          </div>
                      </div>
                    <!-- END profile_pictures -->
                    </div>
                </div>
                <!-- ENDIF -->

        
            <!-- IF total_pages > "1" AND hide_content != "1" -->
          
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                    <div class="pull-right">
                        <span>{pages_info}</span>
                        <div class="btn-group">
                            <!-- IF previous_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"pictures","previous_page"}</a>
                            <!-- ENDIF -->
                            <!-- IF next_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"pictures","next_page"} &raquo;</a>
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