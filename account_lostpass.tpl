<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
              <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
              <li class="active">{anchor:url1="account/lostpass/",url2="index.php?m=account_lostpass",name="forgotpassword|frm_forgotpassword"}</li>
            </ol>    
        </div> 
                
        <div class="profileactions col-lg-12">
            <div class="btn-group">
              {anchor:url1="account/login/",url2="index.php?m=account_login",name="forgotpassword|existing_user",class="active btn btn-primary"}
             {anchor:url1="account/register/",url2="index.php?m=account_register",name="forgotpassword|new_user",class=" btn btn-primary"}
            </div>
        </div>    
                
        <div class="col-sm-9"> 

        <!-- INCLUDE message.tpl -->

            <div class="panel panel-default">
             <div class="panel-heading">{lang:"forgotpassword","app_forgotpassword"}</div> 
             <div class="panel-body">

              <!-- IF hide_content != "1" -->
          					<form name="lostpass" method="post" action="">
          								<div class="form-group">
                            <label for="field_username">{lang:"forgotpassword","username"}</label>
          								  <input maxlength="32" size="30" type="text" id="field_username" name="username" value="{username}" class="form-control" />
                          </div>  
          								<div class="form-group">
                            <label for="field_email">{lang:"forgotpassword","email"}</label>
          								  <input type="text" size="30" class="form-control" name="email" id="field_email" value="{email}" maxlength="64" />
                          </div>
              						<input class="btn btn-primary" name="submit" value="{lang:"forgotpassword","submit"}" type="submit" />
          
          						<input type="hidden" name="forgotpass" value="1" />
          					</form>
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
