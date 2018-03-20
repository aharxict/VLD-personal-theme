<!-- INCLUDE header.tpl -->
	
<div class="container">
  <div class="row">
  
    <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
   
    <div class="col-sm-9">
  
      <div class=" panel panel-default">
         <div class="panel-heading"><a href="{virtual_path}member/{member_username}">{member_username}</a>'s classified ads</div>              
         <div class="panel-body">
         
          
            <!-- IF hide_content != "1" -->
            <div class="clearfix ">		
          		
                <!-- BEGIN classifieds -->		
                    <!-- IF rowcnt > "0" -->
                      <hr> 
                    <!-- ENDIF -->
                    
                    <div class="row">	
                    
                        <div class="col-sm-2 col-xs-12  ">
                    		
                        	<!-- IF picture AND session.can_view_adult_images < cant_view_adult_images -->
                  					<a class="bold" href="{top.virtual_path}{classified_link}" title="">
                  						<img class="img-responsive img-full" src="{top.virtual_tpl_path}{session.template}/media/adult.jpg" alt="" />
                  					</a>
                  				<!-- ELSEIF picture -->
                  					<a class="bold" href="{top.virtual_path}{classified_link}" title="">
                  						<img class="img-responsive img-full" src="{top.virtual_pic_path}{session.media_path}{picture}" alt="" />
                  					</a>
                  				<!-- ELSE -->
                  					<a class="bold" href="{top.virtual_path}{classified_link}" title="">
                  						<img class="img-responsive img-full" src="{top.virtual_tpl_path}{session.template}/media/classified_picture_none.png" alt="" />
                  					</a>
                  				<!-- ENDIF -->
                        
                        </div>
                        
                        <div class="col-sm-8">
                        	<h4><a href="{top.virtual_path}{classified_link}" title=""><!-- BEGIN cats -->{title} / <!-- END cats -->{trim:title,25}</a></h4>
                    			<!-- IF description --><p class="text-justify">{trim:description,280}</p><!-- ENDIF -->	                        
                        </div>
                        <div class="col-sm-2">
                          <div class="label label-success label-big margin-b-15">{price}</div><br>
                          
                					<!-- IF dateupdated > "0" -->{dateupdated}<!-- ELSE -->{dateadded}<!-- ENDIF -->
                					Comments: {totalcomments}<br>
                					Views: {totalviews}<br>
                     
                        </div>
          	   	</div>
       
            <!-- END profile_classifieds -->

          </div>

            <!-- IF total_pages > "1" -->
            
            	<div class="pager">
            		
            		<!-- IF previous_page != "0" -->
            			<a href="{virtual_path}{previous_page_link}">&laquo; {lang:"core","previous_page"}</a>
            		<!-- ELSE -->
            			<span>&laquo; {lang:"core","previous_page"}</span>
            		<!-- ENDIF -->
            		
            		<b>{pages_info}</b>
            		
            		<!-- IF next_page != "0" -->
            			<a href="{virtual_path}{next_page_link}">{lang:"core","next_page"} &raquo;</a>
            		<!-- ELSE -->
            			<span>{lang:"core","next_page"} &raquo;</span>
            		<!-- ENDIF -->
            		
            	</div>
            	
            <!-- ENDIF -->
         <!-- ENDIF -->
        
        </div>
   </div>
  </div>
  
  <div class="col-sm-3">

    <!-- INCLUDE webffo_sidebar.tpl -->

  </div>

  </div>
</div>
<!-- INCLUDE footer.tpl -->