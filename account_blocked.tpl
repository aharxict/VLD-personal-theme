<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li><a href="{virtual_path}" class="breadcrumb_home">Home</a></li>				
                <li class="active">{anchor:url1="account/blocked/",url2="index.php?m=account_blocked",name="blocked|frm_blocked"}
                </li>		
            </ol>    
        </div>    
            
            
        <div class="col-lg-12"><!-- INCLUDE message.tpl --></div>
        <div class="col-sm-9">              
            
              <div class="panel panel-default">
                 <div class="panel-heading">  {lang:"blocked","app_blocked"}</div>              
                 <div class="panel-body">
                 <!-- IF hide_content != "1" -->
                    <div class="container-fluid container-small">		
                        <div class="row">			
                            <!-- BEGIN blocked_profiles -->        
                            <div class="col-sm-2 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">          
                                   <!-- INCLUDE webffo_profile.tpl -->       	    
                            </div>    	
                            <!-- END blocked_profiles -->		
                        </div>
                    </div>	
                 <!-- IF total_pages > "1" -->	
                    <div class=" margin-t-25">  	
                        <div id="footer_pagination" class="padding-15 footer_pagination clearfix">			
                            <div class="pull-right">        
                                <span>{pages_info}</span>      	
                                <div class="btn-group">          
                                    <!-- IF previous_page != "0" -->  					
                                    <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"blocked","previous_page"}</a>  				
                                    <!-- ENDIF -->  				
                                    <!-- IF next_page != "0" -->  					
                                    <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"blocked","next_page"} &raquo;</a>  				
                                    <!-- ENDIF -->        
                                </div>       
                            </div>  		
                        </div>   
                    </div>  	
                <!-- ENDIF --> 
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