  <div class="panel panel-default">
                <div class="panel-heading">{vldthemes:a="lang",key="your_content"}</div>
                <ul class="list-group">
                   

                    <!-- IF settings.enable_friends -->

                        <li class="list-group-item {activelink:url="account_friends"}">
                        <!-- IF session.new_friends --> 
                        <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/friends/requests","index.php?m=account_friends"}" title="{lang:"core","usermenu_friends"}"><span class="glyphicon glyphicon-user"></span>  {lang:"core","usermenu_friends"} <span class="badge pull-right">{session.new_friends}</span>
                         </a>
                        <!-- ELSE -->
                          <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/friends","index.php?m=account_friends"}" title="{lang:"core","usermenu_friends"}"> <span class="glyphicon glyphicon-user"></span> {lang:"core","usermenu_friends"} </a>
                        <!-- ENDIF -->

                        </li>
                      <!-- ENDIF -->

                      <!-- IF settings.enable_favorites -->
                      <li class="list-group-item {activelink:url="account_favorites"}">
                         <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/favorites","index.php?m=account_favorites"}" title="{lang:"core","usermenu_favorites"}">
                            <span class="glyphicon glyphicon-star"></span> 
                            {lang:"core","usermenu_favorites"}</a> 
                      
                      </li>
                      <!-- ENDIF -->

                      <!-- IF settings.enable_visitors -->
                       <li class="list-group-item {activelink:url="account_visitors"}">
                        <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/visitors/","index.php?m=account_visitors"}" title="{lang:"core","usermenu_visitors"}">
                            <span class="glyphicon glyphicon-eye-open"></span> 
                            {lang:"core","usermenu_visitors"}</a>
                      </li>

                      <!-- ENDIF -->

                     
                      <!-- IF settings.enable_guestbooks -->
                      <li class="list-group-item {activelink:url="account_guestbook"}">
                        <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/guestbook/","index.php?m=account_guestbook"}" title="{lang:"core","usermenu_guestbook"}">
                            <span class="glyphicon glyphicon-book"></span> 
                            {lang:"core","usermenu_guestbook"}<!-- IF session.new_guestbooks --> <span class="badge pull-right">{session.new_guestbooks}</span><!-- ENDIF --></a>
                      </li>
                      <!-- ENDIF -->
                      <!-- IF settings.enable_blocked_members -->
                    <li class="list-group-item {activelink:url="account_blocked"}">
                        <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/blocked/","index.php?m=account_blocked"}" title="{lang:"core","usermenu_blocked"}">
                            <span class="glyphicon glyphicon-remove"></span> 
                            {lang:"core","usermenu_blocked"}
                        </a>

                 
                      <!-- ENDIF -->


                

                 <!-- IF settings.enable_gifts -->
                      <li class="list-group-item {activelink:url="account_gifts"}">
                        <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/","index.php?m=account_gifts"}" title="{lang:"core","usermenu_gifts"}">
                            <span class="glyphicon glyphicon-gift"></span> {lang:"core","usermenu_gifts"}<!-- IF session.new_gifts --> <span class="badge pull-right">{session.new_gifts}</span><!-- ENDIF --></a>
                      </li>
                      <!-- ENDIF -->

                    <!-- IF settings.enable_blogs -->

                    <li class="list-group-item {activelink:url="account_blog"}">
                         <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/blog/","index.php?m=account_blog"}">
                            <span class="glyphicon glyphicon-align-left"></span> {lang:"core","usermenu_blog"}
                        </a>
                    </li>
                    
                    <!-- ENDIF -->

                    <!-- IF settings.enable_pictures -->
                    <li class="list-group-item {activelink:url="account_albums"} {activelink:url="account_pictures"}">
                         <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/albums/","index.php?m=account_albums"}">
                            <span class="glyphicon glyphicon-picture"></span> {lang:"core","usermenu_pictures"}
                        </a>
                    </li>
                    <!-- ENDIF -->

                    <!-- IF settings.enable_videos -->
                    <li class="list-group-item {activelink:url="account_videos"}">
                         <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/videos/","index.php?m=account_videos"}">
                            <span class="glyphicon glyphicon-film"></span> {lang:"core","usermenu_videos"}
                        </a>
                    </li>
                    <!-- ENDIF -->

                    <!-- IF settings.enable_audio -->
                    <li class="list-group-item {activelink:url="account_audio"}">
                         <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/audio/","index.php?m=account_audio"}">
                            <span class="glyphicon glyphicon-music"></span> {lang:"core","usermenu_audio"}
                        </a>
                    </li>

                    <!-- ENDIF -->

                    <!-- IF settings.enable_events -->
                    <li class="list-group-item {activelink:url="account_events"}">
                         <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/events/","index.php?m=account_events"}">
                            <span class="glyphicon glyphicon-calendar"></span> {lang:"core","usermenu_events"}
                        </a>
                    </li>
                   
                    <!-- ENDIF -->

                </ul>
            </div>  
            