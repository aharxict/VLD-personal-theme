<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        
        
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
        
        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        <div class="col-sm-9">
            <div class="panel panel-default">
                 <div class="panel-heading">{lang:"privacy","app_cancel"}</div>       
                 <div class="panel-body">

            				<!-- IF hide_content != "1" -->
            
            						<form name="edit" method="post" action="">
            	
            							{lang:"privacy","cancel?"}
            			
                                        <br>
                                        <br>
            							<input type="submit" class="btn btn-danger" name="yes" value="{lang:"core","yes"}" title="{lang:"core","yes"}" />
            							<input type="button" class="btn btn-default" name="no" onclick="javascript:history.go(-1)" value="{lang:"core","no"}" title="{lang:"core","no"}" />
            								
            							<input type="hidden" name="iscancel" value="1" />
            									
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
