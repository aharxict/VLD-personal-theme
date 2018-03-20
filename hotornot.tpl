<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">	
             <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
				<li class="active">{anchor:url1="events/search/",url2="index.php?m=events&p=search",name="hotornot|frm_hotornot"}</li>
        </ol>
    </div>

   <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
 

      <div class="col-sm-3">
               <div class="panel panel-default">
          <div class="panel-heading">{lang:"hotornot","filters"}</div>
          <div class="panel-body">
					 <form name="hotornot" action="" method="post">

						<!-- IF total_types > "1" -->
							<div class="fieldset">
								<dl class="fieldset fieldgrid">
    								<dt><label for="field_group_type_label">{lang:"hotornot","members_type"}</label></dt>
									<dd>
										<select class="form-control" name="group_type_label" id="field_group_type_label" onchange="row_switch('type_'+this.value+'_box')">
											{dropdownlist:typesbox,default_type}
										</select>
									</dd>
								</dl>
								<div class="clear"></div>
							</div>
						<!-- ENDIF -->

						<!-- BEGIN profile_types -->
							<!-- IF profile_fields -->
								<!-- IF type_label == top.default_type -->
									<script type="text/javascript" language="javascript">var active_tab = 'type_{type_label}_box';</script>
								<!-- ENDIF -->
								<div id="type_{type_label}_box"<!-- IF type_label != top.default_type --> style="display:none"<!-- ENDIF -->>

									<div class="fieldset">
										<dl class="fieldset fieldgrid">

											<!-- BEGIN profile_fields -->

												<dt><label for="field_{field_label}">{field_name}</label></dt>
												<dd>
													<!-- IF field_type = "text" -->
														<input type="text" class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}" value="{htmlentities:field_value}" maxlength="{field_maxlength}" />
													<!-- ELSEIF field_type = "textarea" -->
														<textarea class="form-control" id="field_{field_label}" name="{field_label}" style="width: {field_width}; height: {field_height}">{htmlentities:field_value}</textarea>
													<!-- ELSEIF field_type = "checkbox" -->
														<ul class="fielditems">
															<!-- INBEGIN field_items -->
																<li><label>{checkboxes:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
															<!-- END field_items -->
														</ul>
														<div class="clear"></div>
													<!-- ELSEIF field_type = "radio" -->
														<!-- IF field_in_search_multi -->
															<ul class="fielditems">
																<!-- INBEGIN field_items -->
																	<li><label>{checkboxes:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
																<!-- END field_items -->
															</ul>
															<div class="clear"></div>
														<!-- ELSE -->
															<ul class="fielditems">
																<!-- INBEGIN field_items -->
																	<li><label>{radiobuttons:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
																<!-- END field_items -->
															</ul>
															<div class="clear"></div>
														<!-- ENDIF -->
													<!-- ELSEIF field_type = "combo" -->
														<!-- IF field_in_search_multi -->
															<ul class="fielditems">
																<!-- INBEGIN field_items -->
																	<li><label>{checkboxes:parent.field_label,rowcnt,parent.field_value,inner_key}&nbsp;{inner_value}</label></li>
																<!-- END field_items -->
															</ul>
															<div class="clear"></div>
														<!-- ELSE -->
															<select class="form-control" id="field_{field_label}" name="{field_label}">
																<option value="">{lang:"core","user_field_any"}</option>
																{dropdownlist:field_items,field_value}
															</select>
														<!-- ENDIF -->
													<!-- ELSEIF field_type = "birthday" -->
                            <div class="form-inline">
														  <select class="form-control" id="field_{field_label}" name="{field_label}_from">{dropdownlist:top.agebox,field_value}</select> -
														  <select class="form-control" id="field_{field_label}_to" name="{field_label}_to">{dropdownlist:top.agebox,field_default}</select>
												    </div>
                        	<!-- ENDIF -->
												</dd>

											<!-- END profile_fields -->

										</dl>
										<div class="clear"></div>
									</div>
								</div>
							<!-- ENDIF -->
						<!-- END profile_types -->

						<div class="fieldset">
							<dl class="fieldset fieldgrid">
								<!-- IF settings.adult_images AND session.can_view_adult_images -->
									<dt><label for="field_adult">{lang:"hotornot","show_adult"}</label></dt>
									<dd><select id="field_adult" class="form-control" name="adult">{dropdownlist:yesnobox,picture_adult}</select></dd>
								<!-- ENDIF -->
    							<dd class="submit margin-t-15"><input class="btn btn-primary" name="submit" value="{lang:"hotornot","submit"}" type="submit" /></dd>
							</dl>
							<div class="clear"></div>
						</div>
						<input type="hidden" name="ishotornot" value="1" />
					</form>
         </div>
         </div>
         
     
      </div>

      <div class="col-sm-6"> 
         <div class="panel panel-default">
           <div class="panel-heading">{lang:"hotornot","frm_hotornot"}</div> 
           <div class="panel-body">
    
  			
              
      			<!-- IF hide_content != "1" -->
                  
      					<div class="image">
      						<a href="{virtual_path}{member_profile_link}"><img class="img-full img-responsive" src="{virtual_pic_path}{member_media_path}{picture_filename}" alt="" border="0" /></a>
      					</div>

      					<div class="itemfooter">
      								<div class="ratingbox">
                          <br>
      									<div class="text-center">
      										<strong>{lang:"hotornot","your_rating"}</strong>
                         
      									</div>
                          <br>
                         <div class="btn-group btn-group-justified">
                            <a href="#" onclick="send_picture_rating({member_id},{picture_id},3);return false;" class="btn btn-default"><span class="glyph-lg glyphicon glyphicon-thumbs-down"></span></a>
                            <a href="#" onclick="send_picture_rating({member_id},{picture_id},5);return false;" class="btn btn-primary"><span class="glyph-lg glyphicon glyphicon-thumbs-up"></span></a>
                         </div>
                               <br>
                               
      									<div class="selection" id="rating_picture_box{picture_id}" onmouseout="ratingstar_reset('picture',{picture_id})">
      										<div id="rating_picture_response{picture_id}">
                        
      											<a onclick="send_picture_rating({member_id},{picture_id},1);return false;" onmouseover="ratingstar_toggle('picture',{picture_id},1);return false;" href="#" id="ratingstar{picture_id}__1"></a><!--
      											--><a onclick="send_picture_rating({member_id},{picture_id},2);return false;" onmouseover="ratingstar_toggle('picture',{picture_id},2);return false;" href="#" id="ratingstar{picture_id}__2"></a><!--
      											--><a onclick="send_picture_rating({member_id},{picture_id},3);return false;" onmouseover="ratingstar_toggle('picture',{picture_id},3);return false;" href="#" id="ratingstar{picture_id}__3"></a><!--
      											--><a onclick="send_picture_rating({member_id},{picture_id},4);return false;" onmouseover="ratingstar_toggle('picture',{picture_id},4);return false;" href="#" id="ratingstar{picture_id}__4"></a><!--
      											--><a onclick="send_picture_rating({member_id},{picture_id},5);return false;" onmouseover="ratingstar_toggle('picture',{picture_id},5);return false;" href="#" id="ratingstar{picture_id}__5"></a>
      										</div>
      									</div>
      
      									<script type="text/javascript" language="javascript">//ratingstar_reset('picture', {picture_id});</script>
      								</div>
      			
      								<a class="pull-right" href="{virtual_path}{member_profile_link}">{member_username}</a>
      		
      						<div class="clear"></div>
      					</div>
      			<!-- ENDIF -->
      				</div>
  		</div>
  </div>

  <div class="col-sm-3">
          <!-- INCLUDE webffo_sidebar.tpl -->
   </div>

</div>
</div>

	<script type="text/javascript" language="javascript">
	function send_picture_rating(member_id,picture_id,mark) {
		submit_rating('picture',member_id,picture_id,mark,"{picture_next_link}");
	}
	</script>

<!-- INCLUDE footer.tpl -->
