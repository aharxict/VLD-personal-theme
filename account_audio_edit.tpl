<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
      <ol class="breadcrumb">        
        <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>				
        <li>{anchor:url1="account/audio/",url2="index.php?m=account_audio",name="audio|frm_audio"}</li>				
        <!-- IF audio_id -->					
        <li class="active" >
          <a href="{virtual_path}{audios_edit_link}">{lang:"audio","frm_editaudio"}</a>
        </li>				
        <!-- ELSE -->					
        <li class="active">{anchor:url1="account/audio/add/",url2="index.php?m=account_audio&p=add",name="audio|frm_addaudio"}</li>				
        <!-- ENDIF -->		
      </ol>    
    </div>
 <div class="profileactions col-lg-12">
  <div class="btn-group">          
        <!-- IF audio_id -->  					
            <a href="{virtual_path}{audios_edit_link}" class="btn btn-primary active">{lang:"audio","opt_editaudio"}</a>
            {anchor:url1="account/audio/add/",url2="index.php?m=account_audio&p=add",name="audio|opt_addaudio",class="btn btn-primary"}   				
        <!-- ELSE -->   					
        {anchor:url1="account/audio/",url2="index.php?m=account_audio",name="audio|opt_viewaudio", class="btn btn-primary"}   					
        {anchor:url1="account/audio/add/",url2="index.php?m=account_audio&p=add",name="audio|opt_addaudio",class="active btn btn-primary"}   				
        <!-- ENDIF -->               
      </div>                 
 </div>     
 
 <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
   
    <div class="col-sm-9">              
     <div class="panel panel-default">
          <div class="panel-heading"> 
            <!-- IF audio_id -->{lang:"audio","app_editaudio"}   <!-- ELSE -->{lang:"audio","app_addaudio"} <!-- ENDIF --> 
            
              <div title="{audio_info}" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{audio_pct}" aria-valuemin="0" aria-valuemax="100" style="width:{audio_pct}%">
                  <span class="sr-only">{audio_pct}% </span>
                </div>
              </div>    
          </div>
          
          <div class="panel-body">   
            	      

             <!-- IF hide_content != "1" -->    		
                <!-- IF audio_filename -->					
                <div id="mpl" class="player">
                  <a href="http://www.macromedia.com/go/getflashplayer">Get Flash</a> to see this player.
                </div>					
                    <script type="text/javascript" language="javascript">
                    swfobject.embedSWF("{top.virtual_path}media/utils/mediaplayer.swf", "mpl", "345", "19", "9.0.0", false,
                            {'autostart':'false','file':'{top.virtual_pic_path}{session.media_path}{audio_filename}','wmode':'transparent'},
                            {'allowfullscreen':'false','wmode':'transparent'}, {});
                  </script>				
                <!-- ENDIF -->				
                <form id="fileuploadform" class="formsimpletransform form-inline" name="edit" method="post" action="" enctype="multipart/form-data">							
                    <!-- IF audio_filename == "" -->								
                    <div class="form-group">                  
                      <label for="field_name">{lang:"audio","select_audio"} </label>
                     						    
                      <input type="file" name="pending_file" id="pending_file" />
							 
                    </div>              
                    <!-- ENDIF -->							
                    <div class="form-group">                
                      <label for="field_title">{lang:"audio","name"} </label>							  
                      <input type="text" id="field_title" name="title" value="{audio_name}" class="form-control " maxlength="64" />              
                    </div>					           		
                    <div class="form-group">							                 
                      <label for="field_description">{lang:"audio","description"} </label>							  
                           <textarea id="field_description" class="form-control" cols="40" rows="5" name="description">{audio_description}</textarea>              
                    </div>							
                    <!-- IF settings.enable_audio_rating -->							  
                    <div class="form-group">                  
                      <label for="field_rated">{lang:"audio","is_rated"}
                      </label>							    
                      <select id="field_rated" name="rated" class="form-control">{dropdownlist:yesnobox,audio_rated}
                      </select>                
                    </div>							
                    <!-- ENDIF -->							
                    <input class="btn btn-primary" type="submit" name="submit_regular" value="{lang:"audio","submit"}" id="regular_file_submit" onclick="doUploadFile();return false;" />							
                    <input class="btn btn-primary" type="button" name="submit_pending" value="{lang:"audio","submit"}" id="pending_file_submit" style="display:none" onclick="doUploadFile();return false;" />					
             					
                <input type="hidden" name="issubmit" value="1" />					
                <input type="hidden" name="newfilename" id="newfilename" value="" />				
              </form>			
 	
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