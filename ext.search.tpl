<form name="search" method="post" class="clearfix " action="{virtual_path}{ifelse:settings.fancy_urls,"1","search","index.php?m=search"}">
    <!-- BEGIN ext_search_profile_groups -->

    <!-- IF profile_fields -->
    <!-- BEGIN profile_fields -->
    <div class="form-group searchboxsize pull-left"><label for="field_{field_label}">{field_name}</label>

        <!-- IF field_type = "text" -->
        <!-- IF field_label = "uszip" -->
        <!-- IF settings.search_uszip -->
        <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="" />
        <span class="white">within</span> <input type="text" class="form-control" name="dist" style="width: 40px" value="" maxlength="2" /> miles
        <!-- ELSE -->
        <input type="text" class="form-control" id="field_{field_label}" name="{field_label}"  value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
        <!-- ENDIF -->
        <!-- ELSEIF field_in_search_range -->
        <input type="text" class="form-control" id="field_{field_label}" name="{field_label}"  value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
        -
        <input type="text" class="form-control" id="field_{field_label}_2" name="{field_label}_2"  value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
        <!-- ELSE -->
        <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
        <!-- ENDIF -->
        <!-- ELSEIF field_type = "textarea" -->
        <textarea class="form-control" id="field_{field_label}" name="{field_label}">{htmlentities:field_value}</textarea>
        <!-- ELSEIF field_type = "checkbox" -->
        <ul class="fielditems search_checkboxlist">
            <!-- INBEGIN field_items -->
            <li><label>{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
            <!-- END field_items -->
        </ul>
        <!-- ELSEIF field_type = "radio" -->
        <ul class="fielditems search_radiolist">
            <!-- INBEGIN field_items -->
            <li><label>{radiobuttons:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
            <!-- END field_items -->
        </ul>
        <!-- ELSEIF field_type = "combo" -->
        <!-- IF field_in_search_multi -->
        <ul class="fielditems search_checkboxgrouplist">
            <!-- INBEGIN field_items -->
            <li><label>{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
            <!-- END field_items -->
        </ul>
        <!-- ELSEIF field_in_search_range -->
        <select class="form-control" id="field_{field_label}" name="{field_label}">
            <option value="">{lang:"core","user_field_any"}</option>
            {dropdownlist:field_items,field_value}
        </select>
        &dash;
        <select class="form-control" id="field_{field_label}_2" name="{field_label}_2">
            <option value="">{lang:"core","user_field_any"}</option>
            {dropdownlist:field_items,field_value}
        </select>

        <!-- ELSE -->
        <select class="form-control" id="field_{field_label}" name="{field_label}" <!-- IF field_label == "country" -->style="width:170px"<!-- ENDIF -->>
                <!-- IF field_label != "gender1" AND field_label != "gender2" -->
                <option value="">{lang:"core","user_field_any"}</option>
            <!-- ENDIF -->
            {dropdownlist:field_items,field_value}
        </select>   
        <!-- ENDIF -->
        <!-- ELSEIF field_type = "birthday" -->
        <div class="clearfix form-inline">
            <select class="form-control search_select_half pull-left" id="field_{field_label}" name="{field_label}_from">{dropdownlist:top.ext_search_agebox,field_value}</select>                 
            <select class="form-control search_select_half pull-left " id="field_{field_label}_to" name="{field_label}_to">{dropdownlist:top.ext_search_agebox,field_default}</select>
        </div>
        <!-- ENDIF -->
    </div> 
    <!-- END profile_fields -->
    <!-- ENDIF -->
    <!-- IF rowlast -->

    <!-- ENDIF -->

    <!-- END ext_search_profile_groups -->
    <input type="hidden" name="type_id" value="{ext_search_type}" />
    <input type="hidden" name="issearch" value="1" />
    <div class="pull-right search_btn_holder">
        <input class="btn btn-primary btn-sm active" type="submit" name="submit" value="{lang:"core","home_search"}" />
        <button class="btn btn-danger btn-sm"  onclick="webffo_searchbox_hide();
                  return false;" ><i class="glyphicon glyphicon-chevron-up"></i></button>
    </div>  
</form>

