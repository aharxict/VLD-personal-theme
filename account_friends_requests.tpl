<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li>
                    <a href="{virtual_path}" class="breadcrumb_home" >Home</a>
                </li>	     	
                <li>{anchor:url1="account/friends/",url2="index.php?m=account_friends",name="friends|frm_friends"}
                </li>				
                <li class="active">{anchor:url1="account/friends/requests/",url2="index.php?m=account_friends&p=requests",name="friends|frm_friends_requests"}
                </li>		
            </ol>    
        </div>  

        <div class="profileactions col-lg-12">  			
            <div class="btn-group">		      
                {anchor:url1="account/friends/",url2="index.php?m=account_friends",name="friends|opt_friends",class="btn btn-default"} 				  
                <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/friends/requests/","index.php?m=account_friends&p=requests"}" title="{lang:"friends","opt_requests"}" class="active btn btn-default">{lang:"friends","opt_requests"}
                    <!-- IF session.new_friends --> ({session.new_friends})
                    <!-- ENDIF --></a>				  
                <!-- IF show_online_tab -->					 
                {anchor:url1="account/friends/online/",url2="index.php?m=account_friends&p=online",name="friends|opt_friends_online",class="btn btn-default"} 				  
                <!-- ENDIF -->   			
            </div>  		
        </div>    
        
       <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
    
        <div class="col-sm-9 ">    

            <div class="panel panel-default">
                 <div class="panel-heading">{lang:"friends","app_friends_requests"}</div> 
                 <div class="panel-body">
           
                <!-- IF hide_content != "1" -->                    
                  <div class="container-fluid container-small">  
                    <div class="row">			
                        <!-- BEGIN requests_profiles -->				
                        <div class="loop_friends loop_member col-lg-2 col-md-3 col-sm-4 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">  						
                            <!-- INCLUDE webffo_profile.tpl -->				
                        </div>			
                        <!-- END requests_profiles -->		
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