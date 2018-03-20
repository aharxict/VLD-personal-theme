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
     {anchor:url1="account/events/",url2="index.php?m=account_events",name="events|opt_events",class="active btn btn-primary"}				
     {anchor:url1="account/events/joined/",url2="index.php?m=account_events&p=joined",name="events|opt_joinedevents",class="btn btn-primary"}  			
     {anchor:url1="account/events/add/",url2="index.php?m=account_events&p=add",name="events|opt_addevent",class=" btn btn-primary"}       
    </div>      
      
    <div class="col-sm-9">     

      <div class="panel panel-default">
         <div class="panel-heading">{lang:"events","app_events"} </div>              
            <div class="panel-body">         
         

                <!-- IF hide_content != "1" -->		
                <div class="container-fluid">
                  <div class="row">			
                    <!-- BEGIN events_entries -->		             
                    
                                  <!-- IF rowcnt > "0" --><hr><!-- ENDIF -->
                                  <div class="row">
                                      <div class="col-sm-2 col-xs-3 loop_album dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">						               
                                          <div class="album_wrapper bevelbottom">              	
                                              <div class="image">									
                                                  <!-- IF event_picture_preview -->										
                                                      <a href="{top.virtual_path}{event_edit_link}">
                                                        <img class="img-responsive img-full" src="{vldthemes:a="thumbnail",path=session.media_path,filename=event_picture_preview}" alt="" border="0" /></a>									
                                                      <!-- ELSE -->										
                                                      <a href="{top.virtual_path}{event_pictures_link}">
                                                        <img class="img-responsive img-full"  src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>									
                                                      <!-- ENDIF -->          
                                              </div>  					 	 
                                          </div>
                                      </div>
      
                                      <div class="col-sm-7 col-xs-9 ">	
                                          <h5 class=""><a href="{top.virtual_path}{event_edit_link}">{event_name}</a></h5>                 
                                          <small>{event_start_date} @ {event_field_place_name} </small>							 									
                                          <strong{event_field_summary_name}:</strong>
                                          <p class="text-justify">{trim:event_field_summary_value,210}</p>   					
                                      </div> 
      
                                      <div class="col-sm-3 col-xs-12 text-right">					 							
      
                                       <!-- IF settings.enable_event_pictures AND session.can_view_own_events_pictures -->    							
                                          <a class="btn btn-sm btn-primary" href="{top.virtual_path}{event_pictures_link}" title="{event_total_pictures}" data-toggle="tooltip" data-placement="top"> <span class="glyphicon glyphicon-picture"></span> </a>    							
                                          <!-- ENDIF -->                                                     
                                          
                                      					
                                          <!-- IF session.can_edit_own_events -->    							
                                          <a class="btn btn-sm btn-primary" href="{top.virtual_path}{event_edit_link}" title="{lang:"events","edit"}" data-toggle="tooltip" data-placement="top"> <span class="glyphicon glyphicon-pencil"></span></a>    							
                                          <!-- ENDIF -->    							
                                          <!-- IF session.can_delete_own_events -->    								
                                          <a class="btn btn-sm btn-danger" href="#" onclick="javascript:confirmLink('{lang:"events","delete?"}', '{top.virtual_path}{event_delete_link}')" title="{lang:"events","delete"}" data-toggle="tooltip" data-placement="top"> <span class="glyphicon glyphicon-minus"></span></a>   							
                                          <!-- ENDIF -->  							 		
                                          
                                          <br>		
                                          <a class="event_action_link" href="{top.virtual_path}{event_guests_link}">{event_total_guests} 
                                            <!-- IF event_max_guests -->/ {event_max_guests}
                                            <!-- ENDIF --> {lang:"events","total_guests"}</a>
                                         							
                                          <!-- IF settings.enable_event_comments -->    							
                                          <a class="event_action_link" href="{top.virtual_path}{event_comments_link}">{event_total_comments} {lang:"events","total_comments"}</a>    							
                                          <!-- ENDIF -->    							
                                         
                                         
                                      </div>
                                      
                                  </div>
      
                            <!-- END events_entries -->		
                  </div>
                </div>
                <!-- ENDIF -->	
            
             </div>	
        
              <!-- IF total_pages > "1" AND hide_content != "1" -->	
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">			
                  <div class="pull-right">        
                    <span>{pages_info} </span>      	
                    <div class="btn-group">				
                      <!-- IF previous_page != "0" -->					
                      <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"events","previous_page"}</a>				
                      <!-- ENDIF -->				
                      <!-- IF next_page != "0" -->					
                      <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"events","next_page"} &raquo;</a>				
                      <!-- ENDIF -->        
                    </div>       
                  </div>  		
                </div>   	
              <!-- ENDIF -->  
              
          </div>
        </div>
        <div class="col-sm-3">
          <!-- INCLUDE webffo_account_sidebar.tpl -->
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->