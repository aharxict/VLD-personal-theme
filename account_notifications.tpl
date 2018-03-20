<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
             <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
             <li>{anchor:url1="account/settings/",url2="index.php?m=account_settings",name="notifications|frm_settings"}</li>
             <li class="active">{anchor:url1="account/notifications/",url2="index.php?m=account_notifications",name="notifications|frm_notifications"}</li>
            </ol>    
        </div> 
                
        <div class="col-lg-12 margin-b-15 actionbuttons">
            <div class="btn-group">
               {anchor:url1="account/settings/",url2="index.php?m=account_settings",name="notifications|opt_settings",class="btn btn-primary"}
                {anchor:url1="account/notifications/",url2="index.php?m=account_notifications",name="notifications|opt_notifications",class="active btn btn-primary"}
                <!-- IF session.can_change_privacy_settings -->
                        {anchor:url1="account/privacy/",url2="index.php?m=account_privacy",name="notifications|opt_privacy",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- IF app_license == "commercial" -->
                        <!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
                                {anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="notifications|opt_upgrade",class="btn btn-primary"}
                        <!-- ENDIF -->
                        <!-- IF settings.enable_credits -->
                                {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="notifications|opt_credits",class="btn btn-primary"}
                        <!-- ENDIF -->
                        <!-- IF settings.enable_upgrades AND session.can_upgrade_account OR settings.enable_credits -->
                                {anchor:url1="account/upgrade/orders/",url2="index.php?m=account_upgrade&p=orders",name="notifications|opt_orders",class="btn btn-primary"}
                        <!-- ENDIF -->
            <!-- ENDIF -->
            </div>
        </div>    
                
        <div class="col-sm-9"> 

            <!-- INCLUDE message.tpl -->

            <div class="panel panel-default">
                 <div class="panel-heading">{lang:"notifications","app_notifications"}</div> 
                 <div class="panel-body">


                <!-- IF hide_content != "1" -->
                    <form name="edit" method="post" action="">
             
                        <!-- BEGIN settings -->
                     
                        <label class="padding-t-5" for="field_{setting_label}">
                            <input type="checkbox" data-toggle="checkbox" name="{setting_label}" value="1" id="field_{setting_label}" <!-- IF setting_value -->checked="checked"<!-- ENDIF --> />
                                &nbsp; {setting_name}
                        </label><br>
                        
                        <!-- END settings -->
                       <input class="pull-right submit btn btn-primary" type="submit" name="submit" value="{lang:"notifications","submit"}" />
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
