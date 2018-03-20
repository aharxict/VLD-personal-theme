<!-- IF ext_blogs -->
	<div class="typecontent">
  
   <div class="container-fluid container-small row">
                    
		<!-- BEGIN ext_blogs -->
  
      <!-- IF rowcnt > "0" -->

       <!-- ENDIF -->

           <div class="col-sm-3">
          <div class="col-xs-12">
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

          <div class="col-xs-12">
              <h4 class="blog-title"><a class="nowrap " href="{top.virtual_path}{entry_link}">{trim:entry_title,40}</a></h4>
              <div class="text-justify">
                  {trim:entry_body,150}
              </div>
              <div class="date"><i class="fa fa-calendar-o"></i> {entry_date}</div>
              <div class="link">
                  <a href="{top.virtual_path}{entry_link}">{lang:"core","home_read_more"}</a>
              </div>

          </div>
           </div>

		<!-- END ext_blogs -->
	</div>

</div>
<!-- ENDIF -->
