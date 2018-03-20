<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li class="active"><a href="{virtual_path}{member_events_link}">{lang:"member","frm_events"}</a></li> 
            </ol>    
        </div>         
        <div class="col-lg-12 profileactions">
            <div class="options">
                <div class="btn-group">
                    <!-- INCLUDE member_sections_links.tpl -->
                 </div>
            </div>
         </div>              
                 
        <div class="col-sm-9">     
                        
             <div class="panel panel-default">
                 <div class="panel-heading"><h4 class="pagetitle">{lang:"member","app_events"}</h4></div> 
                 <div class="panel-body padding-b-0">
           
                    <!-- IF hide_content != "1" -->

                        <!-- BEGIN events_entries -->
                        
                                 <div class="container-fluid container-small">
                                <!-- IF rowcnt > "0" --><hr><!-- ENDIF -->
                                  <div class="row">
                                      <div class="col-sm-2 loop_album dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">						               
                                          <div class="album_wrapper bevelbottom">              	
                                              <div class="image">									
                                                  <!-- IF event_picture_preview -->										
                                                      <a href="{top.virtual_path}{event_details_link}">
                                                        <img class="img-responsive img-full" src="{vldthemes:a="thumbnail",path=member_media_path,filename=event_picture_preview}" alt="" border="0" /></a>									
                                                      <!-- ELSE -->										
                                                      <a href="{top.virtual_path}{event_details_link}">
                                                        <img class="img-responsive img-full"  src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>									
                                                      <!-- ENDIF -->          
                                              </div>  					 	 
                                          </div>
                                      </div>
      
                                      <div class="col-sm-7">	
                                          <h5 class=""><a href="{top.virtual_path}{event_details_link}">{trim:event_name,35}</a></h5>                 
                                          <small>{event_start_date} @ {event_field_place_name} </small>							 									
                                          <strong{event_field_summary_name}:</strong>
                                          <p class="text-justify">{trim:event_field_summary_value,210}</p>   					
                                      </div> 
      
                                      <div class="col-sm-3">					 							
      
                                       <!-- IF settings.enable_event_pictures AND session.can_view_own_events_pictures -->    							
                                          <a class="btn btn-sm btn-primary pull-right" href="{top.virtual_path}{event_pictures_link}" title="{event_total_pictures}" data-toggle="tooltip" data-placement="top"> <span class="glyphicon glyphicon-picture"></span> </a>    							
                                          <!-- ENDIF -->                                                     
                                      </div>
                                      
                                  </div>
                                  </div>
                        
                        
                        <!-- END events_entries -->
         
                </div>

             <!-- ENDIF -->
        </div>   
        </div>   
        <div class="col-sm-3">
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div> 
    </div>
</div>
                                        
<!-- INCLUDE footer.tpl -->
