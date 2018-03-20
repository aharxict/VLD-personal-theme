<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|frm_events"}</li>
            <li class="active"><a href="{virtual_path}{events_link}">{events_date}</a></li>
            <li class="active"><a href="{virtual_path}{ifelse:settings.fancy_urls,"1","events/rss/","index.php?m=events&p=rss"}" target="_blank"><img src="{virtual_tpl_path}{session.template}/media/rss.png" border="0" /></a></li>	
         </ol>
    </div>

    <div class="col-lg-12 profileactions">
      <div class="btn-group">
        {anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|opt_calendar",class="active btn btn-primary"}
        {anchor:url1="events/search/",url2="index.php?m=events&p=search",name="events|opt_search",class="btn btn-primary"}
        <a href="{virtual_path}{prev_page}" class=" btn btn-info">&laquo; {lang:"events","prev_month"}</a>
        <a href="{virtual_path}{next_page}" class=" btn btn-info">{lang:"events","next_month"} &raquo;</a>
      </div>
  </div>
      <div class="col-sm-9">
        <!-- IF hide_content != "1" -->


        <div class="row">
            <!-- BEGIN events_entries -->
            <div class="col-lg-3 margin-b-25 {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">

                <div class="image bg_white_alpha">
                    <div class="padding-15 padding-b-0">
                        <!-- IF event_picture_preview -->
                        <a href="{top.virtual_path}{event_edit_link}"><img class="img-responsive img-full" src="{top.virtual_pic_path}{session.media_path}{event_picture_preview}" alt="" border="0" /></a>
                        <!-- ELSE -->
                        <a href="{top.virtual_path}{event_pictures_link}"><img class="img-responsive img-full"  src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>
                        <!-- ENDIF -->
                    </div> 
                </div>

                <div class="datainfo bg_white_alpha">
                    <div class="padding-15 padding-b-0 ">
                        <h5 class="inner padding-0 margin-0"><a href="{top.virtual_path}{event_edit_link}">{event_name}</a> by <a href="{top.virtual_path}{member_profile_link}">{member_username}</a></h5>
                        <small>{event_start_date} @ {event_field_place_name} </small>							
                        <strong{event_field_summary_name}:</strong><br>
                            {event_field_summary_value}
                    </div>
                </div>   

                <div class="bg_white_alpha bevelbottom">
                    <div class="padding-15 ">
                        <div class="btn-group btn-group-justified">
                            <a class=" btn btn-primary" href="{top.virtual_path}{event_guests_link}">{event_total_guests} <!-- IF event_max_guests -->/ {event_max_guests}<!-- ENDIF --> {lang:"events","total_guests"}</a></li>
                            <!-- IF settings.enable_event_comments -->
                            <a class=" btn btn-primary" href="{top.virtual_path}{event_comments_link}">{event_total_comments} {lang:"events","total_comments"}</a>
                            <!-- ENDIF -->
                            <!-- IF settings.enable_event_pictures AND session.can_view_own_events_pictures -->
                            <a class=" btn btn-primary" href="{top.virtual_path}{event_pictures_link}">{event_total_pictures} {lang:"events","total_pictures"}</a>
                            <!-- ENDIF --> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- END events_entries -->
        </div>  
                            
    <!-- ENDIF -->
        </div>
      <div class="col-sm-3">
     <!-- INCLUDE webffo_sidebar.tpl -->
 </div>  
 </div>
</div>
<!-- INCLUDE footer.tpl -->

