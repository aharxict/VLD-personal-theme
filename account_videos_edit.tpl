<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li>{anchor:url1="account/videos/",url2="index.php?m=account_videos",name="videos|frm_videos"}</li>
                <!-- IF video_id -->
                <li><a href="{virtual_path}{videos_edit_link}">{lang:"videos","frm_editvideo"}</a></li>
                <!-- ELSE -->
                <li class="active">{anchor:url1="account/videos/add/",url2="index.php?m=account_videos&p=add",name="videos|frm_addvideo"}</li>
                <!-- ENDIF -->
            </ol>
        </div>
        <div class="actionbuttons margin-b-15 col-lg-12">
            <div class="btn-group">
                <!-- IF video_id -->
                  <a href="{virtual_path}{videos_edit_link}" class="btn btn-default active">{lang:"videos","opt_editvideo"}</a>
                  <!-- IF settings.enable_video_comments -->
                          <a href="{virtual_path}{videos_comments_link}" class="btn btn-default">{lang:"videos","opt_viewcomments"}</a>
                  <!-- ENDIF -->
                {anchor:url1="account/videos/add/",url2="index.php?m=account_videos&p=add",name="videos|opt_addvideo",class="btn btn-default"}
                <!-- ELSE -->
                        {anchor:url1="account/videos/",url2="index.php?m=account_videos",name="videos|opt_viewvideos",class="btn btn-default"}
                        {anchor:url1="account/videos/add/",url2="index.php?m=account_videos&p=add",name="videos|opt_addvideo",class="btn btn-default active"}
               <!-- ENDIF -->
            </div>
       </div>
       
        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        
        <div class="col-sm-9">
           <div class="panel panel-default">
           <div class="panel-heading"><!-- IF video_id -->{lang:"videos","app_editvideo"}<!-- ELSE -->{lang:"videos","app_addvideo"}<!-- ENDIF -->
              <!-- IF videos_pct --> 
               <div title="{videos_info}" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{videos_pct}" aria-valuemin="0" aria-valuemax="100" style="width:{videos_pct}%">
                  <span class="sr-only">{videos_pct}% </span>
                </div>
              </div>  
              <!-- ENDIF -->
           </div>
           <div class="panel-body"></h4>
  		
                     <!-- IF hide_content != "1" -->
                      <div class="container-fluid">
                       <div class="row">
                         <div class="padding-l-0 col-md-3 col-sm-4 col-xs-12">
                            <div class="image">
                                    <!-- IF video_type -->
                                            <!-- IF meta_id -->
                                                    <a href="javascript:void(0)" onclick="showhide_field('video_preview')" title="{lang:"videos","viewvideo"}">
                                                            <img class="img-responsive img-full" src="{metavideo:video_id=meta_id,type=video_type,media="preview",preview=video_preview}" alt="{lang:"videos","viewvideo"}" border="0" /><br /></a>
                                            <!-- ELSE -->
                                                    <a href="#"><img class="img-responsive img-full"  src="{virtual_tpl_path}{session.template}/media/video_picture_none.gif" alt="{lang:"videos","viewvideo"}" border="0" /><br /></a>
                                            <!-- ENDIF -->
                                    <!-- ELSE -->
                                            <!-- IF video_preview -->
                                                    <a href="javascript:void(0)" onclick="showhide_field('video_preview')" title="{lang:"videos","viewvideo"}">
                                                        <img src="{virtual_pic_path}{session.media_path}{video_preview}" alt="{lang:"videos","viewvideo"}" border="0" /><br /></a>
                                            <!-- ELSE -->
                                                    <!-- IF video_filename -->
                                                            <a href="javascript:void(0)" onclick="showhide_field('video_preview')" title="{lang:"videos","viewvideo"}">
                                                                <img src="{virtual_tpl_path}{session.template}/media/video_picture_none.gif" alt="{lang:"videos","viewvideo"}" border="0" /><br /></a>
                                                    <!-- ELSE -->
                                                            <a href="#"><img class="img-responsive img-full"  src="{virtual_tpl_path}{session.template}/media/video_picture_none.gif" alt="{lang:"videos","viewvideo"}" border="0" /><br /></a>
                                                    <!-- ENDIF -->
                                            <!-- ENDIF -->
                                    <!-- ENDIF -->
                            </div>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">       
                                <div id="video_preview" style="margin-bottom:10px;display:none">
                                        <!-- IF video_type -->
                                                <!-- IF meta_id -->
                                                        {metavideo:video_id=meta_id,type=video_type}
                                                <!-- ENDIF -->
                                        <!-- ELSE -->
                                                <!-- IF video_filename -->
                                                        <!-- IF video_streaming == "1" -->
                                                                <div id="mpl"><a href="http://www.macromedia.com/go/getflashplayer">Get Flash</a> to see this player.</div>
                                                                <script type="text/javascript" language="javascript">
                                                                        swfobject.embedSWF("{virtual_path}media/utils/mediaplayer.swf", "mpl", "{settings.video_width}", "{settings.video_height}", "9.0.0", false,
                                                                                {'autostart':'false','file':'{top.virtual_pic_path}{session.media_path}{video_filename}','logo':'{top.virtual_path}media/overlay_player.png','wmode':'transparent'},
                                                                                {'allowfullscreen':'true','wmode':'transparent'}, {});
                                                                </script>
                                                        <!-- ELSE -->
                                                                <object width="400" height="370" id="mediaplayer" classid="CLSID:22D6F312-B0F6-11D0-94AB-0080C74C7E95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701" standby="Loading Microsoft Windows Media Player components..." type="application/x-oleobject" align="middle">
                                                                        <param name="filename" value="{top.virtual_pic_path}{session.media_path}{video_filename}">
                                                                        <param name="showstatusbar" value="1">
                                                                        <param name="autostart" value="0">
                                                                        <param name="animationatstart" value="1">
                                                                        <param name="transparentatstart" value="1">
                                                                        <param name="showcontrols" value="1">
                                                                        <param name="width" value="400">
                                                                        <param name="height" value="370">
                                                                        <embed type="application/x-mplayer2" pluginspage="http://www.microsoft.com/windows/mediaplayer/" src="{top.virtual_pic_path}{session.media_path}{video_filename}" align="middle" showstatusbar="1" animationatstart="1" showcontrols="1" autostart="1" transparentatstart="1" width="400" height="370"></embed>
                                                                </object>
                                                        <!-- ENDIF -->
                                                <!-- ENDIF -->
                                        <!-- ENDIF -->
                                </div>
                                <form id="fileuploadform" class="form-inline formtransform" name="edit" method="post" action="" enctype="multipart/form-data" onsubmit="doUploadFile();return false;">
                                        <div class="fieldset old_form">
                                                <dl class="fieldset">
                                                        <dt><label for="field_description">{lang:"videos","description"}</label></dt>
                                                        <dd><textarea id="field_description" class="form-control textarea_small" cols="40" rows="5" name="description">{video_description}</textarea></dd>
                                                        <!-- IF settings.enable_remote_videos -->
                                                                <dt><label for="field_video_type">{lang:"videos","video_type"}</label></dt>
                                                                <dd><select id="field_video_type" name="type" onchange="javascript:set_video_type(this.value)" class="form-control select" <!-- IF video_id -->disabled="disabled"<!-- ENDIF --> >{dropdownlist:video_types,video_type}</select></dd>
                                                        <!-- ENDIF -->
                                                        <!-- IF settings.enable_ffmpeg != "1" AND settings.enable_encodercloud != "1" AND video_filename != "" AND !video_type -->
                                                                <dt id="regular_file_select"><label for="field_previewfile">{lang:"videos","select_preview"}</label></dt>
                                                                <dd id="regular_file_browse"><input type="file" name="pending_file" id="pending_file" /><!-- IF settings.enable_flash_uploader --><a href="#" onclick="removeFlashUploader();return false;">{lang:"core","remove_flash_uploader"}</a><!-- ENDIF --></dd>
                                                        <!-- ENDIF -->
                                                        <!-- IF video_filename == "" -->
                                                                <dt id="regular_file_select" <!-- IF video_type -->style="display:none"<!-- ENDIF -->><label for="field_videofile">{lang:"videos","select_video"}</label></dt>
                                                                <dd id="regular_file_browse" <!-- IF video_type -->style="display:none"<!-- ENDIF -->><input type="file" name="pending_file" id="pending_file" /><!-- IF settings.enable_flash_uploader --><a href="#" onclick="removeFlashUploader();return false;">{lang:"core","remove_flash_uploader"}</a><!-- ENDIF --></dd>
                                                        <!-- ENDIF -->
                                                        <!-- IF video_id AND settings.enable_encodercloud AND video_streaming > "1" -->
                                                                <dt>
                                                                        <!-- IF video_streaming == "2" -->
                                                                                {lang:"videos","status_queue"}
                                                                        <!-- ELSE -->
                                                                                {lang:"videos","status_error"}
                                                                        <!-- ENDIF -->
                                                                </dt>
                                                        <!-- ENDIF -->
                                                        <dt id="remote_file_select" <!-- IF !video_type OR video_filename -->style="display:none"<!-- ENDIF -->><label for="field_meta_url">{lang:"videos","video_url"}</label></dt>
                                                        <dd id="remote_file_browse" <!-- IF !video_type OR video_filename -->style="display:none"<!-- ENDIF -->><input type="text" class="form-control text" id="field_meta_url" name="meta_url" value="{meta_url}" maxlength="255" size="64" /></dd>
                                                        <!-- IF settings.enable_videos_categories -->
                                                        <dt><label for="field_category_id">{lang:"videos","category"}</label></dt>
                                                                <dd><select class="form-control select" name="category_id" id="field_category_id"><option value="0">{lang:"videos","select_category"}</option>{dropdownlist:video_categories,video_category_id}</select></dd>
                                                        <!-- ENDIF -->
                                                        <!-- IF settings.enable_video_rating -->
                                                                <dt>
                                                                        <label for="field_rated" class="checkbox">
                                                                                <input type="checkbox" data-toggle="checkbox" name="rated" value="1" id="field_rated" <!-- IF video_rated -->checked="checked"<!-- ENDIF --> />
                                                                                {lang:"videos","is_rated"}
                                                                        </label>
                                                                </dt>
                                                        <!-- ENDIF -->
                                                        <!-- IF settings.adult_videos -->
                                                                <dt>
                                                                        <label for="field_adult"  class="checkbox" >
                                                                                <input type="checkbox"data-toggle="checkbox" name="adult" value="1" id="field_adult" <!-- IF video_adult -->checked="checked"<!-- ENDIF --> />
                                                                                {lang:"videos","is_adult"}
                                                                        </label>
                                                                </dt>
                                                        <!-- ENDIF -->
                                                        <!-- IF settings.enable_video_comments -->
                                                                <dt>
                                                                        <label for="field_comments" class="checkbox">
                                                                                <input type="checkbox"  data-toggle="checkbox" name="comments" value="1" id="field_comments" <!-- IF video_comments -->checked="checked"<!-- ENDIF --> />
                                                                                {lang:"videos","allow_comments"}
                                                                        </label>
                                                                </dt>
                                                        <!-- ENDIF -->
                                                    
                                                            
                                                       
                                                </dl>
                                             <div class="clear"></div>                           
                                            <input class="submit btn btn-primary" type="submit" name="submit_regular" value="{lang:"videos","submit"}" id="regular_file_submit" onclick="doUploadFile();return false;" />
                                            <input class="submit btn btn-primary" type="button" name="submit_pending" value="{lang:"videos","submit"}" id="pending_file_submit" style="display:none" onclick="doUploadFile();return false;" />
                                        </div>
                                        <input type="hidden" name="issubmit" value="1" />
                                        <input type="hidden" name="isclean"  id="isclean" value="0" />
                                        <input type="hidden" name="newfilename" id="newfilename" value="" />
                                </form>
                                </div>
                            </div>                               
                        </div>
                    </div>
                    <script type="text/javascript" language="javascript">
                            function set_video_type(type)
                            {
                                    if ( type != '' ) {
                                            $('#regular_file_select').hide();
                                            $('#regular_file_browse').hide();
                                            $('#remote_file_select').show();
                                            <!-- IF video_filename == "" -->
                                                    $('#remote_file_browse').show();
                                            <!-- ENDIF -->
                                    }
                                    else {
                                            $('#remote_file_select').hide();
                                            $('#remote_file_browse').hide();
                                            $('#regular_file_select').show();
                                            $('#regular_file_browse').show();
                                    }
                                    return true;
                            }
                            <!-- IF video_filename == "" -->
                                    <!-- IF settings.enable_flash_uploader -->
                                        
                                    <!-- ENDIF -->
                            <!-- ELSEIF settings.enable_ffmpeg != "1" AND settings.enable_flash_uploader -->
                                 
                            <!-- ENDIF -->
                            function doUploadFile()
                            {
                                    <!-- IF !video_filename -->
                                            if ( typeof($('#pending_fileUploader')[0]) != 'undefined' && $('#pending_fileUploader').css('display') != 'none' && (typeof($('#field_video_type')[0]) == 'undefined' || $('#field_video_type').val() == '') ) {
                                                    if ( !$('#newfilename').val() ) {
                                                            alert("{lang:"videos","empty_filename"}");
                                                            return false;
                                                    }
                                            }
                                    <!-- ENDIF -->
                                    <!-- IF settings.enable_videos_categories -->
                                    if ( $('#field_category_id').val() == 0 ) {
                                            alert("{lang:"videos","no_category"}");
                                            return false;
                                    }
                                    <!-- ENDIF -->
                                    <!-- IF !video_filename -->
                                            if ( typeof($('#pending_fileUploader')[0]) != 'undefined' && $('#pending_fileUploader').css('display') != 'none' && (typeof($('#field_video_type')[0]) == 'undefined' || $('#field_video_type').val() == '') ) {
                                    <!-- ELSE -->
                                            if ( typeof($('#pending_fileUploader')[0]) != 'undefined' && $('#pending_fileUploader').css('display') != 'none' && (typeof($('#field_video_type')[0]) == 'undefined' || $('#field_video_type').val() == '' && $('#newfilename').val()) ) {
                                    <!-- ENDIF -->
                                            $('#pending_file').uploadifyUpload();
                                    }
                                    else {
                                            $('#fileuploadform').submit();
                                    }
                                    return false;
                            }
                    </script>
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