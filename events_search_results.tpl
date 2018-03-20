<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
			     	<li>{anchor:url1="events/search/",url2="index.php?m=events&p=search",name="events|frm_search"}</li>
    			 	<!-- IF hide_content != "1" -->
    					<li class="active"><a href="{virtual_path}{search_link}">{lang:"events","frm_results"}</a></li>
    				<!-- ENDIF -->        
        </ol>
    </div>

    <div class="col-lg-12 profileactions">
      <div class="btn-group">
        {anchor:url1="events/calendar/",url2="index.php?m=events&p=calendar",name="events|opt_calendar", class="btn btn-primary"}
				{anchor:url1="events/search/",url2="index.php?m=events&p=search",name="events|opt_search", class="btn btn-primary"}
				<a href="{virtual_path}{search_link}" class="active btn btn-primary">{lang:"events","opt_results"}</a>
				<!-- IF hide_content != "1" -->
					<a href="javascript:void(0)" onclick="showhide_field('div_reorder')" class="btn btn-primary" title="{lang:"events","reorder"}">{lang:"events","reorder"}</a>
				<!-- ENDIF -->
      </div>
  </div>
  
  <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
      <div class="col-sm-9">
        <!-- IF hide_content != "1" -->
        
        
        <div class="panel panel-default">
          <div class="panel-heading">{lang:"events","app_results"}</div>
          <div class="panel-body padding-b-5">
   
      			<div class="dataitem single" id="div_reorder" style="display: none">

      					<form name="form_reorder" action="{virtual_path}{search_link}" class="container-fluid container-small" method="post">
      					
                   <div class="row">
                      <div class="col-sm-4">
                        <div class="form-group">
            						  <label for="field_orderby">{lang:"events","order_by"}</label>
            							<select class="form-control" name="orderby" id="field_orderby">{dropdownlist:orderby_box,search_orderby}</select>
                        </div>
                      </div>
                     
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label for="field_direction">{lang:"events","direction"}</label>
            						  <select class="form-control" name="direction" id="field_direction">{dropdownlist:direction_box,search_direction}</select>
                        </div>
                      </div>
                    
                    <div class="col-sm-4">  
                      <div class="form-group">
                        <label>&nbsp;</label> <br>
                    	 <input class="btn btn-success btn-sm" name="submit" value="{lang:"events","submit"}" type="submit" />
                      </div>
                    </div>
                    
                    
                    <div class="col-sm-12"><hr></div>
                                 
      						  </div>
                    
       
      					
      					</form>

      			</div>
      
      
         <div class="container-fluid container-small">
          	<div class="row page_events_search_results">
          
          			<!-- BEGIN search_events -->
          
            				<div class="col-md-2 col-xs-6 {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
               
                     <div class="ownwell">
            						<div class="vt_image ">
                        
                         		<!-- IF event_picture_preview -->
          										<a href="{top.virtual_path}{event_details_link}"><img class="ease img-responsive img-full" src="{top.virtual_pic_path}{member_media_path}{event_picture_preview}" alt="" border="0" /></a>
          									<!-- ELSE -->
          										<a href="{top.virtual_path}{event_pictures_link}"><img class="ease img-responsive img-full"  src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>
          									<!-- ENDIF -->
                           
            							</div>
            							
            							<div class="datainfo bg_white_alpha">
              							<a class="vt_link" href="{top.virtual_path}{event_details_link}">{trim:event_name,10}</a>                             	
              					 </div>
            			     

                          <div class="ownwell_actions btn-group btn-group-justified">
                          	<a class="btn-sm btn btn-link" href="{top.virtual_path}{event_guests_link}"><span class="glyphicon glyphicon-user"></span>  {event_total_guests}</a></li>
              							<!-- IF settings.enable_event_pictures AND session.can_view_own_events_pictures -->
              							<a class="btn-sm  btn btn-link" href="{top.virtual_path}{event_pictures_link}"><span class="glyphicon glyphicon-picture"></span> {event_total_pictures}</a>
              							<!-- ENDIF --> 
          							  </div>
            						
                      </div>
                  </div>
            				          	
          			<!-- END search_events -->
          </div>
          </div>

  

  	<!-- IF total_pages > "1"  -->
  	<div class="webffo-inner">
    	<div id="footer_pagination" class="padding-15 footer_pagination clearfix">
  			<div class="pull-right">
          <span>{lang:"core","page_numbers"}</span>
        	<div class="btn-group">
          	{page_links}
          </div>
         </div> 
  		</div>
     </div> 
      <script type="text/javascript">
        $(window).load(function(){
          $('#footer_pagination a').addClass('btn btn-default');
          
        });
      </script>
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