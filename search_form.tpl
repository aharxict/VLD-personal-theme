 <div class="panel panel-default">
            <div class="panel-heading">{vldthemes:a="lang",key="search"}</div>
            <div class="panel-body">
            <!-- IF hide_content != "1" -->

                      <form id="search" name="search"  method="post" action="">

                          <!-- IF total_types > "1" -->
                          {lang:"search","type"}

                          <div class="form-group">
                              <label for="field_type_id">{lang:"search","search_type"}</label>
                              <select class="form-control" name="type_id" id="field_type_id" onchange="row_switch('type_'+this.value+'_box')">
                                  {dropdownlist:typesbox,default_type}
                              </select>
                          </div>

                          <!-- ELSE -->
                          <input type="hidden" name="type_id" value="{default_type}" />
                          <!-- ENDIF -->

                          <!-- BEGIN profile_types -->

                              <!-- IF type_id == settings.default_profile_type -->
                              <script type="text/javascript" language="javascript">var active_tab = 'type_{type_label}_box';</script>
                              <!-- ENDIF -->
                            
                              <div id="type_{type_label}_box" <!-- IF type_id != settings.default_profile_type --> style="display:none"<!-- ENDIF -->>
                                 <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                  <!-- BEGIN profile_groups -->
                                      
                                       <!-- IF profile_fields --> 
                                       
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
                                              <div class="form-group searchgroup-{field_label}">
                                                  <label for="field_{field_label}">{field_name}</label>
        
                                                  <!-- IF field_type = "text" -->
                                                  <!-- IF field_label = "uszip" -->
                                                  <!-- IF settings.search_uszip -->
                                                  <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="" />
                                                  within <input type="text" class="form-control" name="dist" style="width: 40px" value="" maxlength="2" /> miles
                                                  <!-- ELSE -->
                                                  <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                                                  <!-- ENDIF -->
                                                  <!-- ELSEIF field_in_search_range -->
                                                  <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                                                  -
                                                  <input type="text" class="form-control" id="field_{field_label}_2" name="{field_label}_2" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                                                  <!-- ELSE -->
                                                  <input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
                                                  <!-- ENDIF -->
                                                  <!-- ELSEIF field_type = "textarea" -->
                                                  <textarea class="form-control " id="field_{field_label}" name="{field_label}" style="height: {field_height}">{htmlentities:field_value}</textarea>
                                                  <!-- ELSEIF field_type = "checkbox" -->
                                                  <ul class="fielditems clearfix searchlist" style="list-style-type:none;padding-left:0">
                                                      <!-- INBEGIN field_items -->
                                                      <li><label class="checkbox">{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                                                      <!-- END field_items -->
                                                  </ul>
                                                  <div class="clear"></div>
                                                  <!-- ELSEIF field_type = "radio" -->
                                                  <!-- IF field_in_search_multi -->
                                                  <ul class="fielditems" style="list-style-type:none;padding-left:0">
                                                      <!-- INBEGIN field_items -->
                                                      <li><label class="checkbox">{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                                                      <!-- END field_items -->
                                                  </ul>
                                                  <div class="clear"></div>
                                                  <!-- ELSE -->
                                                  <ul class="fielditems" style="list-style-type:none;padding-left:0">
                                                      <!-- INBEGIN field_items -->
                                                      <li><label>{radiobuttons:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                                                      <!-- END field_items -->
                                                  </ul>
                                                  <div class="clear"></div>
                                                  <!-- ENDIF -->
                                                  <!-- ELSEIF field_type = "combo" -->
                                                  <!-- IF field_in_search_multi -->
                                                  <ul class="fielditems" style="list-style-type:none;padding-left:0">
                                                      <!-- INBEGIN field_items -->
                                                      <li><label class="checkbox">{checkboxes:parent.field_label,rowcnt,"",inner_key}&nbsp;{inner_value}</label></li>
                                                      <!-- END field_items -->
                                                  </ul>
                                                  <div class="clear"></div>
                                                  <!-- ELSEIF field_in_search_range -->
                                                  <div class="rangeselect">
                                                    <select class="form-control" id="field_{field_label}" name="{field_label}">
                                                        <option value="">{lang:"core","user_field_any"}</option>
                                                        {dropdownlist:field_items,field_value}
                                                    </select>
                                                    -
                                                    <select class="form-control" id="field_{field_label}_2" name="{field_label}_2">
                                                        <option value="">{lang:"core","user_field_any"}</option>
                                                        {dropdownlist:field_items,field_value}
                                                    </select>
                                                  </div>
                                                  <!-- ELSE -->
                                                  <select class="form-control" id="field_{field_label}" name="{field_label}">
                                                      <!-- IF field_label != "gender1" AND field_label != "gender2" -->
                                                      <option value="">{lang:"core","user_field_any"}</option>
                                                      <!-- ENDIF -->
                                                      {dropdownlist:field_items,field_value}
                                                  </select>
                                                  <!-- ENDIF -->
                                                  <!-- ELSEIF field_type = "birthday" -->
                                                  <div class="form-inline rangeselect">
                                                      <select class="select form-control" id="field_{field_label}" name="{field_label}_from">{dropdownlist:top.agebox,field_value}</select> -
                                                      <select class="select form-control" id="field_{field_label}_to" name="{field_label}_to">{dropdownlist:top.agebox,field_default}</select>
                                                       {lang:"search","years"}
                                                  </div>
                                                  <!-- ENDIF -->
                                          
                                             </div>
                                          <!-- END profile_fields -->
                                          
                                      </div>
                                    </div>
                                    </div>
                                  <!-- ENDIF -->

                                <!-- END profile_groups -->
                              </div>
                          </div>

                         <!-- END profile_types -->

                            <hr>
                          <!-- IF search_username -->
                          <div class="form-group">
                              <label for="field_username">{lang:"search","search_username"}</label></dt>
                              <input type="text" class="form-control" name="username" style="width: 150px" value="" id="field_username" />
                          </div>
                          <!-- ENDIF -->
                          <!-- IF search_online -->
                          <div class="form-group"><label for="field_online_only">{lang:"search","search_online"}</label>
                              <select class="form-control" name="online_only" id="field_online_only">{dropdownlist:yesnobox,"0"}</select>
                          </div>
                          <!-- ENDIF -->
                          <div class="form-group">
                              <label for="field_pictures_only">{lang:"search","pictures_only"}</label>
                              <select class="form-control" name="pictures_only" id="field_pictures_only">{dropdownlist:yesnobox,"0"}</select>
                          </div>
                          <!-- IF loggedin AND settings.enable_saved_searches -->
                          <div class="form-group">
                              <label for="field_search_save">{lang:"search","save_search"}</label></dt>
                              <input name="search_save" type="text" class="form-control" id="field_search_save" style="width: 150px" value="" maxlength="128" />     
                          </div>
                          <!-- ENDIF -->
                          <input class="btn btn-default " type="submit" name="submit" value="{lang:"search","submit"}" />


                  <input type="hidden" name="issearch" value="1" />
                  </form>   
     
    <!-- ENDIF -->
                   </div>        
            </div>  