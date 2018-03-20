<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="account/events/",url2="index.php?m=account_events",name="event_pictures|frm_events"}</li>
            <li><a href="{virtual_path}{event_edit_link}">{lang:"event_pictures","frm_editevent"}</a></li>
            <li><a href="{virtual_path}{event_pictures_view_link}">{lang:"event_pictures","frm_pictures"}</a></li>
            <!-- IF picture_id -->
            <li class="active"><a href="{virtual_path}{event_pictures_edit_link}">{lang:"event_pictures","frm_editpicture"}</a></li>
            <!-- ELSE -->
            <li class="active"><a href="{virtual_path}{event_pictures_add_link}">{lang:"event_pictures","frm_addpicture"}</a></li>
            <!-- ENDIF -->
        </ol>                         
    </div> 
      
 <div class="btn-group profileactions col-lg-12">
    <a class="btn btn-primary" href="{virtual_path}{event_edit_link}">{lang:"event_pictures","opt_editevent"}</a>
    <a class="btn btn-primary" href="{virtual_path}{event_guests_view_link}">{lang:"event_pictures","opt_guests"}</a>
    <a class="btn btn-primary" href="{virtual_path}{event_comments_view_link}">{lang:"event_pictures","opt_comments"}</a>
    <a  class="btn btn-primary"href="{virtual_path}{event_pictures_view_link}">{lang:"event_pictures","opt_pictures"}</a>
    <!-- IF picture_id -->
            <a  class="btn btn-primary active" href="{virtual_path}{event_pictures_edit_link}" class="active">{lang:"event_pictures","opt_editpicture"}</a>
            <a  class="btn btn-primary" href="{virtual_path}{event_pictures_add_link}">{lang:"event_pictures","opt_addpicture"}</a>
    <!-- ELSE -->
            <a  class="btn btn-primary active"  href="{virtual_path}{event_pictures_add_link}" class="active">{lang:"event_pictures","opt_addpicture"}</a>
    <!-- ENDIF -->  
 </div>      
      
    <div class="col-sm-9">              
      <div class="well">  
        <h4><!-- IF picture_id -->{lang:"event_pictures","app_editpicture"}<!-- ELSE -->{lang:"event_pictures","app_addpicture"}<!-- ENDIF --></h4>
  	
        <div class="clearfix page_account_events_pictures_edit bg_white_alpha">
            <!-- IF hide_content != "1" -->
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12  padding-l-0 ">
                <div class="bg_white_alpha">
                    <div class="image">
                        <!-- IF picture_preview -->
                        <a class="picture_zoom" href="{top.virtual_pic_path}{session.media_path}{picture_filename}" id="picture_{picture_id}" target="_blank">
                            <img   class="img-responsive img-full" src="{virtual_pic_path}{session.media_path}{picture_preview}" alt="{lang:"event_pictures","viewpicture"}" border="0" /></a>
                        <div id="picture_{picture_id}_zoom" style="display:none"><img  class="img-responsive img-full" src="{top.virtual_pic_path}{session.media_path}{picture_filename}" alt="" border="0" /></div>
                        <!-- ELSE -->
                        <a href="#"><img  class="img-responsive img-full" src="{virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>
                        <!-- ENDIF -->
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 ">			
                <div class="padding-l-0 padding-r-0 clearfix">
                    <form id="fileuploadform" name="edit" method="post" action="" class="clearfix " enctype="multipart/form-data">
                        <div class="form-group">                  
                            <label for="field_description">{lang:"event_pictures","description"}</label></dt>
                            <textarea id="field_description" class="form-control" cols="40" rows="5" name="description">{picture_description}</textarea>
                        </div>
                        <!-- IF picture_preview == "" -->
                        <div class="form-group">   
                            <dl>
                                <dt id="regular_file_select"><label for="field_filename">{lang:"event_pictures","select_picture"}</label></dt>
                                <dd id="regular_file_browse"><input type="file" name="pending_file" id="pending_file" /><!-- IF settings.enable_flash_uploader --><a href="#" onclick="removeFlashUploader();return false;">{lang:"core","remove_flash_uploader"}</a><!-- ENDIF -->
                            </dl>
                        </div> 
                        <!-- ENDIF -->
                        <div class="form-group">
                            <label for="field_primary">{lang:"event_pictures","set_primary"}</label>
                            <select id="field_primary" name="primary" class="form-control">{dropdownlist:yesnobox,picture_primary}</select>
                        </div>
                        <input class="btn btn-primary pull-right " type="submit" name="submit_regular" value="{lang:"event_pictures","submit"}" id="regular_file_submit" />
                        <input class="btn btn-primary pull-right" type="button" name="submit_pending" value="{lang:"event_pictures","submit"}" id="pending_file_submit" style="display:none" onclick="doUploadFile();return false;" />
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
					'scriptData': {'m':'account_events_pictures','p':'upload','mid':'{session.member_id}'},
					'auto': false,
					'buttonText': '{lang:"event_pictures","select_picture"}',
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
					alert("{lang:"event_pictures","empty_filename"}");
					return false;
				}
				$('#pending_file').uploadifyUpload()
			}
                    </script>
            <!-- ENDIF -->
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