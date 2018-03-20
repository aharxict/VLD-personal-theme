<!-- INCLUDE header.tpl -->
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <!-- IF hide_content != "1" -->
            <div class="btn-group profileactions">
                {anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|opt_calendar",class="btn btn-primary"}  
                {anchor:url1="events/search/",url2="index.php?m=events&p=search",name="events|opt_search",class="active btn btn-primary"}  
            </div>
            <!-- ENDIF -->
        </div>
          
       <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>



    <div class="col-sm-9">
        <div class="panel panel-default">
            <div class="panel-heading">{lang:"events","app_search"}</div>
            <div class="panel-body">
    <!-- IF hide_content != "1" -->

        <form name="search" method="post" action="" class="old_form form_half">
            <!-- IF event_fields -->
            <div class="fieldset">
                <div class="legend">{lang:"events","event_fields"}</div>
                <dl class="fieldset fieldgrid break">

                    <!-- IF settings.enable_event_name_search AND rowcnt == "0" -->
                    <dt><label for="field_event_name">{lang:"events","event_name"}</label></dt>
                    <dd><input type="text" class="text form-control" name="event_name" style="width: 150px" value="" id="field_event_name" /></dd>
                    <!-- ENDIF -->

                    <!-- BEGIN event_fields -->

                    <dt><label for="field_{field_label}">{field_name}</label></dt>
                    <dd>
                        <!-- IF field_type = "text" -->
                        <!-- IF field_label = "uszip" -->
                        <input type="text" class="text form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="" />
                        within <input type="text" class="text form-control" name="dist" style="width: 40px" value="" maxlength="2" /> miles
                        <!-- ELSE -->
                        <input type="text" class="text form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                        <!-- ENDIF -->
                        <!-- ELSEIF field_type = "textarea" -->
                        <textarea class="textarea textarea_data" id="field_{field_label}" name="{field_label}" style="height: {field_height}">{htmlentities:field_value}</textarea>
                        <!-- ELSEIF field_type = "checkbox" -->
                        <ul class="fielditems">
                            <!-- INBEGIN field_items -->
                            <li><label>{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                            <!-- END field_items -->
                        </ul>
                        <div class="clear"></div>
                        <!-- ELSEIF field_type = "radio" -->
                        <!-- IF field_in_search_multi -->
                        <ul class="fielditems">
                            <!-- INBEGIN field_items -->
                            <li><label>{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                            <!-- END field_items -->
                        </ul>
                        <div class="clear"></div>
                        <!-- ELSE -->
                        <ul class="fielditems">
                            <!-- INBEGIN field_items -->
                            <li><label>{radiobuttons:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                            <!-- END field_items -->
                        </ul>
                        <div class="clear"></div>
                        <!-- ENDIF -->
                        <!-- ELSEIF field_type = "combo" -->
                        <!-- IF field_in_search_multi -->
                        <ul class="fielditems">
                            <!-- INBEGIN field_items -->
                            <li><label class="checkbox">{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                            <!-- END field_items -->
                        </ul>
                        <div class="clear"></div>
                        <!-- ELSE -->
                        <select class="form-control" id="field_{field_label}" name="{field_label}">
                            <option value="">{lang:"core","user_field_any"}</option>
                            {dropdownlist:field_items,field_value}
                        </select>
                        <!-- ENDIF -->
                        <!-- ENDIF -->
                    </dd>

                    <!-- END event_fields -->

                </dl>
                <div class="clear"></div>
            </div>

            <!-- ENDIF -->

            <div class="fieldset">
              
                <dl class="fieldset fieldgrid">
                    <dt><label for="field_with_guests">{lang:"events","with_guests_events"}</label></dt>
                    <dd><select class="form-control" name="with_guests" id="field_with_guests">{dropdownlist:yesnobox,"0"}</select></dd>
                    <dt><label for="field_pictures_only">{lang:"events","pictures_only"}</label></dt>
                    <dd><select class="form-control" name="pictures_only" id="field_pictures_only">{dropdownlist:yesnobox,"0"}</select></dd>
                    <dt><label for="field_upcoming_only">{lang:"events","event_type"}</label></dt>
                    <dd><select class="form-control" name="upcoming_only" id="field_upcoming_only">{dropdownlist:eventtypebox,"0"}</select></dd>
                    <dd class="submit margin-t-15"><input class="submit btn btn-primary" type="submit" name="submit" value="{lang:"events","submit"}" /></dd>
                </dl>
                <div class="clear"></div>
            </div>

            <input type="hidden" name="issearch" value="1" />
        </form>
      </div>
    </div>
    <!-- ENDIF -->
    </div>
    <div class="col-sm-3"><!-- INCLUDE webffo_sidebar.tpl --></div>
  </div>
</div>
<!-- INCLUDE footer.tpl -->