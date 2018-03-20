<!-- IF ext_pictures -->
        {vldthemes:a="buildgrid",all=top.ext_pictures}
	<!-- BEGIN ext_pictures -->
                <!-- IF picture_adult == "0" OR picture_adult AND session.can_view_adult_images AND session.showadult -->
                        <a style="display:none" class="{vldthemes:a="getgridclass",current=rowcnt} vt_grid_el" href="{top.virtual_path}{picture_link}">
                            <div class="vt_grid_overlay ease"></div>
                            <img class="img-full ease" src="{top.virtual_tpl_path}{session.template}/image.php?src={member_media_path}{vldthemes:a="getgridimgsize",current=rowcnt}" >
                        </a>
                <!-- ELSE -->
                        <a class="{vldthemes:a="getgridclass",current=rowcnt} vt_grid_el"  href="{top.virtual_path}{picture_link}">
                            <div class="vt_grid_overlay ease"></div>
                            <img src="{top.virtual_tpl_path}{session.template}/media/user_picture_adult.gif" alt="" border="0" />
                        </a>
                <!-- ENDIF -->
	
	<!-- END ext_pictures -->
<!-- ENDIF -->