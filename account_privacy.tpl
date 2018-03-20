<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li>{anchor:url1="account/settings/",url2="index.php?m=account_settings",name="privacy|frm_settings"}</li>
                <li class="active">{anchor:url1="account/privacy/",url2="index.php?m=account_privacy",name="privacy|frm_privacy"}</li>
            </ol>    
        </div> 
                
        <div class="margin-b-15 actionbuttons col-lg-12">
            <div class="btn-group">
                {anchor:url1="account/settings/",url2="index.php?m=account_settings",name="privacy|opt_settings",class="btn btn-primary"}
                {anchor:url1="account/notifications/",url2="index.php?m=account_notifications",name="privacy|opt_notifications",class="btn btn-primary"}
                <!-- IF session.can_change_privacy_settings -->
                {anchor:url1="account/privacy/",url2="index.php?m=account_privacy",name="privacy|opt_privacy",class="active",class="btn btn-primary active"}
                <!-- ENDIF -->
                <!-- IF app_license == "commercial" -->
                <!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
                {anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="privacy|opt_upgrade",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- IF settings.enable_credits -->
                {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="privacy|opt_credits",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- IF settings.enable_upgrades AND session.can_upgrade_account OR settings.enable_credits -->
                {anchor:url1="account/upgrade/orders/",url2="index.php?m=account_upgrade&p=orders",name="privacy|opt_orders",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- ENDIF -->
            </div>
        </div>    
                
        <div class="col-sm-9"> 

            <!-- INCLUDE message.tpl -->

            <div class="panel panel-default">
                 <div class="panel-heading">{lang:"privacy","app_privacy"}</div> 
                 <div class="panel-body">
                    <!-- IF hide_content != "1" -->
                     <form name="edit" method="post" class="clearfix form-horizontal" action="">
                             
                         <!-- BEGIN settings -->
                             <div class="form-group">
                                <!-- IF setting_label != "access_guestbook_moderate" -->
                                <label class="col-sm-4 control-label" for="field_{setting_label}">{setting_name}</label>
                                <!-- ENDIF -->
                                <!-- IF setting_label == "access_profile" -->
                                <div class="col-sm-2">
                                  <select class="form-control" name="{setting_label}" id="field_{setting_label}">{dropdownlist:top.accesstypeprofile,setting_value}</select>
                                </div>
                                <!-- ELSEIF setting_label == "access_guestbook_moderate" -->
                                <div class="col-sm-8">
                                <label class="xcheckbox" for="field_{setting_label}">
                                    {setting_name} &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="checkbox" data-toggle="checkbox" name="{setting_label}" value="1" id="field_{setting_label}" <!-- IF setting_value -->checked="checked"<!-- ENDIF --> />
                                </label>
                                </div>
                                <!-- ELSE -->
                                 <div class="col-sm-4">
                                     <select class="form-control" name="{setting_label}" id="field_{setting_label}">{dropdownlist:top.accesstypebox,setting_value}</select>
                                 </div>
                                <!-- ENDIF -->
                             </div>
                        <!-- END settings -->
                                        
                                            
                        <input class="pull-right btn btn-primary" type="submit" name="submit" value="{lang:"privacy","submit"}" />
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
