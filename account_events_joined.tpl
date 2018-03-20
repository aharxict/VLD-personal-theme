<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
      <ol class="breadcrumb">        
        <li>  <a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>				
        <li class="active">{anchor:url1="account/events/",url2="index.php?m=account_events",name="events|frm_events"}</li>
      </ol>    
    </div> 
      
    <div class="btn-group profileactions col-lg-12">       
     {anchor:url1="account/events/",url2="index.php?m=account_events",name="events|opt_events",class=" btn btn-primary"}				
     {anchor:url1="account/events/joined/",url2="index.php?m=account_events&p=joined",name="events|opt_joinedevents",class="active btn btn-primary"}  			
     {anchor:url1="account/events/add/",url2="index.php?m=account_events&p=add",name="events|opt_addevent",class=" btn btn-primary"}       
    </div>      
    
    <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
      
    <div class="col-sm-9">     

      <div class="panel panel-default">
         <div class="panel-heading">{lang:"events","app_joined"} </div>              
            <div class="panel-body">         
         


            
            <!-- IF hide_content != "1" -->
            
            			<!-- BEGIN events_entries -->
            				<div class="dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
            					<table class="plain">
            						<tr>
            							<td>
            								<div class="image">
            									<!-- IF event_picture_preview AND event_picture_active -->
            										<a href="{top.virtual_path}{event_details_link}"><img src="{top.virtual_pic_path}{member_media_path}{event_picture_preview}" alt="" border="0" /><br /></a>
            									<!-- ELSE -->
            										<a href="{top.virtual_path}{event_details_link}"><img src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /><br /></a>
            									<!-- ENDIF -->
            								</div>
            							</td>
            							<td class="data">
            								<div class="datainfo">
            									<h2 class="inner"><a href="{top.virtual_path}{event_details_link}">{event_name}</a></h2>
            									<dl class="datainfo">
            										<dt>{event_field_summary_name}:</dt>
            										<dd>{event_field_summary_value}</dd>
            										<dt>{event_field_place_name}:</dt>
            										<dd>{event_field_place_value}</dd>
            										<dt>{lang:"events","startdate"}:</dt>
            										<dd>{event_start_date}</dd>
            									</dl>
            								</div>
            							</td>
            							<td>
            								<div class="actions">
            									<ul class="actions">
            										<li class="guests"><a href="{top.virtual_path}{event_details_link}">{event_total_guests} {lang:"events","total_guests"}</a></li>
            										<!-- IF settings.enable_event_comments AND event_allow_comments -->
            											<li class="comments"><a href="{top.virtual_path}{event_comments_link}">{event_total_comments} {lang:"events","total_comments"}</a></li>
            										<!-- ENDIF -->
            										<!-- IF settings.enable_event_pictures -->
            											<li class="pictures"><a href="{top.virtual_path}{event_pictures_link}">{event_total_pictures} {lang:"events","total_pictures"}</a></li>
            										<!-- ENDIF -->
            										<!-- IF session.can_leave_events -->
            											<li class="leave"><a href="#" onclick="javascript:confirmLink('{lang:"events","leave?"}', '{top.virtual_path}{event_leave_link}')" title="{lang:"events","leave"}">{lang:"events","leave"}</a></li>
            										<!-- ENDIF -->
            									</ul>
            									<div class="clear"></div>
            								</div>
            							</td>
            						</tr>
            					</table>
            				</div>
            			<!-- END events_entries -->
            	
            
            	<!-- IF total_pages > "1" -->
            		<div class="footer_wrap">
            			<div class="footer">
            				<p>{pages_info}</p>
            				<!-- IF previous_page != "0" -->
            					<a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"events","previous_page"}</a>
            				<!-- ENDIF -->
            				<!-- IF next_page != "0" -->
            					<a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"events","next_page"} &raquo;</a>
            				<!-- ENDIF -->
            	
            			</div>
            		</div>

            	<!-- ENDIF -->

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
