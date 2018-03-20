<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li class="active">{anchor:url1="account/login/",url2="index.php?m=account_login",name="login|existing_user"}</li>
         </ol>
      </div>
      <div class="profileactions col-lg-12">
         <div class="btn-group">
                {anchor:url1="account/login/",url2="index.php?m=account_login",name="login|existing_user",class="active btn btn-primary"}
                {anchor:url1="account/register/",url2="index.php?m=account_register",name="login|new_user",class=" btn btn-primary"}
         </div>
         
      </div>
      
     <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
    
      <div class="col-sm-9">
        <!-- IF hide_content != "1" -->
                         
        <div class="panel panel-default">
          <div class="panel-heading">{lang:"login","frm_login"}</div>
          <div class="panel-body">
           <div class="form-horizontal">
              <form name="login" method="post" action="">
                  <div class="fieldset">
                      <div class="form-group">
                          <label class="col-lg-3" for="field_username">{lang:"login","username"}</label>
                          <div class="col-lg-8">
                              <input maxlength="64"  size="30" type="text" id="field_username" name="username" value="" class="form-control" />
                          </div>
                      </div>
                      <div class="form-group">
                          <label class="col-lg-3" for="field_password">{lang:"login","password"}</label>
                           <div class="col-lg-8">
                              <input maxlength="32" size="30" type="password" id="field_password" name="password" value="" class="form-control" />
                         </div>
                      </div>
                      <div class="form-group form-inline">
                          <label  class="col-lg-3" for="field_nonxpcookie">{lang:"login","remember_me"}</label><br>
                           <div class="col-lg-8">
                              <select class="form-control" name="nonxpcookie" id="field_nonxpcookie">{dropdownlist:yesnobox,0}</select>
                          </div>
                        </div>
  
                      <input type="submit" name="submit" value="{lang:"login","submit"}" class="btn btn-primary" />
  
                  </div>
                  <input type="hidden" name="islogin" value="1" />
              </form>
          </div>
        </div>
        </div>
         
        <!-- ENDIF -->
      </div>
      <div class="col-sm-3">
        <!-- INCLUDE webffo_sidebar.tpl -->
      </div>
    </div>
</div>

<!-- INCLUDE footer.tpl -->
