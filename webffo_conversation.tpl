<?php 

	$pct = $SESSION->conf['maxmessages'] ? round((($SESSION->conf['totalimessages']+$SESSION->conf['totalsmessages'])/$SESSION->conf['maxmessages'])*100) : 0;
	$percentage = $pct <= 100 ? $pct : 100;
  
  include SYS_PATH . 'includes/languages/' . SYS_LANG . '/lang.lib.account_messages.php';
  $messages_info = ($LANG['messages']['messages_info']);
	$messages_info = str_replace("%1%", ($SESSION->conf['totalimessages']+$SESSION->conf['totalsmessages']), $messages_info);
	$messages_info = str_replace("%2%", $SESSION->conf['maxmessages'], $messages_info);  
  
  if(!defined('VT_CONV_LOADED')) {
?>
<div id="conv_holder" class="container" >
    <div class="row no-gutter">
        <div class="col-sm-12" id="conv_header">
            <div class="form-inline">
            
                <div class="btn-group pull-right">
                      <button id="conv_dd" type="button" class="hidden-xs btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {vldthemes:a="lang",key="conv_more"}  <span class="caret"></span>
                      </button>
                      <button id="conv_toggle" class="btn btn-primary btn-xs" onclick="return hideConversations()"><span class="glyphicon glyphicon-remove"></span></button>
                      
                      <ul class="dropdown-menu">
                       <li><a onclick="return deleteConversation()" href="#"><span class="glyphicon glyphicon-trash"></span> {vldthemes:a="lang",key="conv_del"}</a></li>
                       <li><a onclick="return setConversationblock()" href="#"><span class="glyphicon glyphicon-remove-circle"></span> {vldthemes:a="lang",key="conv_block"}</a></li>
                      </ul>
                </div>
               
               <?php 
                  if($percentage > 75) {  
               ?>
                
                <div class="message_progress pull-right" style="margin:0 15px; width:150px">
                    <div style="margin-top:0" class="progress progress-striped">
                      <div class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $percentage ?>%">
                        <span class=""><?php echo $percentage ?>%</span>
                      </div>
                    </div>
                </div>
                <span class="pull-right">
                  <span style="color:#fff;font-size:18px" data-toggle="tooltip" data-placement="bottom" title="<?= $messages_info ?>"><span class="glyphicon glyphicon-question-sign"></span></span>
                </span>
                <?php } ?>
            
                <button onclick="toggleConvParts()" class="btn btn-xs btn-default visible-xs"><span class="glyphicon glyphicon-user"></span> {vldthemes:a="lang",key="conv_my"}</button>
                <input class="hidden-xs search form-control input-sm" placeholder="{vldthemes:a="lang",key="conv_search"}" />
                <button class="hidden-xs sort btn btn-default btn-xs" data-sort="name">{vldthemes:a="lang",key="conv_sort"}</button>
            </div>
       </div>                       
        <div class="col-sm-3 users" id="conv_members">
            <div id="conv_members_loading" class="text-center"><span class="label label-primary">{vldthemes:a="lang",key="conv_loading_members"}</span></div>
            <div id="conv_members_none" class="text-center" style="display:none"><span class="label label-warning">{vldthemes:a="lang",key="conv_none_members"}</span></div>
            <ul id="conv_member_list" class="list"></ul>
          </div>
        <div class="col-sm-9 messages hidden-xs" id="conv_messages">
            <div id="conv_option_button" style="display:none" class="text-center"><span class="btn btn-xs btn-default" onclick="getConversationHistory()"><span class="glyphicon glyphicon-time"></span> {vldthemes:a="lang",key="conv_history"}</span></div>
            <div id="conv_messages_inner">
            <div id="conv_messages_list">
                <p id="conv_none">{vldthemes:a="lang",key="conv_select"}<br>
                  <span class="glyphicon glyphicon-user"></span>
                  <span class="text-primary glyphicon glyphicon-comment"></span>
                </p>
            </div>
           </div>
         
         <div id="conv_write">
            <div class="container-fluid">
              <div class="row">
                  <div style="padding-right:0" class="col-xs-8 col-sm-10 write_msg">
                      <textarea class="form-control" id="conv_txt"></textarea>
                       <!-- IF settings.pm_enable_smilies -->
                        <div class=" smilies_holder smilies clearfix">
                            <a class="pull-right" href="#" onclick="showhide_field('smilies_popup_box'); return false;"><img src="{virtual_tpl_path}{session.template}/media/smilies.png" border="0" align="absmiddle" /></a>
                                <div id="smilies_popup_box" style="display:none"  class="clearfix smilies-inner">
                                    <div style="clear:both" class="clearfix smiliesbox" style="display: none" id="smilies_popup_box">
                                        <!-- BEGIN smilies -->
                                        <div class="smiliesitem pull-right"><a href="#" onclick="selectSmiley({smiley_id}, 'conv_txt'); showhide_field('smilies_popup_box'); return false;" title="{name} - {shortcut}"><img style="max-width:26px" src="{top.virtual_pic_path}{filename}" alt="{name} - {shortcut}" border="0" align="absmiddle" /><br /></a></div>
                                        <!-- IF rowcnt > "0" AND rowcnt mod "8" == "7" --><div class="clear"></div><!-- ENDIF -->
                                        <!-- END smilies -->
                                    </div>
                                </div>
                        </div>
                        <!-- ENDIF -->
                  </div>
                  <div class="col-sm-2 col-xs-3 write_add">
                    <button class="btn btn-sm btn-success" onclick="setConverationMessage(this)">
                    <span class="glyphicon glyphicon-envelope"></span> &nbsp; {vldthemes:a="lang",key="conv_send"}</button>
                  </div>
              </div>
            </div>
          </div>   
   
        </div>
    </div>  
    
   <div class="text-center conv_none_messages" style="display:none"><span class="label label-warning">{vldthemes:a="lang",key="conv_none_messages"}</span></div>
  </div>
  
  <script type="text/javascript">
   var smilies = [{smilies_str}];
   </script>
   
<?php 
  define('VT_CONV_LOADED',1);
} 

?>  