<!-- IF active_module == "pictures" -->
	<!-- IF orderby_box -->
		<!-- INCLUDE pictures_sidebar.tpl -->
	<!-- ENDIF -->
<!-- ELSEIF active_module == "videos" -->
	<!-- IF orderby_box -->
		<!-- INCLUDE videos_sidebar.tpl -->
	<!-- ENDIF -->
<!-- ELSEIF active_module == "blogs" -->
	<!-- IF orderby_box -->
		<!-- INCLUDE blogs_sidebar.tpl -->
	<!-- ENDIF -->
<!-- ENDIF -->
<!-- IF loggedin -->
	<!-- IF settings.enable_guestbooks AND session.new_guestbooks OR settings.enable_gifts AND session.new_gifts OR session.new_messages OR settings.enable_friends AND session.new_friends OR settings.enable_friends AND session.new_friends -->
		<div class="sidebox_wrap">
			<h5><span>{lang:"core","alerts"}</span></h5>
			<div class="sidebox">
				<div class="alerts">
					<table class="plain">
						<!-- IF settings.enable_guestbooks AND session.new_guestbooks -->
							<tr>
								<td>
									<img src="{top.virtual_tpl_path}{session.template}/media/activities/guestbook.png" align="absmiddle" alt="" />
									<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/guestbook/unapproved/","index.php?m=account_guestbook&p=unapproved"}">
										{session.new_guestbooks}
										<!-- IF session.new_guestbooks > "1" -->{lang:"core","alerts_guestbooks"}<!-- ELSE -->{lang:"core","alerts_guestbook"}<!-- ENDIF -->
									</a>
								</td>
							</tr>
						<!-- ENDIF -->
						<!-- IF settings.enable_gifts AND session.new_gifts -->
							<tr>
								<td>
									<img src="{top.virtual_tpl_path}{session.template}/media/activities/gift.png" align="absmiddle" alt="" />
									<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/","index.php?m=account_gifts"}">
										{session.new_gifts}
										<!-- IF session.new_gifts > "1" -->{lang:"core","alerts_gifts"}<!-- ELSE -->{lang:"core","alerts_gift"}<!-- ENDIF -->
									</a>
								</td>
							</tr>
						<!-- ENDIF -->
						<!-- IF session.new_messages -->
							<tr>
								<td>
									<img src="{top.virtual_tpl_path}{session.template}/media/activities/comment.png" align="absmiddle" alt="" />
									<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/","index.php?m=account_messages"}">
										{session.new_messages}
										<!-- IF session.new_messages > "1" -->{lang:"core","alerts_messages"}<!-- ELSE -->{lang:"core","alerts_message"}<!-- ENDIF -->
									</a>
								</td>
							</tr>
						<!-- ENDIF -->
						<!-- IF settings.enable_friends AND session.new_friends -->
							<tr>
								<td>
									<img src="{top.virtual_tpl_path}{session.template}/media/activities/friend.png" align="absmiddle" alt="" />
									<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/friends/requests/","index.php?m=account_friends&p=requests"}">
										{session.new_friends}
										<!-- IF session.new_friends > "1" -->{lang:"core","alerts_friends"}<!-- ELSE -->{lang:"core","alerts_friend"}<!-- ENDIF -->
									</a>
								</td>
							</tr>
						<!-- ENDIF -->
					</table>
				</div>
			</div>
		</div>
	<!-- ENDIF -->
<!-- ELSE -->
	<div class="sidebox_wrap">
		<h5><span>{lang:"core","login_header"}</span></h5>
		<div class="sidebox">
			<div class="login">
				<form method="post" name="login" action="{virtual_path}{ifelse:settings.fancy_urls,"1","account/login/","index.php?m=account_login"}">
					<div class="fieldset">
						<dl class="fieldset">
							<dt><label for="loginbox_username">{lang:"core","login_username"}</label></dt>
							<dd><input id="loginbox_username" maxlength="64" size="10" type="text" name="username" value="" class="text username" /></dd>
							<dt><label for="loginbox_password">{lang:"core","login_password"}</label></dt>
							<dd><input id="loginbox_password" maxlength="32" size="10" type="password" name="password" value="" class="text password" /></dd>
							<dt><label for="loginbox_nonxpcookie"><input type="checkbox" name="nonxpcookie" value="1" class="checkbox" id="loginbox_nonxpcookie" /> {lang:"core","login_remember_me"}</label></dt>
							<dd class="submit"><input type="submit" name="login" value="{lang:"core","login_submit"}" class="submit" /></dd>
						</dl>
					</div>
					<input type="hidden" name="islogin" value="1" />
					<div class="lostpass">{anchor:url1="account/lostpass/",url2="index.php?m=account_lostpass",name="core|login_forgot_pass"}</div>
				</form>
			</div>
		</div>
	</div>
<!-- ENDIF -->
<!-- IF active_module == "homepage" -->
	{search:type="members",fields="gender1|gender2|age|country"}
<!-- ELSE -->
	{members:limit=12,photos=1,orderby="lastvisit",cache_time=0,cache_name="online",template="ext.members_online.tpl"}
<!-- ENDIF -->
{polls:polls=""}
<div class="banner">{banners:group="sidebar"}</div>
