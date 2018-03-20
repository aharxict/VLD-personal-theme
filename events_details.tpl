<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
    				<li>{anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|frm_events"}</li>
    				<!-- IF hide_content != "1" -->
    					<li class="active"><a href="{virtual_path}{event_details_link}">{trim:event_name,30}</a></li>
    				<!-- ENDIF -->           
          </ol>
    </div>

    <div class="col-lg-12 profileactions clearfix">
    
      <div class="btn-group pull-right">
          <!-- IF session.can_join_events AND member_is_joined == "0" -->
      					<a href="#" class="btn btn-default " onclick="javascript:confirmLink('{lang:"events","join?"}', '{top.virtual_path}{event_join_link}')">{lang:"events","join"}</a></li>
      				<!-- ELSEIF session.can_leave_events AND member_is_joined == "1" -->
      				<a href="#"  class="btn btn-default " onclick="javascript:confirmLink('{lang:"events","leave?"}', '{top.virtual_path}{event_leave_link}')" title="{lang:"events","leave"}">{lang:"events","leave"}</a></li>
      				<!-- ENDIF -->
              
          <a class="btn btn-default" href="{top.virtual_path}{event_guests_link}">{event_total_guests}<!-- IF event_max_guests --> / {event_max_guests}<!-- ENDIF --> {lang:"events","total_guests"}</a></li>
          <!-- IF settings.enable_event_pictures -->
          <a class="btn btn-default" href="{top.virtual_path}{event_pictures_link}">{event_total_pictures} {lang:"events","total_pictures"}</a></li>
          <!-- ENDIF -->		
       </div> 
    
      <div class="btn-group">
         
        	<a href="{virtual_path}{event_details_link}" class="btn btn-primary active">{lang:"events","frm_details"}</a>
					<a href="{virtual_path}{event_guests_link}"  class="btn btn-primary">{lang:"events","frm_guests"}</a>
					<!-- IF settings.enable_event_pictures -->
						<a href="{virtual_path}{event_pictures_link}" class="btn btn-primary">{lang:"events","frm_pictures"}</a>
					<!-- ENDIF -->
      </div>
                 
  </div>
  
  <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
  
    <div class="col-sm-9">
      <!-- IF hide_content != "1" -->
      
      <div class="panel panel-default">
        <div class="panel-heading">{event_name}</div>
        
        <div class="panel-body">
        <div class="container-fluid container-small">
        <div class="row">
        
              <div class="col-sm-3 col-xs-3">
                  <div class="image ">
                      <!-- IF event_picture_preview AND event_picture_active -->
                      <a class="picture_zoom" href="{vldthemes:a="thumbnail",path=member_media_path,filename=event_picture}" id="event_picture_{event_id}" target="_blank">
                          <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=event_picture_preview}" alt="" border="0" />
                      </a>
                      <div id="event_picture_{event_id}_zoom" style="display:none"><img src="{vldthemes:a="thumbnail",path=member_media_path,filename=event_picture}" alt="" border="0" /><br/></div>
                      <!-- ELSE -->
                      <a href="{top.virtual_path}{event_details_link}"><img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>
                      <!-- ENDIF -->
                  </div>
      
                  <div class="datainfo margin-t-15">
                      {event_field_place_name}:
                      {event_field_place_value}<br>
                      {lang:"events","startdate"}:
                      {event_start_date}<br>
                      {lang:"events","creator"}:
                      <a href="{virtual_path}{member_profile_link}">{member_username}</a>
                  </div>          
              </div>
      
            <div class="padding-xs-top col-lg-9 col-md-8 col-sm-6 col-xs-12">
              <p><!-- IF event_field_description_value -->{event_field_description_value} <!-- ELSE --> &dash; <!-- ENDIF --></p>   
		        </div>
	     </div>
    	</div>
	</div>
	</div>
  
  	<!-- IF settings.enable_event_comments AND event_allow_comments AND session.can_view_all_events_comments -->
           
      <div class="comments page_events_comments">

				<div id="comments_page">
					{comments:type="event",member_id=member_id,content_id=event_id}
				</div>
        
        <div class="panel panel-default">
         <div class="panel-heading">{lang:"events","add_comment"}</div>
          <div class="panel-body">			

    							<form name="edit" method="post" action="">
    								<div class="fieldset old_form">
    									<dl class="fieldset">
    										<dt><label for="field_comment_body">{lang:"events","add_comment"}</label></dt>
    										<dd><textarea class="form-control textarea_full" id="field_comment_body" cols="40" rows="5" name="body">{comment_body}</textarea></dd>
    										<!-- IF settings.events_comments_captcha -->
      											<dt><label for="field_captcha">{lang:"events","verify_number"}</label></dt>
      											<dd class="form-inline">
    												<input type="text" id="field_captcha" class="form-control" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
    												<img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
    											</dd>
    										<!-- ENDIF -->
      										<dd class="submit margin-t-15"><input class="submit btn btn-primary" type="submit" name="submit" value="{lang:"events","submit"}" /></dd>
    									</dl>
    								</div>
    								<input type="hidden" name="iscomment" value="1" />
    							</form>
    					
		    	</div>
			   </div>
         
			</div>

	<!-- ENDIF -->
  
<!-- ENDIF -->
	</div>
  <div class="col-sm-3">
  <!-- INCLUDE webffo_sidebar.tpl -->
  </div>
</div>
</div>
<!-- INCLUDE footer.tpl -->