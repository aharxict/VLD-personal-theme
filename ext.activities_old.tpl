<!-- IF ext_activities -->
	<div class="profile_activities panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">{lang:"core","activities"}</h3>
  </div>
  <div class="panel-body">

    <table class="table">
    		<!-- BEGIN ext_activities -->
          <tr class="row row_{rowcnt}  <!-- IF rowlast -->last<!-- ENDIF --> ">
    			  <td width="20">
    					<!-- IF activity_type == "friends" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/friend.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "blogs" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/blog.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "albums" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/album.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "pictures" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/picture.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "audios" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/audio.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "videos" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/video.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "events" -->
              {event_picture}
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/event.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "guestbooks" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/guestbook.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "gifts" -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/gift.png" align="absmiddle" />
    					<!-- ELSEIF activity_type == "comments" -->
    						{preview}
                <img src="{top.virtual_tpl_path}{session.template}/media/activities/gift.png" align="absmiddle" />
    					<!-- ELSE -->
    						<img src="{top.virtual_tpl_path}{session.template}/media/activities/comment.png" align="absmiddle" />
    					<!-- ENDIF -->
    					</td>
              <td>{activity_action}</td>

    				<td width="100">{activity_date}</td>
    				</tr>
    		<!-- END ext_activities -->
        </tbody>
    	</table>
    	<div class="clear"></div>
    	<script type="text/javascript" language="javascript">
    		$(document).ready(function(){
			     $('.profile_activities .tooltip').removeClass('tooltip');
    		});
    	</script>
    <!-- ENDIF -->


  </div>
</div>
  

