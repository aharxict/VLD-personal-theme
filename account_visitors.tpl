<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a>
                </li>				
                <li class="active">{anchor:url1="account/visitors/",url2="index.php?m=account_visitors",name="visitors|frm_visitors"} </li>		
            </ol>    
        </div>    
        
        <div class="col-lg-12"><!-- INCLUDE message.tpl --></div>        
        <div class="col-sm-9">              
                    
        <div class="panel panel-default">
          <div class="panel-heading">{lang:"visitors","app_visitors"}</div>
          <div class="panel-body">
              <div class="container-fluid container-small">
                <!-- IF hide_content != "1" -->		  
                <div class="row">    	
                    <!-- BEGIN visitors_profiles -->	       				
                    <div class="loop_member col-sm-2 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">          
                        <!-- INCLUDE webffo_profile.tpl -->         
                    </div>     			
                    <!-- END visitors_profiles -->      
                </div>  
                <!-- ENDIF -->  	
              </div>        	
              	
            <!-- IF total_pages > "1" AND hide_conent != "1" --> 		
            <div class="footer_wrap">			
                <div class="footer">				
                    <p>{pages_info}
                    </p>				
                    <!-- IF previous_page != "0" -->					
                    <a href="{virtual_path}{previous_page_link}">&laquo; {lang:"visitors","previous_page"}</a>				
                    <!-- ENDIF -->				
                    <!-- IF next_page != "0" -->					
                    <a href="{virtual_path}{next_page_link}">{lang:"visitors","next_page"} &raquo;</a>				
                    <!-- ENDIF -->				
                 	
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