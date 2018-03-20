<!-- INCLUDE header.tpl -->

<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li class="active">{anchor:url1="account/sendhash/",url2="index.php?m=sendhash",name="forgotpassword|frm_resendhash"}</li>
        </ol>
  </div>

    <div class="col-sm-9">

      <!-- INCLUDE message.tpl -->

        <div class="panel panel-default">
             <div class="panel-heading">{lang:"forgotpassword","frm_resendhash"}<</div> 
             <div class="panel-body">

             <!-- IF hide_content != "1" -->
      					<form name="lostpass" method="post" action="">
      						<div class="fieldset old_form form_half">
      							<dl class="fieldset fieldgrid">
      								<dt><label for="field_username">{lang:"forgotpassword","username"}</label></dt>
      								<dd><input maxlength="32" size="30" type="text" id="field_username" name="username" value="{username}" class="form-control" /></dd>
      								<dt><label for="field_email">{lang:"forgotpassword","email"}</label></dt>
      								<dd><input type="text" size="30" class="form-control" name="email" id="field_email" value="{email}" maxlength="64" /></dd>
          							<dd class="submit margin-t-15"><input class="submit btn btn-primary" name="submit" value="{lang:"forgotpassword","submit"}" type="submit" /></dd>
      							</dl>
      							<div class="clear"></div>
      						</div>
      						<input type="hidden" name="losthash" value="1" />
      					</form>
      				
       <!-- ENDIF -->
      </div>
    </div>
  </div>
  <div class="col-sm-3"><!-- INCLUDE webffo_sidebar.tpl --></div>
        </div>                    
    </div>                    
<!-- INCLUDE footer.tpl -->