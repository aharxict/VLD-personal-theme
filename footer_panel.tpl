<div id="footpanel" class="visible-lg visible-md hidden-xs">
	<ul id="mainpanel">
	    <li class="chatpanel first"></li>
	    <li id="settingspanel" class="chatpanel panel-static">
                <a href="#" class="button settings"><span class="glyphicon glyphicon-cog"></span></a>
	        <div class="subpanel">
            	<h3  class="bg-primary"><span class="miminize"></span>{lang:"core","chat_settings"}</h3>
            	<div class="wrap">
            		<div class="status">
            			<span>{lang:"core","chat_status"}</span>
            			<a href="#" onclick="chatToggleStatus(1);return false;" id="chat-status-online" class="online <!-- IF session.statusonline == "1" -->active<!-- ENDIF -->">{lang:"core","chat_status_online"}</a>
            			<a href="#" onclick="chatToggleStatus(0);return false;" id="chat-status-invisible" class="invisible <!-- IF session.statusonline == "0" -->active<!-- ENDIF -->">{lang:"core","chat_status_invisible"}</a>
            			<div class="clear"></div>
            		</div>
            		<div class="sound">
            			<a href="#" id="chat-sound-notify" onclick="chatToggleSound();return false;" class="<!-- IF session.sound_notify -->on<!-- ELSE -->off<!-- ENDIF -->">{lang:"core","chat_sound_notify"}</a>
	            	</div>
		        </div>
	        </div>
	    </li>
	    <li id="alertpanel" class="chatpanel panel-static">
                <a href="#" class="button alerts <!-- IF session.notifications_new -->alerts-new<!-- ENDIF -->"><span class="glyphicon glyphicon-warning-sign"></span></a>
	        <div class="subpanel">
            	<h3  class="bg-primary"><span class="miminize"></span>{lang:"core","chat_notifications"}</h3>
            	<div class="wrap">
			        <ul>
						<!-- IF session.notifications -->
		        			<!-- BEGIN session.notifications -->
                    <!-- IF notify_id -->
		        				<li id="foot-notify-{notify_id}" <!-- IF new -->class="new"<!-- ENDIF -->>
		        					<a href="#" class="delete" onclick="deleteNotification('{lang:"core","delete_notification?"}', {notify_id});return false;">X</a>
		        					<p>{message} <span>({post_date})</span></p>
		        				</li>
                    <!-- ENDIF -->
		        			<!-- END session.notifications -->
						<!-- ELSE -->
							<li><p>{lang:"core","notify_none"}</p></li>
						<!-- ENDIF -->
			        </ul>
			    </div>
	        </div>
	    </li>
	    <li id="chatpanel" class="chatpanel panel-static" <!-- IF settings.enable_friends == "0" -->style="display:none"<!-- ENDIF -->>
        	<a href="#" class="button chat">
        		<span id="chat-friends-status" class="<!-- IF session.statusonline == "1" -->online<!-- ELSE -->invisible<!-- ENDIF -->">
        			<span class="glyphicon glyphicon-globe"></span> {lang:"core","chat_friends"}
        			<!-- IF session.friends_online --> (<strong>{session.total_friends_online}</strong>)<!-- ENDIF -->
        		</span>
        	</a>
	        <div class="subpanel">
            	<h3 class="bg-primary"><span class="miminize"></span>{lang:"core","chat_friends_online"}</h3>
            	<div class="wrap">
					<ul>
						<!-- IF session.friends_online -->
						    <!-- BEGIN session.friends_online -->
    							<li>
    								<a href="#" onclick="return chatInitIM({member_id},'{trim:username,25}',0,0,1)" class="<!-- IF show_status -->online<!-- ELSE -->offline<!-- ENDIF -->">
										<!-- IF picture -->
											<img src="{top.virtual_pic_path}{media_path}{picture}" alt="" />
										<!-- ELSE -->
											<img src="{top.virtual_tpl_path}{session.template}/media/user_picture_none.gif" alt="" />
										<!-- ENDIF -->
										{trim:username,22}
									</a>
								</li>
							<!-- END session.friends_online -->
						<!-- ELSE -->
                                                <li><span>{lang:"core","chat_friends_online_none"}</span></li>
						<!-- ENDIF -->
					</ul>
		        </div>
	        </div>
	    </li>
	    <li id="imtemplate" class="chatpanel impanel" style="display:none">
        	<a href="#" class="button im" title="XusernameX">XshortusernameX</a>
        	<span class="flag" style="display:none"></span>
	        <div class="subpanel">
            	<h3  class="bg-primary">
            		<span class="close" onclick="return closeIM(XidX)"></span>
            		<span class="miminize"></span>
            		XusernameX
            		<div class="clear"></div>
            	</h3>
            	<div class="info" style="text-align: right">
            		<a href="{virtual_path}<!-- IF settings.fancy_urls == "0" -->index.php?m=member_profile&id=<!-- ENDIF -->XusernameX" target="_blank" style="margin-right: 6px">{lang:"core","chat_profile"}</a>
            		<a href="#" onclick="chatBlockMember('{lang:"core","chat_block?"}','XidX');return false;">{lang:"core","chat_block"}</a>
            	</div>
            	<form name="chat-XidX" id="chat-form-XidX" onsubmit="chatSendMessage();return false;" action="">
            		<div class="wrap">
						<ul class="chatmessages">
						</ul>
					</div>
					<div class="chatsend">
						<input id="chat-message-XidX" type="text" autocomplete="off" name="message" value="" class="text" maxlength="255" />
					</div>
				</form>
	        </div>
	    </li>
	    <li class="chatpanel last"><div id="chatsndnotifyholder"></div></li>
	</ul>
</div>
<script type="text/javascript">

  
  $(function() {
      $('#footpanel').removeClass('footpanel');
  });

</script>
