<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
            <div class="col-lg-12">              
                <ol class="breadcrumb">        
                    <li>  <a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>            
                    <!-- IF settings.enable_old_style_pictures == "0" --> 				
                    <li>{anchor:url1="account/albums/",url2="index.php?m=account_albums",name="pictures|frm_albums"}</li>				
                    <li>  <a href="{virtual_path}{pictures_album_link}">{lang:"pictures","frm_editalbum"}</a></li>			
                    <!-- ENDIF -->			
                    <li> <a href="{virtual_path}{pictures_view_link}">{lang:"pictures","frm_pictures"}</a></li>			
                    <!-- IF picture_id -->				
                    <li class="active"> <a href="{virtual_path}{pictures_edit_link}">{lang:"pictures","frm_editpicture"}</a></li>			
                    <!-- ELSE -->				
                    <li class="active">  <a href="{virtual_path}{pictures_add_link}">{lang:"pictures","frm_addpicture"}</a></li>			
                    <!-- ENDIF -->		
                </ol>    
            </div>
            <div class="profileactions col-lg-12 btn-group">	
                			
                    <!-- IF picture_id -->				
                    {anchor:url1="account/albums/",url2="index.php?m=account_albums",name="pictures|frm_albums",class="btn btn-primary"}	
                    <a  href="{virtual_path}{pictures_edit_link}" class="btn btn-primary active">{lang:"pictures","opt_editpicture"}</a>					
                    <!-- IF settings.enable_picture_comments -->						
                    <a class="btn btn-primary " href="{virtual_path}{pictures_comments_link}">{lang:"pictures","opt_viewcomments"}</a>					
                    <!-- ENDIF -->					
                    <a  class="btn btn-primary " href="{virtual_path}{pictures_add_link}">{lang:"pictures","opt_addpicture"}</a>			 	
                    <!-- ELSE -->					
                    <a class="btn btn-primary "  href="{virtual_path}{pictures_view_link}">{lang:"pictures","opt_viewpictures"}</a>					
                    <a class="btn btn-primary active" href="{virtual_path}{pictures_add_link}">{lang:"pictures","opt_addpicture"}</a>				
                    <!-- ENDIF -->      
            </div>  

        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        <div class="col-sm-9">

                <div class="panel panel-default">
                      <div class="panel-heading"><!-- IF picture_id -->{lang:"pictures","app_editpicture"} <!-- ELSE -->{lang:"pictures","app_addpicture"}<!-- ENDIF --></div>
                      <div class="panel-body">

                      <!-- IF hide_content != "1" --> 	
                          <div class="container-fluid">        	
                              <div class="row">
                                  <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 padding-l-0 padding-r-0">             	
                              						
                                     <!-- IF picture_preview -->  								
                                     <a class="picture_zoom" href="{vldthemes:a="thumbnail",path=session.media_path,filename=picture_filename}" id="picture_{picture_id}" target="_blank">                  
                                         <img class="img-responsive img-full" src="{vldthemes:a="thumbnail",path=session.media_path,filename=picture_preview,cache_stamp=picture_modify_date}" alt="{lang:"pictures","viewpicture"}" border="0" />                   </a>  								
                                     <div id="picture_{picture_id}_zoom" style="display:none">
                                         <img class="img-responsive img-full"  src="{top.virtual_pic_path}{session.media_path}{picture_filename}" alt="" border="0" />
                                     </div>  	
                          
                                     <!-- ELSE -->  								
                                     <a href="#">
                                         <img class="img-responsive img-full" src="{virtual_tpl_path}{session.template}/media/user_picture_none_0.jpg" alt="" border="0" /></a>  							
                                     <!-- ENDIF -->  						
    			
                                </div>          
                                <div class="col-lg-9 col-md-9 col-sm-8 col-xs-6">								
                                     <form id="fileuploadform" name="edit" method="post" action="" class="padding-15 padding-l-0 clearfix" enctype="multipart/form-data">									
                                         <div class="fieldset">    								 
                                             <div class="form-group">                      
                                                 <label for="field_description">{lang:"pictures","description"}
                                                 </label>										  
                                                 <textarea id="field_description" class="form-control" cols="40" rows="5" name="description">{picture_description}</textarea>                     
                                             </div>											
                                             <!-- IF picture_preview == "" -->												
                                             <div id="regular_file_select">
                                                 <label for="field_filename">{lang:"pictures","select_picture"}
                                                 </label>
                                             </div>												
                                             <div id="regular_file_browse">
                                                 <input type="file" name="pending_file" id="pending_file" />
                                                
                                             </div>											
                                             <!-- ENDIF -->											
                                             <!-- IF settings.enable_picture_rating -->													
                                             <br><label class="xcheckbox" for="field_rated">														
                                                 <input type="checkbox" name="rated" value="1" data-toggle="checkbox" id="field_rated" <!-- IF picture_rated -->checked="checked"
                                                        <!-- ENDIF --> /> 														{lang:"pictures","is_rated"} 													
                                             </label>											
                                             <!-- ENDIF -->											
                                             <!-- IF settings.adult_images -->													
                                             <br><label for="field_adult" class="xcheckbox">														
                                                 <input type="checkbox" data-toggle="checkbox" name="adult" value="1" id="field_adult" <!-- IF picture_adult -->checked="checked"
                                                        <!-- ENDIF --> /> 														{lang:"pictures","is_adult"} 													
                                             </label>											
                                             <!-- ENDIF -->											
                                             <!-- IF settings.enable_picture_comments -->													
                                             <br><label for="field_comments" class="xcheckbox">														
                                                 <input type="checkbox" name="comments" value="1" data-toggle="checkbox" id="field_comments" <!-- IF picture_comments -->checked="checked"
                                                        <!-- ENDIF --> /> 														{lang:"pictures","allow_comments"} 													
                                             </label>											
                                             <!-- ENDIF -->											
                                             <div  <!-- IF settings.enable_old_style_pictures -->style="display:none"
                                                 <!-- ENDIF -->> 												
                                                 <label class="xcheckbox" for="field_primary">													
                                                     <input type="checkbox" name="primary" value="1" data-toggle="checkbox" id="field_primary" <!-- IF picture_primary -->checked="checked"
                                                            <!-- ENDIF --> /> 													{lang:"pictures","set_primary"} 												
                                                 </label>											
                                             </div>												
                                             <input class="btn btn-primary pull-right" type="submit" name="submit_regular" value="{lang:"pictures","submit"}" id="regular_file_submit" />												
                                             <input class="btn btn-primary pull-right" type="button" name="submit_pending" value="{lang:"pictures","submit"}" id="pending_file_submit" style="display:none" onclick="doUploadFile();
                                           return false;" />										
                                             </dl>									
                                         </div>									
                                         <input type="hidden" name="issubmit" value="1" />									
                                         <input type="hidden" name="newfilename" id="newfilename" value="" />								
                                     </form>					
                                </div>					 		
                     </div>	
                 </div>	
                 <!-- IF picture_preview == "" AND settings.enable_flash_uploader -->		
                 <script type="text/javascript" language="javascript">
                     $(document).ready(function(){
                             $('#pending_file').uploadify({
                                     'uploader': '{virtual_path}media/utils/uploader.swf',
                                     'script': '{virtual_path}index.php',
                                     'method': 'GET',
                                     'fileDataName': 'pending_file',
                                     'scriptData': {'m':'account_pictures','p':'upload','mid':'{session.member_id}'},
                                     'auto': false,
                                     'buttonText': '{lang:"pictures","select_picture"}',
                                     'fileDesc': '{picture_extensions}',
                                     'fileExt': '{picture_extensions}',
                                     'sizeLimit': '{picture_maxsize}',
                                     onComplete: function (a, b, c, d, e) {
                                             $('#newfilename').val(d);
                                             $('#fileuploadform').submit();
                                     },
                                     onInit: function () {
                                             $('#regular_file_select').hide();
                                             $('#regular_file_submit').hide();
                                             $('#pending_file_submit').show();
                                     },
                                     onSelect: function () {
                                             $('#newfilename').val('x');
                                     },
                                     onCancel: function () {
                                             $('#newfilename').val('');
                                     }<!-- IF settings.debug -->,
                                     onError: function (a, b, c, d) {
                                             alert(d.type + "\n" + d.status + "\n" + d.text + "\n");
                                     }<!-- ENDIF -->
                             });
                     });
                     function doUploadFile()
                     {
                             if ( !$('#newfilename').val() ) {
                                     alert("{lang:"pictures","empty_filename"}");
                                     return false;
                             }
                             $('#pending_file').uploadifyUpload()
                     }
             </script>	
                 <!-- ENDIF -->
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