<!-- INCLUDE header.tpl -->

<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="account/home/",url2="index.php?m=account_home",name="profile|frm_profile"}</li>
            <li class="active">{anchor:url1="account/profile/",url2="index.php?m=account_profile",name="profile|frm_edit"}</li>
        </ol>
	</div>

      <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
    <div class="col-sm-9">

        <div class="panel panel-default">
             <div class="panel-heading">{lang:"profile","app_profile"}</div> 
             <div class="panel-body">
           
                <!-- IF hide_content != "1" -->
                    <div class="webffo-inner margin-t-25 margin-b-25">
                      <div class="page_account_profile  bg_white_alpha bevelbottom ">

                         <form name="profile" class="form-inline" method="post" action="" enctype="multipart/form-data">

                            <div class="typepage">
                                <div class="dataitem single">

                                <div class="datainfo profile clearfix">
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <!-- BEGIN profile_groups -->
                                  
                                   
                                        <div class="panel panel-default">
                                          <div class="panel-heading" role="tab" id="panel_{rowcnt}">
                                            <h4 class="panel-title">
                                              <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse_{rowcnt}" aria-expanded="true" aria-controls="collapse_{rowcnt}">
                                                {group_name}
                                              </a>
                                            </h4>
                                          </div>
                                          <div id="collapse_{rowcnt}" class="panel-collapse collapse <!-- IF rowcnt == "0" --> in <!-- ENDIF -->" role="tabpanel" aria-labelledby="panel_{rowcnt}">
                                            <div class="panel-body clearfix">

                                                  <!-- BEGIN profile_fields -->
                                                  <div class="clear"></div>
                                                   <strong class="pull-left fieldlabel"> {field_name}</strong>
                                            
                                                    <!-- IF field_type = "text" -->
                                                    <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                                                    <!-- ELSEIF field_type = "image" -->
                                                    <input type="file" class="form-control" id="field_{field_label}" name="{field_label}" />
                                                    <!-- IF field_old_value != "" -->
                                                    <a target="_blank" href="{top.virtual_pic_path}{field_value}">View file</a>&nbsp;
                                                    <label class="checkbox" ><input data-toggle="checkbox" id="{field_label}_remove" name="{field_label}_remove" type="checkbox" value="1">&nbsp;{lang:"profile","remove"}</label>
                                                    <!-- ENDIF -->
                                                    <!-- ELSEIF field_type = "textarea" -->
                                                    <textarea class="form-control textarea_data" id="field_{field_label}" name="{field_label}" rows="6" cols="40" style="height: {field_height}">{htmlentities:field_value}</textarea>
                                                    <!-- ELSEIF field_type = "checkbox" -->
                                                    <ul class="fielditems clearfix unstyled_list">
                                                        <!-- INBEGIN field_items -->
                                                        <li><label class="checkbox remove_child_checkbox">{checkboxes:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
                                                        <!-- END field_items -->
                                                    </ul>
                                                    <div class="clear"></div>
                                                    <!-- ELSEIF field_type = "radio" -->
                                                    <ul class="fielditems clearfix">
                                                        <!-- INBEGIN field_items -->
                                                        <li><label class="radio">{radiobuttons:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
                                                        <!-- END field_items -->
                                                    </ul>
                                                    <div class="clear"></div>
                                                    <!-- ELSEIF field_type = "combo" -->
                                                    <select class="form-control" id="field_{field_label}" name="{field_label}">
                                                        <!-- IF field_label != "gender1" AND field_label != "gender2" -->
                                                        <option value="">{lang:"core","user_field_none"}</option>
                                                        <!-- ENDIF -->
                                                        {dropdownlist:field_items,field_value}
                                                    </select>
                                                    <!-- ELSEIF field_type = "birthday" -->
                                                  <div class="form-inline ">
                                                    <!-- IF session.timeformat -->
                                                    <select class="form-control" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                    <select class="form-control" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>                                                 
                                                    <!-- ELSE -->
                                                    <select class="form-control" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                                    <select class="form-control" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                      
                                                    <!-- ENDIF -->
                                                    <select class="form-control" name="{field_label}_year">{dropdownlist:top.birthday_years,field_value_year}</select>
                                                  </div>
                                                    <!-- ELSEIF field_type = "date" -->
                                                    <div class="form-inline rangeselect">
                                                        <select class="form-control" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                        <select class="form-control" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                                        <select class="form-control" name="{field_label}_year">{dropdownlist:years,field_value_year}</select>
                                                    </div>    
                                                    <!-- ELSEIF field_type = "time" -->
                                                    <select class="form-control" name="{field_label}_hour">{dropdownlist:top.hours,field_value_hour}</select>
                                                    <select class="form-control" name="{field_label}_minute">{dropdownlist:top.minutes,field_value_minute}</select>
                                                    <!-- ELSEIF field_type = "datetime" -->
                                                     <div class="form-inline rangeselect">
                                                        <select class="form-control" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                                        <select class="form-control" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                                        <select class="form-control" name="{field_label}_year">{dropdownlist:years,field_value_year}</select> @
                                                        <select class="form-control" name="{field_label}_hour">{dropdownlist:top.hours,field_value_hour}</select>
                                                        <select class="form-control" name="{field_label}_minute">{dropdownlist:top.minutes,field_value_minute}</select>
                                                    </div>  
                                                    <!-- ENDIF -->

                                        <!-- END profile_fields -->
                                    
                                          </div>
                                       </div>
                                    </div>
                                   

                                    <!-- END profile_groups -->
                                     </div>
                                
                                    <!-- IF error_profile_section -->
                                    <script type="text/javascript" language="javascript">switch_tabs('profile_data', {error_profile_section}, 1, 1)</script>
                                    <!-- ELSEIF post.current_profile_section -->
                                    <script type="text/javascript" language="javascript">switch_tabs('profile_data', {post.current_profile_section}, 1, 1)</script>
                                    <!-- ELSE -->
                                    <script type="text/javascript" language="javascript">switch_tabs('profile_data', 0, 1, 1)</script>
                                    <!-- ENDIF -->


                                    <input class="btn btn-primary pull-right" type="submit" name="submit" value="{lang:"profile","submit"}" />
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <input type="hidden" name="isprofile" value="1" />
                        <input type="hidden" name="current_profile_section" id="current_profile_section" value="<!-- IF post.current_profile_section -->{post.current_profile_section}<!-- ELSE -->0<!-- ENDIF -->" />
                    </form>

                    </div>
                </div>

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