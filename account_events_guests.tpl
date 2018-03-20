<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
	<ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="account/events/",url2="index.php?m=account_events",name="events|frm_events"}</li>
            <li><a href="{virtual_path}{event_edit_link}">{lang:"events","frm_editevent"}</a></li>
            <li class="active"><a href="{virtual_path}{event_guests_view_link}">{lang:"events","frm_guests"}</a></li>
      </ol>                          
    </div> 
      
 <div class="btn-group profileactions col-lg-12">
        <a class="btn btn-primary" href="{virtual_path}{event_edit_link}">{lang:"events","opt_editevent"}</a>
        <a class="btn btn-primary active" href="{virtual_path}{event_guests_view_link}">{lang:"events","opt_guests"}</a>
        <a class="btn btn-primary" href="{virtual_path}{event_comments_view_link}">{lang:"events","opt_comments"}</a>
        <a class="btn btn-primary" href="{virtual_path}{event_pictures_view_link}">{lang:"events","opt_pictures"}</a>

 </div>      
      
    <div class="col-sm-9">  

       <div class="panel panel-default">
         <div class="panel-heading">{lang:"events","app_events"}</div> 
         <div class="panel-body padding-b-5">
    
                <!-- IF hide_content != "1" -->
                    <div class="container-fluid container-small">
                      <div class="row">
                          <!-- BEGIN guests_profiles -->
                            <div class="col-sm-2 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                                <!-- INCLUDE webffo_profile.tpl -->
                            </div>
                      <!-- END guests_profiles -->
                    </div>
                  </div>
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