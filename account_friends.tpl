<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">                
                <li> <a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>                
                <li class="active">{anchor:url1="account/friends/",url2="index.php?m=account_friends",name="friends|frm_friends"} </li>                
                <!-- IF page_online -->                
                <li class="active">{anchor:url1="account/friends/online/",url2="index.php?m=account_friends&p=online",name="friends|frm_friends_online"}</li>                
                <!-- ENDIF -->            
            </ol>    
        </div>     
        <div class="profileactions col-lg-12 options">                
           <div class="btn-group">                    
               <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/friends/","index.php?m=account_friends"}" title="{lang:"friends","opt_friends"}" <!-- IF active_module == "account_friends" -->class="active btn btn-default"
                  <!-- ELSE -->class="btn btn-default"
                  <!-- ENDIF -->>{lang:"friends","opt_friends"}</a>                    
               <a class="btn btn-default" href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/friends/requests/","index.php?m=account_friends&p=requests"}" title="{lang:"friends","opt_requests"}">{lang:"friends","opt_requests"}
                   <!-- IF session.new_friends --> ({session.new_friends})
                   <!-- ENDIF --></a>                    
               <!-- IF show_online_tab -->                    
               <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/friends/online/","index.php?m=account_friends&p=online"}" title="{lang:"friends","opt_friends_online"}" <!-- IF active_module == "account_friends_online" -->class="active btn btn-default"
                  <!-- ELSE -->class="btn btn-default"
                  <!-- ENDIF -->>{lang:"friends","opt_friends_online"}</a>                    
               <!-- ENDIF -->  			                 
           </div>            
       </div>    
        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>           
        <div class="col-sm-9">              
            
              <div class="panel panel-default">
                 <div class="panel-heading"> <!-- IF page_online -->{lang:"friends","app_friends_online"}<!-- ELSE -->{lang:"friends","app_friends"}<!-- ENDIF --></div> 
                 <div class="panel-body">
           
                <!-- IF hide_content != "1" -->                    
                  <div class="container-fluid container-small">  
                    <div class="row"> 
                      <!-- BEGIN friends_profiles -->                
                      <div class="loop_friends loop_member col-sm-2 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">                    
                          <!-- INCLUDE webffo_profile.tpl -->                
                      </div>                  
                      <!-- END friends_profiles -->             
                     </div>
                   </div>
                <!-- ENDIF -->  

                <!-- IF total_pages > "1" AND hide_content != "1"  -->    
         
                    <div id="footer_pagination" class="padding-15 footer_pagination clearfix">            
                        <div class="pull-right">                
                            <span>{pages_info}
                            </span>                
                            <div class="btn-group">                    
                                <!-- IF previous_page != "0" -->                    
                                <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"friends","previous_page"}</a>                    
                                <!-- ENDIF -->                    
                                <!-- IF next_page != "0" -->                    
                                <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"friends","next_page"} &raquo;</a>                    
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