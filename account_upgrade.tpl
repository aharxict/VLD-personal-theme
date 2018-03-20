<!-- INCLUDE header.tpl -->

<div class="container">
    <div class="row">
        <div class="col-lg-12">
           <ol class="breadcrumb">
              <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
              <li>{anchor:url1="account/settings/",url2="index.php?m=account_settings",name="upgrade|frm_settings"}</li>
              <li class="active">{anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="upgrade|frm_upgrade"}</li>
          </ol>
      </div>
      <div class="col-sm-12 margin-b-15 actionbuttons">
         <div class="btn-group">
            {anchor:url1="account/settings/",url2="index.php?m=account_settings",name="upgrade|opt_settings",class="btn btn-primary"}

            {anchor:url1="account/notifications/",url2="index.php?m=account_notifications",name="upgrade|opt_notifications",class="btn btn-primary"}
            <!-- IF session.can_change_privacy_settings -->
            {anchor:url1="account/privacy/",url2="index.php?m=account_privacy",name="upgrade|opt_privacy",class="btn btn-primary"}
            <!-- ENDIF -->
            <!-- IF app_license == "commercial" -->
         
           <!-- IF upgrade_type == "credits" -->
             
              <!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
              {anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="upgrade|opt_upgrade",class="btn btn-primary "}
              <!-- ENDIF -->
              <!-- IF settings.enable_credits -->
              {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="upgrade|opt_credits",class=" active btn btn-primary"}
              <!-- ENDIF -->
           
            <!-- ELSE -->
            <!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
                   {anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="upgrade|opt_upgrade",class="active btn btn-primary"}
            <!-- ENDIF -->
            
            <!-- IF settings.enable_credits  -->
              <!-- IF upgrade_type == "credits" -->   
               {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="upgrade|opt_credits",class="active btn btn-primary"}
              <!-- ELSE -->
               {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="upgrade|opt_credits",class="btn btn-primary"}
              <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- IF settings.enable_upgrades AND session.can_upgrade_account OR settings.enable_credits -->
            {anchor:url1="account/upgrade/orders/",url2="index.php?m=account_upgrade&p=orders",name="upgrade|opt_orders",class="btn btn-primary"}
            <!-- ENDIF -->
            <!-- ENDIF -->
         </div>

    </div>
  
    <div class="col-sm-12"> <!-- INCLUDE message.tpl --> </div>
    <div class="col-sm-9">

            <!-- IF hide_content != "1" -->


                <div class="panel panel-default">
                      <div class="panel-heading"><h4>{lang:"upgrade","app_upgrade"}</h4></div>
                         <div class="panel-body">
                          <!-- BEGIN package_fields -->
                          <!-- IF rowcnt > "0" -->
                          <hr>
                          <!-- ENDIF -->
                                    
                           
                        <div class="row">
                             <div class="col-sm-9 text-justify upgrade_description">
                                 <h4>{package_name}</h4>
                                 {package_description}
                             </div>
                             <div class="col-sm-3 ">
                                 <a class="btn btn-block btn-upgrade btn-success" href="{package_upgrade_link}">{lang:"upgrade","app_upgrade"}</a>            
                             </div>
                       </div>
                               
                          <!-- END package_fields -->
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
