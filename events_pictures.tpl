<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
    				<li>{anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|frm_events"}</li>
    				<!-- IF hide_content != "1" -->
    					<li><a href="{virtual_path}{event_details_link}">{trim:event_name,30}</a></li>
    					<li class="active"><a href="{virtual_path}{event_pictures_link}">{lang:"events","frm_pictures"}</a></li>
    				<!-- ENDIF -->
          </ol>
    </div>

    <div class="col-lg-12 profileactions">
    
      <div class="btn-group">
         
        	<a href="{virtual_path}{event_details_link}" class="btn btn-primary">{lang:"events","frm_details"}</a>
					<a href="{virtual_path}{event_guests_link}"  class="btn btn-primary">{lang:"events","frm_guests"}</a>
					<!-- IF settings.enable_event_pictures -->
						<a href="{virtual_path}{event_pictures_link}" class="btn btn-primary active">{lang:"events","frm_pictures"}</a>
					<!-- ENDIF -->
      </div>
                 
  </div>
  
  <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
  
    <div class="col-sm-9">
      <!-- IF hide_content != "1" -->
   
     <div class="panel panel-default">
       <div class="panel-heading">{lang:"events","app_pictures"}</div>
       <div class="panel-body">
     
      <div class="container-fluid container-small">   
        <div class="row clearfix page_event_pictures">
            <!-- BEGIN event_pictures -->
            <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6  margin-b-25">
                <div class="padding-10 bg_white_alpha bevelbottom clearfix">
                    <div class="entry_top clearfix">
                        <div class="image">
                            <a href="{top.virtual_path}{picture_link}">
                                <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=top.member_media_path,filename=picture_preview}" alt="" border="0" />
                            </a>
                        </div>
                    </div>
                </div>
            </div> 
        
            <!-- END event_pictures -->
        </div>
      </div>
      
         
      <!-- IF total_pages > "1" AND hide_content != "1" -->
    
          <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
              <div class="pull-right">
                  <span>{pages_info}</span>
                  <div class="btn-group">
                      <!-- IF previous_page != "0" -->
                      <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"pictures","previous_page"}</a>
                      <!-- ENDIF -->
                      <!-- IF next_page != "0" -->
                      <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"pictures","next_page"} &raquo;</a>
                      <!-- ENDIF -->
                  </div>
              </div> 
          </div>
      <!-- ENDIF -->
            
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