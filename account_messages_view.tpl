<!-- INCLUDE header.tpl -->



<div class="container">



<div class="row">

<div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
<div class="col-sm-12">
	 <div class="profileactions clearfix"> 
  			<div class="btn-group">
  				<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/inbox/","index.php?m=account_messages&p=inbox"}" class="active btn btn-primary">{lang:"messages","opt_inbox"} ({session.totalimessages})</a></li>
  				<a class="btn btn-primary" href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/sent/","index.php?m=account_messages&p=sent"}">{lang:"messages","opt_sent"} ({session.totalsmessages})</a></li>  
  			</div>
     </div>
 </div> 
    
<div class="col-sm-9">

      <div class="panel panel-default">
      	<div class="panel-heading">
      		 <!-- IF messages_pct -->
          <div class="pull-right message_progress" data-toggle="tooltip" title="{messages_info}" data-placement="top">
            <div class="progress progress-striped">
              <div   class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{messages_pct}" aria-valuemin="0" aria-valuemax="100" style="width: {messages_pct}%">
                <span class="sr-only">{messages_pct}%</span>
              </div>
            </div>
          </div>

  		<!-- ENDIF -->
      
  		<h4>{lang:"messages","app_message"}</h4>  
  		</div>
      <div class="panel-body">
    

                       
        <div class="clearfix">
          <div class="row">
              <div class="col-sm-2 col-xs-3 ">
                    <!-- INCLUDE member_sections_picture.tpl -->
              </div>
              <div class="col-sm-10 col-xs-9">
                      <a class="btn btn-default pull-right btn-xs" href="#" onclick="confirmForm('{lang:"messages","delete_one?"}', 'messages')">{lang:"messages","delete_button"}</a>
                    <div class="message_content">
                        <p>{message_body}</p>                                                           
                    </div>

                    <form name="messages" method="post" action="{virtual_path}{message_delete_link}">
                        <input type="hidden" name="message_id[{message_id}]" value="1" id="message_id_{message_id}" />
                    </form>
    
                    <div class="text-muted timestamp">{message_date} </div>  
 
                    
             </div>
          </div>
       </div>
      
       <!-- IF message_folder == "1" -->
      <hr>
        <h4>Send an answer to {member_username} </h4>
        <div class="row ">
        
            <div class="col-sm-2 col-xs-4 hidden-xs ">
                <div class="message_image profile_wrapper">
                    <!-- IF session.picture != '' -->
                    <img src="{vldthemes:a="thumbnail",path=session.media_path,filename=session.picture}" class="img-responsive img-full"> 
                    <!-- ELSE -->
                    <img src="{virtual_tpl_path}{session.template}/media/user_picture_none_0.jpg" class="img-responsive img-full">
                    <!-- ENDIF -->
                </div> 
            </div>
            
            <div class=" col-sm-10 col-xs-8 ">
                <div class="message_body">
                    <form method="post" name="message" class="clearfix" id="privatemessageform" action="{virtual_path}account/messages/compose/{member_id}">
                        <div class="form-group hide">
                            <label for="field_subject">{lang:"messages","subject"}</label>
                            <input class="form-control" maxlength="255" name="subject" type="text" value="{message_subject}" type="hidden" />
                        </div>

                        <div class="form-group">
                            <textarea placeholder="{lang:"messages","body"}" id="field_body" class="form-control" cols="40" rows="2" name="body" <!-- IF settings.message_chars_counter -->onkeyup="strcounter('field_body','field_body_count',this.value,{settings.max_message_chars})" onkeydown="strcounter('field_body','field_body_count',this.value,{settings.max_message_chars})" onchange="strcounter('field_body','field_body_count',this.value,{settings.max_message_chars})"<!-- ENDIF -->></textarea>
                        </div>

                        <input type="hidden" name="ismessage" value="1" />
                        <input class="btn btn-primary" name="submit" value="{lang:"messages","submit"}" type="submit">
                    </form>
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
