<!-- INCLUDE header.tpl -->



<div class="container">

<!-- INCLUDE message.tpl -->

<div class="row">
<div class="col-sm-9">

<!-- IF hide_content != "1" -->

	 <div class="profileactions clearfix"> 
  			<div class="btn-group">
  				<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/inbox/","index.php?m=account_messages&p=inbox"}" class="active btn btn-primary">{lang:"messages","opt_inbox"} ({session.totalimessages})</a></li>
  				<a class="btn btn-primary" href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/sent/","index.php?m=account_messages&p=sent"}">{lang:"messages","opt_sent"} ({session.totalsmessages})</a></li>  
  			</div>
     </div>
		

      <div class="panel panel-default">
      	<div class="panel-heading">
      		 <!-- IF messages_pct -->
          <div class="pull-right message_progress" title="{messages_info}" data-toggle="tooltip" data-placement="top" >
            <div style="margin-top:0" class="progress progress-striped">
              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{messages_pct}" aria-valuemin="0" aria-valuemax="100" style="width: {messages_pct}%">
                <span class="sr-only">{messages_pct}%</span>
              </div>
            </div>
          </div>

  		<!-- ENDIF -->
      
  		<h4>{lang:"messages","app_compose"}</h4>  
  		</div>
      <div class="panel-body">
                           
        <div class="clearfix">
          <div class="row">
              <div class="col-xs-2">
                    <!-- INCLUDE member_sections_picture.tpl -->
              </div>
              <div class="col-xs-10">
                    <form method="post" name="message" action="">
                                    <div class="form">

                                        <div class="fieldset">
                                            <dl class="fieldset margin-0">
                                                <dt class="hidden"><label for="field_subject">{lang:"messages","subject"}</label></dt>
                                                <dd class="hidden"><input class="form-control text_small" id="field_subject" type="text" name="subject" maxlength="255" value="None" /></dd>
                                                <dt>
                                                <label for="field_body">{lang:"messages","body"}<!-- IF settings.message_chars_counter --> <span style="font-weight:normal">({character_count})</span><!-- ENDIF --></label>
                                                </dt>
                                                <dd>
                                                    <textarea id="field_body" class="form-control textarea_small" cols="40" rows="5" name="body" <!-- IF settings.message_chars_counter -->onkeyup="strcounter('field_body','field_body_count',this.value,{settings.max_message_chars})" onkeydown="strcounter('field_body','field_body_count',this.value,{settings.max_message_chars})" onchange="strcounter('field_body','field_body_count',this.value,{settings.max_message_chars})"<!-- ENDIF -->>{message_body}</textarea>
                                                </dd>
                                                <dd class="submit" style="padding-bottom:5px">
                                                    <!-- IF settings.pm_enable_smilies -->
                                                    <div class="smilies" style="float: right">
                                                        <a href="#" onclick="showhide_field('smilies_popup_box');
                                                                                                                        return false;"><img src="{virtual_tpl_path}{session.template}/media/smilies.png" border="0" align="absmiddle" />
                                                            <div class="smilies-inner">
                                                                <div class="smiliesbox" style="display: none" id="smilies_popup_box">
                                                                    <!-- BEGIN smilies -->
                                                                    <div class="smiliesitem pull-right"><a href="#" onclick="selectSmiley({smiley_id}, 'field_body');
                                                                                                                        showhide_field('smilies_popup_box');
                                                                                                                        return false;" title="{name} - {shortcut}"><img src="{top.virtual_pic_path}{filename}" alt="{name} - {shortcut}" border="0" align="absmiddle" /><br /></a></div>
                                                                    <!-- IF rowcnt > "0" AND rowcnt mod "6" == "5" --><div class="clear"></div><!-- ENDIF -->
                                                                    <!-- END smilies -->
                                                                </div>
                                                            </div>
                                                    </div>
                                                    <!-- ENDIF -->
                                                    <div class="clear"></div>
                                                </dd>
                                            </dl>
                                        </div>
                                        <input type="hidden" name="ismessage" value="1" />

                                    </div>
                                    <div class="itemfooter margin-t-15 margin-b-15 btn-group">
                                        <!-- IF quick_messages -->
                                        <a class="btn btn-default" href="#" onclick="showhide_field('pmtemplates', '')">{lang:"messages","select_template"}</a>
                                        <!-- ENDIF -->
                                        <a class="btn btn-default"  href="#" onclick="showhide_field('pmhistory', '')">{lang:"messages","history"}</a>
                                    </div>



                                    <!-- IF quick_messages -->
                                    <div class="entry" style="display:none" id="pmtemplates">
                                        <select class="form-control" id="field_quickmessages" name="quickmessages" onchange="loadquickmessage(this.value); vldToggleObject('pmtemplates');">
                                            <option value="0">{lang:"messages","use_template"}</option>
                                            {dropdownlist:quick_messages}
                                        </select>
                                    </div>
                                    <!-- ENDIF -->

                                    <input class="pull-right btn btn-primary margin-t-15" name="submit" value="{lang:"messages","submit"}" type="submit" />&nbsp;

                                    <div class="entry">
                                        <div id="pmhistory" class="pmhistory" style="display:none;position:relative">
                                            <!-- IF message_history -->
                                            <!-- BEGIN message_history -->
                                            <p class="row{rownum}">
                                                {member_username} - {message_date}<br />
                                                {message_body}
                                            </p>
                                            <!-- END message_history -->
                                            <!-- ELSE -->
                                            <p>{lang:"messages","no_history"}</p>
                                            <!-- ENDIF -->
                                        </div>
                                    </div>
               
                     </form>
                        <script type="text/javascript" language="javascript">
                            var smilies = [{smilies_str}];
                                function loadquickmessage(id) {
                                    var quick_messages = {quick_messages_str};
                                if ((!$('#field_subject').val() && !$('#field_subject').val()) || confirm('{lang:"messages","new_template_replace"}')) {
                                    $('#field_subject').val(quick_messages[id]['subject']);
                                    $('#field_body').val(quick_messages[id]['message']);
                                }
                                $('#field_quickmessages').val(0);
                            }
                        </script>
               
                  
                    
             </div>
          </div>
       </div>
      
       

    
       
       
       
        </div>
    </div>
   <!-- ENDIF -->
</div>
<div class="col-sm-3">
  <!-- INCLUDE webffo_account_sidebar.tpl -->
	<!-- INCLUDE webffo_sidebar.tpl -->
</div>
</div>
</div>

 
<!-- INCLUDE footer.tpl -->