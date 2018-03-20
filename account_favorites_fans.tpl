<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li>
                    <a href="{virtual_path}" class="breadcrumb_home" >Home</a>
                </li>				
                <li>{anchor:url1="account/favorites/",url2="index.php?m=account_favorites",name="favorites|frm_favorites"}
                </li>				
                <li class="active">{anchor:url1="account/favorites/fans/",url2="index.php?m=account_favorites&p=fans",name="favorites|frm_fans"}
                </li>    
            </ol>    
        </div> 
        <div class="btn-group profileactions col-lg-12">
            {anchor:url1="account/favorites/",url2="index.php?m=account_favorites",name="favorites|opt_favorites",class="btn btn-primary"} 				
            <!-- IF settings.enable_fans AND session.can_view_own_fans --> 					
             {anchor:url1="account/favorites/fans/",url2="index.php?m=account_favorites&p=fans",name="favorites|opt_fans",class="btn btn-primary active"} 				
            <!-- ENDIF --> 				
            <!-- IF show_online_tab --> 					
                {anchor:url1="account/favorites/online/",url2="index.php?m=account_favorites&p=online",name="favorites|opt_favorites_online",class="btn btn-primary"} 				
            <!-- ENDIF -->       
        </div>  

        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
            
        <div class="col-sm-9">   

              <div class="panel panel-default">
                 <div class="panel-heading">{lang:"favorites","app_fans"}</div> 
                 <div class="panel-body">
        
                <!-- IF hide_content != "1" -->	
                      <div class="container-fluid container-small">
                        <div class="row">			  
                            <!-- BEGIN fans_profiles -->				
                            <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">          
                                <!-- INCLUDE webffo_profile.tpl -->          
                            </div>  			
                            <!-- END fans_profiles --> 		
                        </div>	
                    </div>	
                    <!-- IF total_pages > "1" -->		
                 	  <div id="footer_pagination" class="padding-15 footer_pagination clearfix">              
                            <div class="pull-right">            
                                <span>{pages_info}</span>             
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