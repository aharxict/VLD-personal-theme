
<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
    				<li>{anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|frm_events"}</li>
    					<li><a href="{virtual_path}{event_details_link}">{trim:event_name,30}</a></li>
    					<li class=""><a href="{virtual_path}{event_pictures_link}">{lang:"events","frm_pictures"}</a></li>
    			  	<li class="active"><a href="{virtual_path}{picture_link}"><!-- IF picture_description -->{trim:picture_description,20}<!-- ELSE -->{lang:"events","frm_view"}<!-- ENDIF --></a></li>
          </ol>
    </div>

    <div class="col-lg-12 profileactions">
    
      <div class="btn-group">
        	<a class="btn btn-primary" href="{virtual_path}{pictures_page_link}">{lang:"events","back_to_pictures"}</a>
			   	<a class="btn btn-default" href="{virtual_path}{previous_picture_link}">&laquo; {lang:"events","previous_page"}</a>
					<a class="btn btn-default" href="{virtual_path}{next_picture_link}">{lang:"events","next_page"} &raquo;</a>
      </div>
                 
  </div>
  
  <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
  
    <div class="col-sm-9">
      <!-- IF hide_content != "1" -->
   
     <div class="panel panel-default">
       <div class="panel-heading">{lang:"events","app_pictures"}</div>
       <div class="panel-body">
       
         <div class="container-fluid container-small">
           <div class="row">
             
              <div class="col-lg-4 col-md-4 col-md-4 col-sm-4 col-xs-12 ">
        				<div class="image">
        					<a href="{virtual_path}{picture_link}"><img class="img-responsive img-full" src="{top.virtual_pic_path}{member_media_path}{picture_filename}" alt="" border="0" /></a>
        				</div>
              </div> 
              
        			<div class="col-lg-8 col-md-8 col-md-8 col-sm-8 col-xs-12 padding-xs-top">
              	<div class="entry">
        					{picture_description}
        				</div>
              </div>  
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