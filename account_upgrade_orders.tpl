<!-- INCLUDE header.tpl -->

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li>{anchor:url1="account/settings/",url2="index.php?m=account_settings",name="upgrade|frm_settings"}</li>
                <li clas="active">{anchor:url1="account/upgrade/orders/",url2="index.php?m=account_upgrade&p=orders",name="upgrade|frm_orders"}</li>
            </ol>
        </div>
        <div class="col-sm-12 margin-b-15 actionbuttons">

            <div class=" btn-group">
                {anchor:url1="account/settings/",url2="index.php?m=account_settings",name="upgrade|opt_settings",class="btn btn-primary"}
                {anchor:url1="account/notifications/",url2="index.php?m=account_notifications",name="upgrade|opt_notifications",class="btn btn-primary"}
                <!-- IF session.can_change_privacy_settings -->
                {anchor:url1="account/privacy/",url2="index.php?m=account_privacy",name="upgrade|opt_privacy",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- IF app_license == "commercial" -->
                <!-- IF upgrade_type == "credits" -->
                <!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
                {anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="upgrade|opt_upgrade",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- IF settings.enable_credits -->
                {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="upgrade|opt_credits",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- ELSE -->
                <!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
                {anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="upgrade|opt_upgrade",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- IF settings.enable_credits -->
                {anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="upgrade|opt_credits",class="btn btn-primary"}
                <!-- ENDIF -->
                <!-- ENDIF -->
                <!-- IF settings.enable_upgrades AND session.can_upgrade_account OR settings.enable_credits -->
                {anchor:url1="account/upgrade/orders/",url2="index.php?m=account_upgrade&p=orders",name="upgrade|opt_orders",class="active btn btn-primary"}
                <!-- ENDIF -->
                <!-- ENDIF -->
            </div>
           </div>

   <!-- INCLUDE message.tpl -->
   <div class="col-sm-9">
       
        
        <div class="panel panel-default">
           <div class="panel-heading">{lang:"upgrade","app_upgrade"}</div>
           <div class="panel-body">

                <!-- IF hide_content != "1" -->
                        <div class="outter page_account_upgrade_orders">

                            <div class="typecontent">
                                <!-- BEGIN orders -->
                                <div class="dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                                    <!-- IF order_package -->
                                    <!-- IF order_credits -->
                                    <h2 class="inner">{order_package} - ${order_amount}</h2>
                                    {lang:"upgrade","date"}: {order_date} - {order_credits} {lang:"upgrade","credits"}
                                    <!-- ELSE -->
                                    <h2 class="inner">{order_package} - ${order_amount}</h2>
                                    {lang:"upgrade","date"}: {order_date} - {lang:"upgrade","term"}: {order_term}
                                    <!-- ENDIF -->
                                    <!-- ELSE -->
                                    <!-- IF order_credits -->
                                    <h2 class="inner">{order_credits} {lang:"upgrade","credits"} - ${order_amount}</h2>
                                    <!-- ELSE -->
                                    <h2 class="inner">{order_term} - ${order_amount}</h2>
                                    <!-- ENDIF -->
                                    {lang:"upgrade","date"}: {order_date}
                                    <!-- ENDIF -->
                                </div>
                                <!-- END orders -->
                            </div>
                        </div>

                <!-- ENDIF -->

                <!-- IF payment_status == "success" -->

                    <!-- paid user code here -->

                <!-- ENDIF -->
            </div>
                       
                       
         </div>
    </div>
    <div class="col-sm-3">
       <!-- INCLUDE webffo_sidebar.tpl -->
       <!-- INCLUDE webffo_account_sidebar.tpl -->
    </div>

    </div>
</div>
<!-- INCLUDE footer.tpl -->