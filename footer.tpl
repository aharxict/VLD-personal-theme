<nav id="footer" class="navbar navbar-default">
  <div class="container">
      <div class="row">
          <div class="col-sm-3">
              <a class="navbar-brand" href="{virtual_path}">
                  <img class="visible-xs visible-sm" src="{virtual_tpl_path}{session.template}/logo_small.png" alt="{vldthemes:a="lang",key="header_sitename"}" title="{vldthemes:a="lang",key="header_sitename"}">
                  <img class="visible-lg visible-md" src="{virtual_tpl_path}{session.template}/logo.png" alt="{vldthemes:a="lang",key="header_sitename"}" title="{vldthemes:a="lang",key="header_sitename"}">
              </a>
          </div>
          <div class="col-md-3">
              <ul class="list-unstyled">
              <!-- IF settings.enable_tellfriend OR settings.enable_openinviter -->
              <li>
              {anchor:url1="invitefriends/",url2="index.php?m=invitefriends",name="core|menu_invitefriends"}
              </li>
              <!-- ENDIF -->

              <!-- IF settings.enable_feedback -->
              <li>
              {anchor:url1="contactus/",url2="index.php?m=contactus",name="core|menu_contactus"}
              </li>
              <!-- ENDIF -->
              {pages:tag="footer",cache_time="10",prepend="<li>",append="</li>",separator=" "}
              </ul>
          </div>
          <div class="col-sm-3">

          </div>
          <div class="col-sm-3">
             <a href="{virtual_path}">&copy; {vldthemes:a="lang",key="footer_copyright"} </a>
          </div>
          

      </div>  
  </div>
</nav>
       
      


<!-- IF loggedin AND settings.enable_chat AND session.can_chat  -->
	<!-- INCLUDE footer_panel.tpl -->
<!-- ENDIF -->

<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{virtual_path}includes/js/misc.js"></script>



<script type="text/javascript" src="{virtual_tpl_path}{session.template}/js/nouislider.min.js"></script>
<script type="text/javascript" src="{virtual_tpl_path}{session.template}/js/custom.js"></script>
<script type="text/javascript" src="{virtual_tpl_path}{session.template}/js/conversation.js"></script>

<!-- IF loggedin   -->
    <!-- IF settings.enable_chat AND session.can_chat -->
        <script type="text/javascript" src="{virtual_path}includes/js/jquery.cookie.js"></script>
        <script type="text/javascript" src="{virtual_path}includes/js/chat_original.js"></script>
    <!-- ENDIF -->
    <script type="text/javascript">
     Poll.start({
        name: "update_users",
        interval: 4500,
        increment: 300,
        action: function(){
           if(!$skip_notifications) {
              getNotifications();
           }
           $skip_notifications = false;
           return true;
        }
    });      
    
      $(function() {
        <?php   
            if(Pico::__s('conv_partner') !== false) {
                echo 'showConversations('.intval(Pico::__s('conv_partner')).')';
                unset($_SESSION['conv_partner']);
            }    
        ?>
     });
     
     
    </script>
    <!-- INCLUDE webffo_conversation.tpl -->
    
<!-- ELSE -->

<script type="text/javascript">
     if($('#reg_inner').length > 0) {
         $('#reg_inner').load(virpath+'account/register #regwrapper',function(data) {
        });
     }
</script>
<!-- ENDIF -->


<!-- IF active_module == "homepage" -->
 <link rel="stylesheet" type="text/css" href="{virtual_tpl_path}{session.template}/css/animate.css" />
<!-- ENDIF -->
<!-- IF loggedin AND settings.enable_chat AND session.can_chat -->
<link rel="stylesheet" type="text/css" href="{virtual_tpl_path}{session.template}/media/footpanel.css" />
<!-- ENDIF -->

</body>
</html>