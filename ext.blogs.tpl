<!-- IF ext_blogs -->
	<div class="typecontent">
  
   <div class="container-fluid container-small">
                    
		<!-- BEGIN ext_blogs -->
  
      <!-- IF rowcnt > "0" -->
          <hr>
       <!-- ENDIF -->

       <div class="row">
          <div class="col-sm-2 col-xs-12  ">
              <div class="entry_image image_overlay_actions">
                  <!-- IF entry_picture -->
                  <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                      <img src="{vldthemes:a="thumbnail",path=member_media_path,filename=entry_picture}" class="img-full img-responsive" alt="" border="0" /></a>
                  <!-- ELSEIF member_picture AND member_picture_active -->
                 
                  <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                      <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=member_picture}" alt="" border="0" />
                  </a>
                  <!-- ELSE -->
                  <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                      <img  class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" />
                  </a>
                  <!-- ENDIF -->                                                         
              </div> 
          </div>

          <div class="col-lg-10">
              <h4><a class="nowrap " href="{top.virtual_path}{entry_link}">{trim:entry_title,40}</a></h4>
              <div class="text-justify">
                  {trim:entry_body,390}
              </div>
              <a href="{top.virtual_path}{entry_link}">{lang:"core","home_read_more"}</a>
          </div>    
    </div>   

		<!-- END ext_blogs -->
	</div>

</div>
<!-- ENDIF -->
