<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">		
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="account/events/",url2="index.php?m=account_events",name="events|frm_events"}</li>
            <!-- IF event_id -->
              <li class="active"><a href="{virtual_path}{event_edit_link}">{lang:"events","frm_editevent"}</a></li>
            <!-- ELSE -->
              <li class="active">{anchor:url1="account/events/add/",url2="index.php?m=account_events&p=add",name="events|frm_addevent"}</li>
            <!-- ENDIF -->
        </ol>                         
    </div> 
      
 <div class="btn-group profileactions col-lg-12">
   <!-- IF event_id -->
    <a href="{virtual_path}{event_edit_link}" class="active btn btn-primary">{lang:"events","opt_editevent"}</a></li>
    <a href="{virtual_path}{event_guests_view_link}" class=" btn btn-primary">{lang:"events","opt_guests"}</a></li>
    <a href="{virtual_path}{event_comments_view_link}" class=" btn btn-primary">{lang:"events","opt_comments"}</a></li>
    <a href="{virtual_path}{event_pictures_view_link}" class=" btn btn-primary">{lang:"events","opt_pictures"}</a></li>
    <!-- ELSE -->
    {anchor:url1="account/events/",url2="index.php?m=account_events",name="events|opt_events",class=" btn btn-primary"}</li>
    {anchor:url1="account/events/joined/",url2="index.php?m=account_events&p=joined",name="events|opt_joinedevents",class=" btn btn-primary"}</li>
    {anchor:url1="account/events/add/",url2="index.php?m=account_events&p=add",name="events|opt_addevent",class="active btn btn-primary"}</li>
    <!-- ENDIF -->
 </div>      
      
    <div class="col-sm-9">              
      
        <div class="panel panel-default">
             <div class="panel-heading"><!-- IF event_id -->{lang:"events","app_editevent"}<!-- ELSE -->{lang:"events","app_addevent"} <!-- ENDIF -->
             </div> 
             <div class="panel-body">

  		
            <!-- IF hide_content != "1" -->
    	     <div class="container-fluid">
              <div class="row">
      		        <div class="col-lg-12">
	
                        <div class="form">
                           <form name="edit" method="post" action="" enctype="multipart/form-data">
                               <div class="fieldset">
                                <dl class="fieldset">
                                    <dt><label for="field_event_name">{lang:"events","name"} <i>*</i></label></dt>
                                    <dd><input type="text" id="field_event_name" class="form-control" name="event_name" value="{htmlentities:event_name}" maxlength="255" /></dd>
                                    <dt><label for="field_event_start_month">{lang:"events","startdate"} <i>*</i></label></dt>
                                    <dd class="form-inline">
                                        <select class="form-control" name="event_start_month" id="field_event_start_month">{dropdownlist:top.months,event_start_month}</select>
                                        <select class="form-control" name="event_start_day">{dropdownlist:top.days,event_start_day}</select>
                                        <select class="form-control" name="event_start_year">{dropdownlist:top.years,event_start_year}</select> @
                                        <select class="form-control" name="event_start_hour">{dropdownlist:top.hours,event_start_hour}</select>
                                        <select class="form-control" name="event_start_minute">{dropdownlist:top.minutes,event_start_minute}</select>
                                    </dd>
                                    <dt><label for="field_event_end_month">{lang:"events","enddate"} <i>*</i></label></dt>
                                    <dd class="form-inline">
                                        <select class="form-control" name="event_end_month" id="field_event_end_month">{dropdownlist:top.months,event_end_month}</select>
                                        <select class="form-control" name="event_end_day">{dropdownlist:top.days,event_end_day}</select>
                                        <select class="form-control" name="event_end_year">{dropdownlist:top.years,event_end_year}</select> @
                                        <select class="form-control" name="event_end_hour">{dropdownlist:top.hours,event_end_hour}</select>
                                        <select class="form-control" name="event_end_minute">{dropdownlist:top.minutes,event_end_minute}</select>
                                    </dd>
                                    <!-- BEGIN event_fields -->
                                    <dt><label for="field_{field_label}">{field_name} {ifelse:field_required,"1","<i>*</i>",""}</label></dt>
                                    <dd class="">
                                        <!-- IF field_type = "text" -->
                                        <input type="text" id="field_{field_label}" class="form-control" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                                        <!-- ELSEIF field_type = "image" -->
                                        <input type="file" id="field_{field_label}" class="form-control" name="{field_label}" />
                                        <!-- IF field_old_value != "" -->
                                        <a target="_blank" href="{top.virtual_pic_path}{field_old_value}">View file</a>&nbsp;
                                        <input class="inputCheck form-control" id="{field_label}_remove" name="{field_label}_remove" type="checkbox" value="1">&nbsp;{lang:"events","remove"}
                                        <!-- ENDIF -->
                                        <!-- ELSEIF field_type = "textarea" -->
                                        <textarea id="field_{field_label}" class="form-control" name="{field_label}" style="height: {field_height}">{htmlentities:field_value}</textarea>
                                        <!-- ELSEIF field_type = "checkbox" -->
                                        <ul class="fielditems">
                                            <!-- INBEGIN field_items -->
                                            <li><label>{checkboxes:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
                                            <!-- END field_items -->
                                        </ul>
                                        <div class="clear"></div>
                                        <!-- ELSEIF field_type = "radio" -->
                                        <ul class="fielditems">
                                            <!-- INBEGIN field_items -->
                                            <li><label>{radiobuttons:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
                                            <!-- END field_items -->
                                        </ul>
                                        <div class="clear"></div>
                                        <!-- ELSEIF field_type = "combo" -->
                                        <select id="field_{field_label}" class="form-control" name="{field_label}">{dropdownlist:field_items,field_value}</select>
                                        <!-- ELSEIF field_type = "date" -->
                                        <div class="form-inline">
                                            <select class="form-control" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                            <select class="form-control" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                            <select class="form-control" name="{field_label}_year">{dropdownlist:years,field_value_year}</select>
                                        </div> 
                                        <!-- ELSEIF field_type = "time" -->
                                        <div class="form-inline">
                                            <select class="form-control" name="{field_label}_hour">{dropdownlist:top.hours,field_value_hour}</select>
                                            <select class="form-control" name="{field_label}_minute">{dropdownlist:top.minutes,field_value_minute}</select>
                                        </div>
                                        <!-- ELSEIF field_type = "datetime" -->
                                        <div class="form-inline">
                                            <select class="form-control" name="{field_label}_month">{dropdownlist:top.months,field_value_month}</select>
                                            <select class="form-control" name="{field_label}_day">{dropdownlist:top.days,field_value_day}</select>
                                            <select class="form-control" name="{field_label}_year">{dropdownlist:years,field_value_year}</select> @
                                            <select class="form-control" name="{field_label}_hour">{dropdownlist:top.hours,field_value_hour}</select>
                                            <select class="form-control" name="{field_label}_minute">{dropdownlist:top.minutes,field_value_minute}</select>
                                        </div>  
                                        <!-- ENDIF -->
                                    </dd>
                                    <!-- END event_fields -->
                                    <!-- IF settings.enable_event_max_guests -->
                                    <dt><label for="field_comments">{lang:"events","max_guests"}</label></dt>
                                    <dd><input type="text" id="field_max_guests" class="form-control" name="max_guests" size="4" value="{event_max_guests}" maxlength="6" /></dd>
                                    <!-- ENDIF -->
                                    <!-- IF settings.enable_event_comments -->
                                    <dt>
                                    <br>
                                    <label for="field_comments" class="xcheckbox">
                                        <input type="checkbox" name="comments" value="1" id="field_comments" <!-- IF event_comments -->checked="checked"<!-- ENDIF --> />
                                               {lang:"events","allow_comments"}
                                    </label>
                                    </dt>
                                    <!-- ENDIF -->
                                    <dd class="submit"><input class="btn btn-primary pull-right" type="submit" name="submit" value="{lang:"events","submit"}" /></dd>
                                </dl>
                            </div>
                            <input type="hidden" name="isevent" value="1" />
                        </form>
                    </div>
                  </div>
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