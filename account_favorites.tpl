<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li>
                    <a href="{virtual_path}" class="breadcrumb_home" >Home</a>
                </li>				
                <li class="active">{anchor:url1="account/favorites/",url2="index.php?m=account_favorites",name="favorites|frm_favorites"}
                </li>				
                <!-- IF page_online -->					
                <li class="active">{anchor:url1="account/favorites/online/",url2="index.php?m=account_favorites&p=online",name="favorites|frm_favorites_online"}
                </li>				
                <!-- ENDIF -->    
            </ol>    
        </div> 
        <div class="col-lg-12 btn-group profileactions">        
            <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/favorites/","index.php?m=account_favorites"}" title="{lang:"favorites","opt_favorites"}" <!-- IF active_module == "account_favorites" -->class="active btn btn-primary"
               <!-- ELSE -->class="btn btn-primary"
               <!-- ENDIF -->>{lang:"favorites","opt_favorites"}</a>				
            <!-- IF settings.enable_fans AND session.can_view_own_fans -->					{anchor:url1="account/favorites/fans/",url2="index.php?m=account_favorites&p=fans",name="favorites|opt_fans", class="btn btn-primary"} 				
            <!-- ENDIF --> 				
            <!-- IF show_online_tab --> 					
            <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/favorites/online/","index.php?m=account_favorites&p=online"}" title="{lang:"favorites","opt_favorites_online"}" <!-- IF active_module == "account_favorites_online" -->class="active btn btn-primary"
               <!-- ELSE -->class="btn btn-primary"
               <!-- ENDIF -->>{lang:"favorites","opt_favorites_online"}</a>				
            <!-- ENDIF -->      
        </div>    
            
      <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        <div class="col-sm-9">              
             <div class="panel panel-default">
                 <div class="panel-heading"><!-- IF page_online -->{lang:"favorites","app_favorites_online"}
                    <!-- ELSE -->{lang:"favorites","app_favorites"}
                    <!-- ENDIF -->
                 </div> 
                 <div class="panel-body">
              
                    <!-- IF hide_content != "1" -->	
                    <div class="container-fluid container-small">	    
                        <div class="row">         		    	
                            <!-- BEGIN favorites_profiles -->   				  
                            <div class="loop_favorites loop_member col-lg-2 col-md-3 col-sm-4 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">               
                                <!-- INCLUDE webffo_profile.tpl -->            
                            </div>    			
                            <!-- END favorites_profiles -->   		
                        </div>  
                    </div>  
                    <!-- ENDIF -->
            
             
                    <!-- IF hide_content != "1"AND total_pages > "1" -->       
                        <div id="footer_pagination" class="padding-15 footer_pagination clearfix">    			
                            <div class="pull-right">            
                                <span>{pages_info}
                                </span>          	
                                <div class="btn-group">            	
                                    <!-- IF previous_page != "0" -->    				  	
                                    <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"favorites","previous_page"}</a>    				  
                                    <!-- ENDIF -->    				  
                                    <!-- IF next_page != "0" -->    					  
                                    <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"favorites","next_page"} &raquo;</a>    				  
                                    <!-- ENDIF -->            
                                </div>           
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