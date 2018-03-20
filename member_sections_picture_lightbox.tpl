<a class="profile_holder lightbox" href="{top.virtual_pic_path}{member_media_path}{member_picture_large}">
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