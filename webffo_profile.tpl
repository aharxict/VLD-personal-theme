<div class="vt_prof clearfix">

    <div class="vt_image <!-- IF top.loggedin --> {vldthemes:a="onlinestatus",status=member_online} <!-- ENDIF -->">
        <a href="{top.virtual_path}{member_profile_link}">     
            <!-- IF member_picture AND member_picture_active -->
            <!-- IF member_picture_adult == "0" OR member_picture_adult AND session.can_view_adult_images AND session.showadult -->       
            <img class="img-full img-responsive ease" src="{vldthemes:a="thumbnail",path=member_media_path,filename=member_picture}" alt="" border="0" />
            <!-- ELSE -->
            <img class="img-full img-responsive ease" src="{vldthemes:a="blur",path=member_media_path,filename=member_picture}" alt="" border="0" />
            <!-- ENDIF -->
            <!-- ELSE -->
              <img class="img-full img-responsive ease"  src="{top.virtual_tpl_path}{session.template}/images/<?php echo vldThemes::avatar_obj($_obj);?>" alt="" border="0" />
            <!-- ENDIF -->
        </a>
        <!-- IF top.loggedin -->{vldthemes:a="onlinedot",status=member_online}<!-- ENDIF -->
    </div>
            
    <a href="{top.virtual_path}{member_profile_link}" class="vt_username"> 
        <span class="visible-xs">{trim:member_username,8}</span>
        <span class="hidden-xs">{trim:member_username,12}</span>
        <!-- IF profile_field_country_name OR profile_field_city_name -->
        <!-- ENDIF -->
    </a>

    <!-- IF top.loggedin -->
    <div class="vt_prof_actions btn-group btn-group-justified">
        <a class=" btn btn-link"  href="{top.virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/compose/","index.php?m=account_messages&p=compose&id="}{member_id}" onclick="return showConversations({member_id})"><span class="glyphicon glyphicon-envelope"></span></a>
      
        
        <a class="btn btn-link" href="{top.virtual_path}{ifelse:settings.fancy_urls,"1","account/favorites/add/","index.php?m=m=account_favorites&p=add&id="}{member_id}"><span class="glyphicon glyphicon-heart"></span></a>
        <!-- IF session.can_delete_own_friends AND top.active_module == "account_friends" -->
        <a class="btn btn-link" href="#" onclick="javascript:confirmLink('{lang:"friends","delete?"}', '{top.virtual_path}{member_delete_link}')" title="{lang:"friends","delete"}"><span class="glyphicon glyphicon-remove"></span></a></li>
        <!-- ENDIF -->
        <!-- IF member_accept_link AND top.active_module == "account_friends" -->
        <a href="#" class="btn btn-link" onclick="javascript:confirmLink('{lang:"friends","accept?"}', '{top.virtual_path}{member_accept_link}')" title="{lang:"friends","accept"}"><span class="glyphicon glyphicon-ok"></span></a>
        <!-- ENDIF -->
        
        
        <!-- IF top.active_module == "account_favorites" AND  session.can_delete_own_favorites -->
            <a href="#"  class="btn btn-link" onclick="javascript:confirmLink('{lang:"favorites","delete?"}', '{top.virtual_path}{member_delete_link}')" title="{lang:"favorites","delete"}"><span class="glyphicon glyphicon-remove"></span></a>
        <!-- ENDIF -->

        <!-- IF session.can_unblock_members AND top.active_module == "account_blocked" -->
        <a href="#" class="btn btn-link" onclick="javascript:confirmLink('{lang:"blocked","delete?"}', '{top.virtual_path}{member_delete_link}')" title="{lang:"blocked","delete"}"><span class="glyphicon glyphicon-remove"></span></a>
        <!-- ENDIF -->

        <!-- IF session.can_delete_own_events_guests AND top.active_module == "account_events" -->
        <a class="btn btn-link" onclick="javascript:confirmLink('{lang:"events","deleteguest?"}', '{top.virtual_path}{member_delete_link}')" title="{lang:"events","deleteguest"}"><span class="glyphicon glyphicon-remove"></span></a>
        <!-- ENDIF -->

    </div>
     <!-- ENDIF -->



</div>