<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ol class="breadcrumb">
          <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
          <li>{anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|frm_events"}</li>
          <li class="active"><a href="{virtual_path}{curr_page}">{events_date}</a></li>
          <li class="active"><a href="{virtual_path}{ifelse:settings.fancy_urls,"1","events/rss/","index.php?m=events&p=rss"}" target="_blank"><img src="{virtual_tpl_path}{session.template}/media/rss.png" border="0" /></a></li>
      </ol>
    </div>

    <div class="col-lg-12 profileactions">
      <div class="btn-group">
	{anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|opt_calendar",class="active btn btn-primary"}
        {anchor:url1="events/search/",url2="index.php?m=events&p=search",name="events|opt_search",class="btn btn-primary"}
        <a class="btn btn-info" href="{virtual_path}{prev_page}">&laquo; {lang:"events","prev_month"}</a>
        <a class="btn btn-info" href="{virtual_path}{next_page}">{lang:"events","next_month"} &raquo;</a>        
        </div>
    </div>
          
          
      <div class="col-sm-9">              
        <div class="well">
            <h4 class="pagetitle">{events_date}</h4>
  	</div>


            <!-- IF hide_content != "1" -->
            <div class="webffo-inner margin-t-25 margin-b-25">

                <div class=" well">

                    <table class="calendar events_calendar_round" cellpadding="0" cellspacing="1" style="">
                        <tr class="weekdays">
                            <!-- BEGIN weekdays -->
                            <td>{name}</td>
                            <!-- END weekdays -->
                        </tr>
                        <tr>
                            <!-- BEGIN events_entries -->
                            <td class="eventday_round <!-- IF events -->has_events<!-- ENDIF -->" valign="top">
                                <div class="event-inner">
                                    <!-- IF events -->
                                    <button type="button" class="btn btn-primary btn-block btn-xs" data-toggle="modal" data-target="#myModal_{events_day}">
                                           {events_day}
                                     </button>
                                    
                                    <!-- ELSE -->
                                      <!-- IF events_day -->{events_day}<!-- ENDIF -->
                                    
                                    <!-- ENDIF -->
                                                               
                                    
                                    <div class="modal fade" id="myModal_{events_day}" tabindex="-1" role="dialog" aria-labelledby="myModal_{events_day}_Label">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModal_{events_day}_Label">{events_day} {top.events_date}</h4>
                                          </div>
                                          <div class="modal-body">
                                          
                                          <div class="container-small container-fluid">
                                               <div class="row"> 
                                                <!-- BEGIN events -->   
                                                                                
                                                  <div class="col-sm-2 loop_events dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">						                             	
                                                        <div class="image">									
                                                          
                                                      <!-- IF member_id -->
                                                       <!-- IF member_picture AND member_picture_active -->
                                                        <a class="" href="{top.virtual_path}{member_profile_link}">
                                                         <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=member_picture}" alt="{member_username}" border="0" />
                                                        </a>
                                                      <!-- ELSE -->
                                                      <a href="{top.virtual_path}{member_profile_link}">
                                                        <img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/user_picture_none.gif" alt="{member_username}" border="0" />
                                                      </a>
                                                      <!-- ENDIF -->
                                                                                                          
                                                      <!-- ELSE -->
                                                      
                                                     
                                                      <!-- ENDIF -->
                                                    
                                                    <br>  
                                                    
                                                    <!-- IF event_join_link -->
                                                      
                                  									<!-- IF session.can_join_events AND member_is_joined == "0" -->
                                  										<a href="#" class="btn btn-primary btn-xs" onclick="javascript:confirmLink('{lang:"events","join?"}', '{top.virtual_path}{event_join_link}')">{lang:"events","join"}</a>
                                  									<!-- ELSEIF session.can_leave_events AND member_is_joined == "1" -->
                                  										<a href="#"  class="btn btn-primary btn-xs" onclick="javascript:confirmLink('{lang:"events","leave?"}', '{top.virtual_path}{event_leave_link}')" title="{lang:"events","leave"}">{lang:"events","leave"}</a>
                                  									<!-- ENDIF -->
                                                   
                                                   <!-- ENDIF -->
                                                 </div>  					 	 
                                              </div>  
                                          <!-- END events -->
                
                                         
                                         </div>
                                        </div>
                                        </div>
                                      </div>
                                    </div

                                   
                                </div>
                            </td>
                            <!-- IF rowcnt > "0" AND rowcnt < "35" AND rowcnt mod "7" == "6" AND rowlast != "1" --></tr><!-- IF rowcnt != "34" --><tr><!-- ENDIF --><!-- ENDIF -->
                            <!-- END events_entries -->
                        </tr>
                    </table>
        <script type="text/javascript" language="javascript">
          function webffo_square() {
            $('.events_calendar_round .eventday_round ').height($('.events_calendar_round .weekdays td').first().width()); 
          }
      
        	$(document).ready(function(){    
            webffo_square();       
          });
          
          $(window).resize(function(){
            webffo_square();
          });
    </script>

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

