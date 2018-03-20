<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
    				<li>{anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|frm_events"}</li>
    				<li><a href="{virtual_path}{event_details_link}">{trim:event_name,30}</a></li>
        	<!-- IF hide_content != "1" -->
					<li><a href="{virtual_path}{event_details_link}">{trim:event_name,30}</a></li>
					<li class="active"><a href="{virtual_path}{event_guests_link}">{lang:"events","frm_guests"}</a></li>
				<!-- ENDIF -->
        </ol>
    </div>

    <div class="col-lg-12 profileactions">
    
      <div class="btn-group">
           <a class="btn btn-primary" href="{virtual_path}{event_details_link}">{lang:"events","frm_details"}</a>
  					<a href="{virtual_path}{event_guests_link}" class="active btn btn-primary">{lang:"events","frm_guests"}</a>
  					<!-- IF settings.enable_event_pictures -->
  						<a class="btn btn-primary" href="{virtual_path}{event_pictures_link}">{lang:"events","frm_pictures"}</a>
  					<!-- ENDIF -->
      </div>
                 
  </div>
  
  <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
  
    <div class="col-sm-9">
         <!-- IF hide_content != "1" -->
         <div class="panel panel-default">
           <div class="panel-heading">{lang:"events","app_guests"}</div>
           <div class="panel-body padding-b-5">
    
            
               <div class="container-fluid container-small">
                 <div class="row">
                   
      
                <!-- IF hide_content != "1" AND guests_profiles -->
                
                        <!-- BEGIN guests_profiles -->
                        <div class="col-sm-2 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                            <!-- INCLUDE webffo_profile.tpl -->
                        </div>
                        <!-- END guests_profiles -->
      
                              
                <!-- ENDIF -->             
                  </div>
            </div>
           </div>
       </div>
    <!-- ENDIF -->
  </div>
  <div class="col-sm-3">
  <!-- INCLUDE webffo_sidebar.tpl -->
  </div>
</div>
</div>
<!-- INCLUDE footer.tpl -->          