
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
  							{anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="upgrade|opt_credits",class="active",class="btn btn-primary"}
  						<!-- ENDIF -->
  					<!-- ELSE -->
  						<!-- IF settings.enable_upgrades AND session.can_upgrade_account -->
  							{anchor:url1="account/upgrade/",url2="index.php?m=account_upgrade",name="upgrade|opt_upgrade",class="active btn btn-primary"}
  						<!-- ENDIF -->
  						<!-- IF settings.enable_credits -->
  							{anchor:url1="account/upgrade/credits/",url2="index.php?m=account_upgrade&p=credits",name="upgrade|opt_credits",class="btn btn-primary"}
  						<!-- ENDIF -->
  					<!-- ENDIF -->
  					<!-- IF settings.enable_upgrades AND session.can_upgrade_account OR settings.enable_credits -->
  						{anchor:url1="account/upgrade/orders/",url2="index.php?m=account_upgrade&p=orders",name="upgrade|opt_orders",class="btn btn-primary"}
  					<!-- ENDIF -->
  				<!-- ENDIF -->
            </div>
        </div>

       <div class="col-sm-3">
	       	<div class="panel panel-success">
                    <div class="panel-heading">{package_name}</div>
                    <div class="panel-body">
                                 {package_description}
                         </div>
                 </div>

       </div>

  	   <div class="col-sm-6">
  	        <!-- INCLUDE message.tpl -->
  	        
  	        <div class="panel panel-default">
  	           <div class="panel-heading">{lang:"upgrade","app_upgrade"}</div>
  	           <div class="panel-body">
  
  	                <!-- IF hide_content != "1" -->
  
  					<!-- BEGIN payment_gateways -->
  						<div class="form" style="padding-top: 15px">
  							{gateway_payment_form}
  							<hr>
  						</div>
  					<!-- END payment_gateways -->
  			
  					<!-- IF upgrade_type == "account" AND settings.enable_gift_upgrades == "1" OR upgrade_type == "credits" AND settings.enable_gift_credits == "1" -->
  						<!-- IF !get.sid OR !member_id -->
  							<div class="dataitem">
  								<div class="data"><br />
  									<img src="{virtual_tpl_path}{session.template}/media/upgrade_gift.png" align="absmiddle" />
  									{lang:"upgrade","upgrade_gift"} <a href="#" onclick="$('#gift_form').toggle();return false;">{lang:"upgrade","upgrade_gift_link"}</a>
  								</div>
  							</div>
  						<!-- ENDIF -->
  					<!-- ENDIF -->
  		
  					<!-- IF !get.sid OR !member_id -->
  						<!-- IF !package_credits AND settings.enable_gift_upgrades OR package_credits AND settings.enable_gift_credits -->
  							<div class="typepage" id="gift_form" style="margin-top:5px;<!-- IF !post.username -->display:none<!-- ENDIF -->">
  								<div class="dataitem">
  									<div class="data">
  										<form action="" name="gift" method="post">
  											<div class="form">
  												<div class="fieldset">
  													<dl class="fieldset">
  														<dt><label for="field_username" style="font-weight:normal">{lang:"upgrade","gift_purchase_info"}</label></dt>
  														<dd><input type="text" class="form-control" id="field_username" name="username" value="{post.username}" maxlength="32" size="32" style="width: 200px" /></dd>
  			    										<dd class="submit margin-t-15"><input class="submit btn btn-primary" type="submit" name="submit" value="{lang:"upgrade","submit"}" /></dd>
  													</dl>
  												</div>
  											</div>
  											<input type="hidden" name="isgift" value="1" />
  										</form>
  									</div>
  								</div>
  							</div>
  						<!-- ENDIF -->
  					<!-- ELSEIF member_id -->
  						<div class="typemembers" id="member_upgrade_for" style="margin-top:5px">
  
  								<div class="image">
  									<!-- INCLUDE member_sections_picture.tpl -->
  					      		</div>
  								<a class="margin-t-15 btn btn-danger" href="{package_upgrade_link}">{lang:"upgrade","cancel"}</a>
  						</div>
  					<!-- ENDIF -->
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