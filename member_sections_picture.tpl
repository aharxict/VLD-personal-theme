<a class="profile_holder <!-- IF active_module == "member_profile" -->center-block<!-- ENDIF -->" href="<!-- IF top.loggedin -->{top.virtual_path}{member_profile_link}<!-- ELSE -->{top.virtual_path}account/register<!-- ENDIF -->">
<!-- IF member_picture AND member_picture_active -->
  	<!-- IF member_picture_adult == "0" OR member_picture_adult AND session.can_view_adult_images AND session.showadult -->       
          <img class="img-full img-responsive"  src="{vldthemes:a="thumbnail",path=member_media_path,filename=member_picture}" alt="" border="0" />    
    <!-- ELSE -->        
          <img class="img-full img-responsive"  src="{vldthemes:a="blur",path=member_media_path,filename=member_picture}" alt="" border="0" />    
     <!-- ENDIF -->
     
<!-- ELSE -->
    <img class="img-full img-responsive"  src="{top.virtual_tpl_path}{session.template}/images/<?php echo vldThemes::avatar_obj($_obj);?>" alt="" border="0" /> 
<!-- ENDIF -->
</a>