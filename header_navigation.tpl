<!-- Static navbar -->
<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      
      <div style="margin:12px 15px 0 0"  class="visible-xs btn-group pull-right">
        <!-- IF loggedin -->
        <a href="{virtual_path}account/messages/" class="btn btn-sm btn-success" onclick="return toggleConversations()"><span class="glyphicon glyphicon-envelope"></span> <span class="msg_count"></span> </a> 
        <button class="btn btn-sm btn-success" onclick="return showNotificationModal()"><span class="glyphicon glyphicon-globe"></span> <span class="vt_cnt" style="display:none">0</span></a>  
        <!-- ENDIF -->
        <button class="btn btn-sm btn-success" data-toggle="collapse" data-target="#navcol"><span class="glyphicon glyphicon-th-large"></span></button>
      </div>
      
      <a class="navbar-brand" href="{virtual_path}">
          <img class="visible-xs visible-sm" src="{virtual_tpl_path}{session.template}/logo_small.png" alt="{vldthemes:a="lang",key="header_sitename"}" title="{vldthemes:a="lang",key="header_sitename"}">
          <img class="visible-lg visible-md" src="{virtual_tpl_path}{session.template}/logo.png" alt="{vldthemes:a="lang",key="header_sitename"}" title="{vldthemes:a="lang",key="header_sitename"}">
      </a>
     
    </div>
   

    <div class="collapse navbar-collapse" id="navcol">

          <!-- IF loggedin -->    
          <ul class="nav navbar-nav">
            <li>
              <a href="{virtual_path}account/home/" title="{lang:"core","usermenu_page"}"><i class="glyphicon glyphicon-home"></i> {lang:"core","usermenu_page"}</a>
            </li>
            
           <!-- IF settings.enable_hotornot_page AND settings.enable_picture_rating -->
             <li class="">
               <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","hotornot/","index.php?m=hotornot"}" title="{lang:"core","menu_rate"}"><i class="glyphicon glyphicon-fire"></i>  {lang:"core","menu_rate"}</a>
             </li>
            <!-- ENDIF -->
            
            <li class="nav_sitecontent dropdown">
                    <a href="#" title="{lang:"core","usermenu_outter_network"}" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-globe"></i> {lang:"core","usermenu_outter_network"} <span class="caret"></span></a>
                           <ul class="dropdown-menu">
        	           <!-- IF settings.enable_global_blogs_page -->
                      <li>
                       <a  href="{virtual_path}{ifelse:settings.fancy_urls,"1","blogs/","index.php?m=blogs"}" title="{lang:"core","menu_blogs"}">{lang:"core","menu_blogs"}</a>
                      </li> 
            					<!-- ENDIF -->
          	        		
          				  <!-- IF settings.enable_global_pictures_page -->
        			  		<li> 
                     <a  href="{virtual_path}{ifelse:settings.fancy_urls,"1","pictures/","index.php?m=pictures"}" title="{lang:"core","menu_pictures"}">
                         <span>{lang:"core","menu_pictures"}</span>
                      </a>
                      </li>
          					<!-- ENDIF -->
                    
          					<!-- IF settings.enable_global_videos_page -->
                     <li>
                     <a  href="{virtual_path}{ifelse:settings.fancy_urls,"1","videos/","index.php?m=videos"}" title="{lang:"core","menu_videos"}">
                      <span>{lang:"core","menu_videos"}</span>
                     </a>
                     </li>
          		      	<!-- ENDIF -->
          				   	<!-- IF settings.enable_events -->
                     <li>
                     <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","events/calendar/","index.php?m=events&p=calendar"}" title="{lang:"core","menu_events"}">
                       <span>{lang:"core","menu_events"}</span>
                     </a>
                     </li>          
          					<!-- ENDIF --> 
                 </ul> 
               </li> 
          

             <li>
               <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","search/","index.php?m=search"}" title="{lang:"core","menu_search"}"><i class="glyphicon glyphicon-search"></i> {lang:"core","menu_search"}</a>
             </li>  
            
      </ul>
      
      <ul class="nav navbar-nav navbar-right"> 
          <!-- IF settings.enable_messaging -->
            <li class="hidden-xs <!-- IF session.new_messages --> attention_messages_new<!-- ENDIF -->">
               <a class="icon_nav icon_user_messages" onclick="return showConversations()" href="#" title="{lang:"core","usermenu_messages"}">
                <div> <i class="glyphicon glyphicon-envelope"></i>
                   <span id="msg_count" class="msg_count" style="<!-- IF !session.new_messages -->display:none<!-- ENDIF -->">{session.new_messages}</span>
                </div>
              </a>
            </li>
           <!-- ENDIF -->
           <li class="hidden-xs"><a href="#" class="notificationLink" id="notificationLink"><div class=""> <span class="glyphicon glyphicon-globe"></span> <span class="vt_cnt" style="display:none">0</span></div></a></li>       
           <li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-heart-empty"></i> {session.username} <span class="caret"></span></a>
              <ul id="usermenudown" class="dropdown-menu">
    	         	<li class="profile">{anchor:url1="account/profile/",url2="index.php?m=account_profile",name="core|usermenu_profile"}</li>
                <li class="photo">{anchor:url1="account/photo/",url2="index.php?m=account_photo",name="core|usermenu_photo"}</li>
                <li><a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/settings/","index.php?m=account_settings"}">{lang:"core","menu_settings"}</a></li> 				
              	<!-- IF session.can_access_cp -->
      						<li><div class="divider"></div>
                    <a  href="{virtual_cp_path}" title="{lang:"core","usermenu_cp"}">{lang:"core","usermenu_cp"}</a>         
                 </li>
      					<!-- ENDIF -->
              	<li class="nav_logout"><div class="divider"></div>{anchor:url1="account/logout/",url2="index.php?m=account_logout",name="core|usermenu_logout",class="outter"}</li>
            </ul>
          </li>
      </ul>  
      
       <div id="notificationContainer" style="display:none" class="arrow_box">
          <div id="notificationTitle" class="text-center">{vldthemes:a="lang",key="notifications"}</div>
          <div id="notificationsBody" class="notifications"><p id="nonotsfound" class="margin-t-15 text-center">{vldthemes:a="lang",key="notifications_none"}</p></div>
       </div> 
       
       <div id="notificationsModal" class="modal fade" tabindex="-1" role="dialog">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">{vldthemes:a="lang",key="notifications"}</h4>
              </div>
              <div class="modal-body"> </div>
  
            </div>
          </div>
        </div>
      
      <!-- ENDIF -->
         
      <!-- IF !loggedin -->
        <ul class="nav navbar-nav">
             <li>
               <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","search/","index.php?m=search"}" title="{lang:"core","menu_search"}"><i class="glyphicon glyphicon-search"></i> {lang:"core","menu_search"}</a>
             </li>  
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/register/","index.php?m=account_register"}"><i class="glyphicon glyphicon-plus-sign"></i> {lang:"core","menu_register"}</a> </li>
          <li><a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/login/","index.php?m=account_login"}"><i class="glyphicon glyphicon-log-in"></i>&nbsp; {lang:"core","menu_login"}</a></li>
       </ul> 
      <!-- ENDIF -->  
    </div> <!-- container -->
 </nav>
<!-- static navbar end -->
