<!-- INCLUDE header.tpl -->

<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li class="active">{anchor:url1="account/register/",url2="index.php?m=account_register",name="register|new_user"}</li>
          	</ol>    
        </div>
        
        
      <div class="col-sm-12">
        <!-- INCLUDE message.tpl -->
      </div>
      <div class="col-sm-9">

        <!-- IF hide_content != "1" -->    
        
        <!-- IF member_username != "" -->
        <div class="panel panel-default">
          <div class="panel-heading">Get in touch with {member_username}</div>
          <div class="panel-body">
            <div class="row">
              <div class="col-sm-3"><!-- INCLUDE member_sections_picture.tpl --></div>
              <div class="col-sm-9">
                <p>Registration on our site is really quick and easy. You will be able to contact <strong>{member_username}</strong> in some seconds.</p>
                <div>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. 
                  Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                  Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
                  Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. 
                  In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</div>
              </div>   
            </div>
          </div>
        </div>
        <!-- ENDIF -->

        
        <div class="panel panel-default">
           <div class="panel-heading">{lang:"register","frm_register"}</div>
           <div class="panel-body ">
            <div class="row">
             <div class="col-sm-8" >
             <form name="register" method="post" id="regwrapper" class="form-horizontal clearfix" action="{virtual_path}account/register" onsubmit="return validateRequired() " enctype="multipart/form-data">
   
                        <div id="vt_reg_tab1">
                            <div class="form-group">
                                  <label class="control-label col-sm-3">{lang:"register","username"}</label>
                                  <div class="col-sm-12 icon-field user-field">
                                    <input type="text" class="form-control validate_required"   placeholder="{lang:"register","username"}" onkeypress="validateCurrent(this)" id="field_username" onblur="checkusername(this.value);validateCurrent(this)" name="username" value="{registration_username}" maxlength="32" size="32" />
                                </div>
                            </div>  
                                
                            <div id="field_username_status" style="display:none"></div>
                           
                            <div class="form-group">
                                 <label class="control-label col-sm-3">{lang:"register","password"}</label>
                                 <div class="col-sm-12 icon-field password-field">
                                     <input type="password"   placeholder="{lang:"register","password"}"  class="form-control validate_required" onkeypress="validateCurrent(this)" onblur="validateCurrent(this)" id="field_password" name="password" value="{registration_password}" size="20" maxlength="32" />                        
                                 </div>
                            </div>
                            <div class="form-group">
                                 <label class="control-label col-sm-3 ">{lang:"register","password_confirm"}</label>
                                 <div class="col-sm-12 icon-field password-field">
                                     <input type="password"  placeholder="{lang:"register","password_confirm"}"  class="form-control validate_required" onkeypress="validateCurrent(this)" onblur="validateCurrent(this)" id="field_password_confirm" name="password_confirm" value="{registration_password_confirm}" size="20" maxlength="32" />                        
                                 </div>
                            </div>
                                 
                            <div class="form-group">
                                <label class="control-label col-sm-3 ">{lang:"register","email"}</label>
                                <div class="col-sm-12 icon-field email-field">
                                  <input type="email"  placeholder="{lang:"register","email"}"  class="form-control validate_required" id="field_email" onkeypress="validateCurrent(this)" onblur="validateCurrent(this)" name="email" value="{registration_email}" size="32" maxlength="64" >
                                </div>
                            </div>
                                
                            <div class="form-group">
                                <label class="control-label col-sm-3 ">{lang:"register","email_confirm"}</label>
                                <div class="col-sm-12 icon-field email-field">
                                  <input type="email"  placeholder="{lang:"register","email_confirm"}"  class="form-control validate_required" id="field_email_confirm" onkeypress="validateCurrent(this)" onblur="validateCurrent(this)" name="email_confirm" value="{registration_email_confirm}" size="32" maxlength="64" >
                                </div>
                            </div>


                           <div class="form-group"  <!-- IF count.profiletypes == "1" --> style="display:none" <!-- ENDIF --> >
                              
                                <div class="col-sm-12">
                                    <select name="type_id" class="form-control" id="field_type_id" onchange="toggleProfileFields(this.value);return false;" >
                                        {dropdownlist:profiletypes,registration_type_id}
                                    </select>  
                                </div>
                            </div>


                             <button onclick="return openSecondRegTab()" style="display:none" id="reg_second" class="btn btn-success ">{vldthemes:a="lang",key="register_nextstep"}</button>
                        </div>
                        <div id="vt_reg_tab2">               
                            
                             <!-- BEGIN profile_types -->

                             <div id="profile_type_{type_id}" class="profile_type" style="<!-- IF type_id != top.registration_type_id --> display:none <!-- ENDIF -->">

                                 <!-- BEGIN profile_groups -->

                                             <!-- BEGIN profile_fields -->
                                             <div class="form-group">
                                                <label class="col-sm-3 control-label" for="field_{field_label}">{field_name} {ifelse:field_required,"1","<i>*</i>",""}</label>
                                                <div class="col-sm-9">
                                                    <!-- IF field_type = "text" -->
                                                    <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                                                    <!-- ELSEIF field_type = "image" -->
                                                    <input type="file" class=" form-control" id="field_{field_label}" name="{field_label}" />
                                                    <!-- IF field_value != "" -->
                                                    <a target="_blank" href="{top.virtual_pic_path}{field_value}">View file</a>&nbsp;
                                                    <label><input class="checkbox" id="{field_label}_remove" name="{field_label}_remove" type="checkbox" value="1">&nbsp;{lang:"profile","remove"}</label>
                                                    <!-- ENDIF -->
                                                    <!-- ELSEIF field_type = "textarea" -->
                                                    <textarea class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}; height: {field_height}">{htmlentities:field_value}</textarea>
                                                    <!-- ELSEIF field_type = "checkbox" -->
                                                    <ul class="fielditems">
                                                        <!-- INBEGIN field_items -->
                                                        <li><label>{checkboxes:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
                                                        <!-- END field_items -->
                                                    </ul>

                                                    <!-- ELSEIF field_type = "radio" -->
                                                    <ul class="fielditems">
                                                        <!-- INBEGIN field_items -->
                                                        <li><label>{radiobuttons:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
                                                        <!-- END field_items -->
                                                    </ul>

                                                    <!-- ELSEIF field_type = "combo" -->
                                                    <select class="form-control select" id="field_{field_label}" name="{field_label}">{dropdownlist:field_items,field_value}</select>
                                                    <!-- ELSEIF field_type = "birthday" -->
                                                    <div class="form-inline">
                                                        <!-- IF session.timeformat -->
                                                            <select class="form-control select" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                            <select class="form-control select" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                                        <!-- ELSE -->
                                                            <select class="form-control select" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                                            <select class="form-control select" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                        <!-- ENDIF -->
                                                        
                                                        <select class="form-control select" name="{field_label}_year">{dropdownlist:top.birthday_years,field_value_year}</select>
                                                     </div>
                                                    <!-- ELSEIF field_type = "date" -->
                                                     <div class="form-inline"> 
                                                            <select class="form-control select" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                            <select class="form-control select" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                                            <select class="form-control select" name="{field_label}_year">{dropdownlist:years,field_value_year}</select>
                                                     </div>
                                                        <!-- ELSEIF field_type = "time" -->
                                                           <div class="form-inline"> 
                                                            <select class="form-control select" name="{field_label}_hour">{dropdownlist:top.hours,field_value_hour}</select>
                                                            <select class="form-control select" name="{field_label}_minute">{dropdownlist:top.minutes,field_value_minute}</select>
                                                        </div>
                                                        <!-- ELSEIF field_type = "datetime" -->
                                                          <div class="form-inline"> 
                                                            <select class="form-control select" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                            <select class="form-control select" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                                            <select class="form-control select" name="{field_label}_year">{dropdownlist:years,field_value_year}</select> @
                                                            <select class="form-control select" name="{field_label}_hour">{dropdownlist:top.hours,field_value_hour}</select>
                                                            <select class="form-control select" name="{field_label}_minute">{dropdownlist:top.minutes,field_value_minute}</select>
                                                    </div>
                                                    <!-- ENDIF -->
                                                 
                                                    </div>
                                                </div>
                                            <!-- END profile_fields -->
                                          

                                 <!-- END profile_groups -->

                             </div>

                             <!-- END profile_types -->
           
                            <!-- IF settings.enable_registration_photo -->
                               <div class="form-group" >
                                  <label class="control-label col-sm-3 ">{vldthemes:a="lang",key="reg_avatar"}</label>
                                  <div class="col-sm-9">  
                                    <input id="field_photo" type="file" name="photo" value="" >
                                
                                  </div>
                               </div>
                            <!-- ENDIF -->
                            
                    	<!-- IF is_captcha -->
                        <div class="form-group" >
                            <label class="control-label col-sm-3 ">{lang:"register","verify_number"}</label>
          								  <div class="col-sm-9 form-inline">  
              									<input type="form-control" id="field_captcha" class="form-control" name="captcha" maxlength="5"  />
                                <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                            </div>
                        </div>   
        								<!-- ENDIF -->
                        
        								<!-- IF is_tos -->
                          <div class="form-group" >
                          <label class="control-label col-sm-3 ">&nbsp;</label>
          								  <div class="col-sm-9">  
                              <input type="checkbox" value="1" name="tos">
                              <small>{lang:"register","accept_tos"} <a target="_blank" href="{virtual_path}{ifelse:settings.fancy_urls,"1","page/tos/","index.php?m=pages&p=tos"}">{lang:"register","tos"}</a></small>
                            </div>
                          </div>
        								<!-- ENDIF -->
    
                           
                        <input type="hidden" name="isregister" value="1" />
                        <button onclick="return openFirstRegTab()" style="display:none" class="btn-default btn pull-left">{vldthemes:a="lang",key="reg_back_first"}</button>
                        <input class="btn-primary btn pull-right" name="submit" value="{lang:"register","submit"}" type="submit" />
                  
                </div>
                  

                <script type="text/javascript" language="javascript">

                function toggleProfileFields(type_id){
                        $("div.profile_type").hide();
                        if ( type_id ){ $("#profile_type_" + type_id).show(); }
                }
           
                toggleProfileFields('{registration_type_id}');

                </script>         
                            
                            
             </form>        
             </div>
        <!-- ENDIF -->
       </div>
     
        </div>
     </div>
     </div>
     <div class="col-sm-3">
        <!-- INCLUDE webffo_sidebar.tpl -->
     </div>      
 </div>
</div>        


<!-- INCLUDE footer.tpl -->
