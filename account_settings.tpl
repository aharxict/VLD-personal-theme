<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="account/settings/",url2="index.php?m=account_settings",name="settings|frm_settings"}</li>
            <li class="active">{anchor:url1="account/settings/",url2="index.php?m=account_settings",name="settings|frm_account"}</li>
         </ol>
    </div>
    
     <div class="col-sm-12 margin-b-15 actionbuttons">
        <div class="btn-group">
            {anchor:url1="account/settings/",url2="index.php?m=account_settings",name="settings|opt_settings",class="active btn btn-primary"}
            {anchor:url1="account/notifications/",url2="index.php?m=account_notifications",name="settings|opt_notifications",class="btn btn-primary"}
            <!-- IF session.can_change_privacy_settings -->
                    {anchor:url1="account/privacy/",url2="index.php?m=account_privacy",name="settings|opt_privacy",class="btn btn-primary"}
            <!-- ENDIF -->
            <!-- IF app_license == "commercial" -->
                    <!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
                            {anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="settings|opt_upgrade",class="btn btn-primary"}
                    <!-- ENDIF -->
                    <!-- IF settings.enable_credits -->
                            {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="settings|opt_credits",class="btn btn-primary"}
                    <!-- ENDIF -->
                    <!-- IF settings.enable_upgrades AND session.can_upgrade_account OR settings.enable_credits -->
                            {anchor:url1="account/upgrade/orders/",url2="index.php?m=account_upgrade&p=orders",name="settings|opt_orders",class="btn btn-primary"}
                    <!-- ENDIF -->
            <!-- ENDIF -->
         </div>
     </div>

     <div class="col-sm-9">
     
        <!-- INCLUDE message.tpl -->

            <div class="panel panel-default">
                 <div class="panel-heading">{lang:"settings","app_settings"}</div> 
                 <div class="panel-body">
                    <!-- IF hide_content != "1" -->
                        
                		<form name="edit" method="post" class="form-horizontal" action="">
                		
    					
    								<div class="form-group">
                      <label for="field_username" class="col-sm-3 control-label">{lang:"settings","username"}</label>
    								  <div class="col-sm-9">
                        <input type="text" class="form-control text" id="field_username" name="username" value="{username}" maxlength="32" size="32" disabled="disabled" /></dd>
    							    </div>
                    </div>
                    
                  	<div class="form-group" >
                      <label for="field_password" class="col-sm-3 control-label">{lang:"settings","password"}</label>
    								  <div class="col-sm-9">
                        <input type="password" class="form-control text" id="field_password" name="password" value="{password}" size="20" maxlength="32" />
                       </div>
                    </div>
                    
    								<div class="form-group">
                      <label for="field_password2" class="col-sm-3 control-label">{lang:"settings","password2"}</label>
    								  <div class="col-sm-9">
                         <input type="password" class="form-control text" id="field_password2" name="password2" value="{password2}" size="20" maxlength="32" />
    								  </div>
    								</div>
                    
                    <div class="form-group">
                      <label for="field_email" class="col-sm-3 control-label">{lang:"settings","email"}</label>
    								  <div class="col-sm-9">
                        <input type="text" class="form-control text" id="field_email" name="email" value="{email}" maxlength="64" size="32" />
                      </div>
                    </div>
                    
    								<div class="form-group">
                      <label for="field_timezone" class="col-sm-3 control-label">{lang:"settings","timezone"}</label>
    								  <div class="col-sm-9">
                        <select class="form-control select" name="timezone" id="field_timezone">{dropdownlist:timezones,timezone}</select>
                      </div>
                    </div>
                      
    								<div class="form-group">
                      <label for="field_timeformat" class="col-sm-3 control-label">{lang:"settings","timeformat"}</label>
    								  <div class="col-sm-9"> 
                         <select class="form-control select" name="timeformat" id="field_timeformat">{dropdownlist:timeformats,timeformat}</select>
                       </div>
                    </div>
                    
    								<!-- IF session.can_change_language -->
    									<div class="form-group">
                        <label for="field_language" class="col-sm-3 control-label">{lang:"settings","language"}</label>
                        <div class="col-sm-9">
    									     <select class="select form-control" name="language" id="field_language">{dropdownlist:languages,language}</select>
                        </div>
                      </div>
    								<!-- ENDIF -->
                    
    								<!-- IF session.can_change_template -->
    									<div class="form-group">
                        <label for="field_template" class="col-sm-3 control-label">{lang:"settings","template"}</label>
    									  <div class="col-sm-9">
                          <select class="select form-control" name="template" id="field_template">{dropdownlist:templates,template}</select>
                        </div>
                      </div>
    								<!-- ENDIF -->
                    
    								<!-- IF settings.enable_pictures AND settings.adult_images AND session.can_view_adult_images -->
    									<div class="form-group">
    										<label class="col-sm-9 col-sm-offset-3" for="field_showadult" >
    											<input type="checkbox" data-toggle="checkbox" name="showadult" value="1" id="field_showadult" <!-- IF showadult -->checked="checked"<!-- ENDIF --> />
    											{lang:"settings","showadult"}
    										</label>
    									</div>
    								<!-- ENDIF -->
    								<!-- IF settings.enable_member_rating -->
    									<div class="form-group">
    										<label  for="field_rated" class=" col-sm-9 col-sm-offset-3">
    											<input type="checkbox" data-toggle="checkbox" name="rated" value="1" id="field_rated" <!-- IF rated -->checked="checked"<!-- ENDIF --> />
    											{lang:"settings","allow_rating"}
    										</label>
    									</div>
    								<!-- ENDIF -->
        				
                   <div class="">
                     <input class="pull-right submit btn btn-primary" type="submit" name="submit" value="{lang:"settings","submit"}" />
                   </div>
    						
                  <input type="hidden" name="issettings" value="1" />
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