<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li >{anchor:url1="account/albums/",url2="index.php?m=account_albums",name="albums|frm_albums"}</li>
                <!-- IF album_id -->
                <li class="active"><a href="{virtual_path}{pictures_album_link}">{lang:"albums","frm_editalbum"}</a></li>
                <!-- ELSE -->
                <li class="active">{anchor:url1="account/albums/add/",url2="index.php?m=account_albums&p=add",name="albums|frm_addalbum"}</li>
                <!-- ENDIF -->
            </ol>    
       </div>         
        <div class="btn-group actionbuttons margin-b-15 col-lg-12">    
          <!-- IF album_id -->
                <a class="btn btn-primary active" href="{virtual_path}{pictures_album_link}">{lang:"albums","opt_editalbum"}</a>
                <a class="btn btn-primary" href="{virtual_path}{pictures_view_link}">{lang:"albums","opt_viewpictures"}</a>
                <a class="btn btn-primary" href="{virtual_path}{pictures_add_link}">{lang:"albums","opt_addpicture"}</a>
            <!-- ELSE -->
                {anchor:url1="account/albums/",url2="index.php?m=account_albums",name="albums|opt_viewalbums",class="btn btn-primary"}		
                {anchor:url1="account/albums/add/",url2="index.php?m=account_albums&p=add",name="albums|opt_addalbum",class="active btn btn-primary"}
            <!-- ENDIF -->    
       </div>  
       <div class="col-sm-9">              
                
            <div class="panel panel-default">
                <div class="panel-heading">{lang:"albums","app_albums"}</div>
                <div class="panel-body">        
              

                        <!-- IF hide_content != "1" -->

                        <div class="container-fluid">
                            <div class="row">

                                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-4 padding-l-0">
                                    <!-- IF album_id -->
                                    <!-- IF album_preview -->
                                    <a href="{virtual_path}{album_pictures_link}" title="{lang:"albums","pictures"}"><img class="img-responsive img-full" src="{virtual_pic_path}{session.media_path}{album_preview}" alt="{lang:"albums","pictures"}" border="0" /><br /></a>
                                    <!-- ELSE -->
                                    <a href="{virtual_path}{album_pictures_link}" title="{lang:"albums","pictures"}"><img class="img-responsive img-full" src="{virtual_tpl_path}{session.template}/media/album_picture_none.gif" alt="{lang:"albums","pictures"}" border="0" /><br /></a>
                                    <!-- ENDIF -->
                                    <!-- ELSE -->
                                    <a href="#"><img class="img-responsive img-full" src="{virtual_tpl_path}{session.template}/media/album_picture_none.gif" border="0" /><br /></a>
                                    <!-- ENDIF -->
                                </div>

                                <div class="col-lg-9 col-md-8 col-sm-6 col-xs-8">		
                                    <div class="form">
                                        <form name="edit" method="post" action="">
                                            <div class="form-group">
                                                <label for="field_description">{lang:"albums","description"} <span class="req">*</span></label></dt>
                                                <textarea id="field_description" class="form-control" cols="40" rows="5" name="description">{album_description}</textarea>
                                            </div>
                                            <!-- IF settings.enable_password_albums AND session.can_password_albums -->
                                            <div class="form-group">
                                                <label for="field_password">{lang:"albums","album_password"}</label></dt>
                                                <input id="field_password" type="text" class="form-control" name="password" value="{album_password}" size="20" maxlength="16" />
                                            </div> 
                                            <!-- ENDIF -->
                                            <div class="form-group">
                                                <label for="field_accesstype">{lang:"albums","access_level"}</label>
                                                <select id="field_accesslevel" name="accesslevel" class="form-control">{dropdownlist:accesslevelbox,album_access_level}</select>
                                            </div>
                                            <input class="btn btn-primary pull-right" type="submit" name="submit" value="{lang:"albums","submit"}" />
                                    </div>
                                    <input type="hidden" name="issubmit" value="1" />
                                    </form>
                                </div>
                             </div>  
                             </div>  
                        </div>	
                 <!-- ENDIF -->
                     </div>
           </div>         
        <div class="col-sm-3">
            <!-- INCLUDE webffo_account_sidebar.tpl -->
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->