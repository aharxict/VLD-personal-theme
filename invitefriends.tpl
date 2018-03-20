<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ol class="breadcrumb">
           <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
           <li class="active">{anchor:url1="invitefriends/",url2="index.php?m=invitefriends",name="tellfriend|frm_tellfriend"}</li>
        </ol>
	</div>

        <div class="col-sm-9">
            <div class="panel panel-default">
                <div class="panel-heading"><h4 class="pagetitle">{lang:"tellfriend","app_tellfriend"}</h4></div> 
                <div class="panel-body">
  			
                    <!-- IF hide_content != "1" -->

                        <!-- IF settings.enable_openinviter -->

                            <form name="edit" method="post" class=""  action="">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <div class="fieldset">
                                                <dl class="fieldset">
                                                    <dt><label for="field_provider_box">{lang:"tellfriend","provider"}</label></dt>
                                                    <dd>
                                                        <select class="select form-control" id="field_provider_box" name="provider_box">
                                                            <option>{lang:"tellfriend","select_invitees"}</option>
                                                            {oi_services}
                                                        </select>
                                                    </dd>
                                                    <dt><label>{lang:"tellfriend","email"}</label></dt>
                                                    <dd><input type="text" class="text form-control" name="email" style="width: 200px" value="{htmlentities:oi_email}" /></dd>
                                                    <dt><label>{lang:"tellfriend","password"}</label></dt>
                                                    <dd><input type="password" class="text form-control" name="password" style="width: 200px" value="{htmlentities:oi_password}" /></dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <div class="fieldset">
                                    <dl class="fieldset">
                                        <dd class="submit"><input class="submit" name="submit" value="{lang:"tellfriend","submit"}" type="submit" /></dd>
                                    </dl>
                                </div>
                                <input type="hidden" name="isfetchcontacts" value="1" />
                            </form>

                        <!-- IF oi_contacts -->

                            <form action="" method="POST" name="openinviter" id="openinviterform">
                                <div style="overflow:auto;max-height:150px;text-align:left;padding-top:10px;">
                                    {oi_contacts}
                                </div>
                                <dl class="fieldset">
                                    <dt><label for="field_message">{lang:"tellfriend","message"}</label></dt>
                                    <dd><textarea class="textarea textarea_full" id="field_message" name="message">{message}</textarea></dd>
                                    <dd class="submit"><input type="submit" name="send" value="{lang:"tellfriend","send"}" class="submit"></dd>
                                </dl>
                                <input type="hidden" name="issendrequests" value="1" />
                                <input type="hidden" name="email" value="{htmlentities:oi_email}" />
                                <input type="hidden" name="password" value="{htmlentities:oi_password}" />
                                <input type="hidden" name="provider_box" value="{oi_provider}" />
                                <input type="hidden" name="oi_session_id" value="{oi_session_id}" />
                            </form>

                        <!-- ENDIF --><!-- IF settings.enable_tellfriend --><br/><!-- ENDIF -->
                        <!-- ENDIF -->

                        <!-- IF settings.enable_tellfriend -->

                            <form name="edit" method="post" action="">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <div class="fieldset">
                                                <dl class="fieldset">
                                                    <dt><label for="field_self_name">{lang:"tellfriend","self_name"}</label></dt>
                                                    <dd><input type="text" class="text form-control" id="field_self_name" name="self_name" style="width: 230px" value="{self_name}" /></dd>
                                                </dl>
                                            </div>
                                        </td>
                                        <td style="padding-left: 10px">
                                            <div class="fieldset">
                                                <dl class="fieldset">
                                                    <dt><label for="field_self_email">{lang:"tellfriend","self_email"}</label></dt>
                                                    <dd><input type="text" class="text form-control" id="field_self_email" name="self_email" style="width: 230px" value="{self_email}" /></dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <table cellpadding="0" cellspacing="0">
                                    <!-- BEGIN friends_list -->
                                    <tr>
                                        <td>
                                            <div class="fieldset">
                                                <dl class="fieldset">
                                                    <dt><label for="field_friend{rowcnt}_name">{lang:"tellfriend","friend_name"} {number}</label></dt>
                                                    <dd><input type="text" class="text form-control" id="field_friend{rowcnt}_name" name="friend{rowcnt}_name" style="width: 230px" value="{name}" /></dd>
                                                </dl>
                                            </div>
                                        </td>
                                        <td style="padding-left: 10px">
                                            <div class="fieldset">
                                                <dl class="fieldset">
                                                    <dt><label for="field_friend{rowcnt}_email">{lang:"tellfriend","friend_email"} {number}</label></dt>
                                                    <dd><input type="text" class="text form-control" id="field_friend{rowcnt}_email" name="friend{rowcnt}_email" style="width: 230px" value="{email}" /></dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                    <!-- END friends_list -->
                                </table>
                                <div class="fieldset">
                                    <dl class="fieldset">
                                        <dt><label for="field_message">{lang:"tellfriend","message"}</label></dt>
                                        <dd class="form-inline"><textarea class="form-control textarea_full" id="field_message" name="message">{message}</textarea></dd>
                                        <!-- IF settings.tellfriend_captcha -->
                                        <dt><label for="field_captcha">{lang:"tellfriend","verify_number"}</label></dt>
                                        <dd class="form-inline">
                                            <input type="text" id="field_captcha" class="text form-control" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                                            <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                                        </dd>
                                        <!-- ENDIF -->
                                        <dd class="submit margin-t-15"><input class="submit btn btn-primary" name="submit" value="{lang:"tellfriend","submit"}" type="submit" /></dd>
                                    </dl>
                                </div>
                                <input type="hidden" name="istellfriend" value="1" />
                            </form>

                        <!-- ENDIF -->

                    <!-- ENDIF -->
                </div>
            </div>
        </div>
     <div class="col-sm-3">
         <!-- INCLUDE webffo_sidebar.tpl -->
     </div>                                                           
  </div>                                                           
</div>                                                           
<!-- INCLUDE footer.tpl -->