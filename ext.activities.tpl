<!-- IF ext_activities -->
      <div id="activities_list_vertical" class="clearfix">
    		<!-- BEGIN ext_activities -->
          <div class="tooltip_fix member_activity_list  <!-- IF rowlast -->last<!-- ENDIF --> "> 
              <!-- IF rowcnt > "0" -->
                 <hr>
              <!-- ENDIF -->
                <div  class="clearfix">  
                    <div class="activity_action">{activity_action} <div class="action_timestamp">{activity_date} </div></div>
                </div>

                </div>
               
    		<!-- END ext_activities -->
        <div class="text-center">
            <button onclick="activity_more()" class="btn btn-primary">{vldthemes:a="lang",key="load_more"}</button>
        </div>
      </div>


    <!-- ENDIF -->
    
    <script type="text/javascript" language="javascript">
   
        var thumbnailer_path = '{virtual_tpl_path}{session.template}/image.php?src=';
        var media_path = '{virtual_path}';
        var current_number_activities = 8;
        
           
    $(document).ready(function () {


        
        $(".member_activity_list").hide();
        $(".member_activity_list").slice(0,current_number_activities).show();
        

        $('.activity_action .tooltip').removeClass('tooltip');
        $('.activity_action').each(function () {
            var activity_images = $(this).find('a');

            if (activity_images.length > 1) {

                var activityimage = $(activity_images[1]).attr('title');
                var $activityimage = $(activityimage);
                $activityimage.addClass('img-full img-responsive pull-left activityimage');
                $(this).prepend($activityimage);
            }

            if (activity_images.length >= 1) {
                var memberimage = $(activity_images[0]).attr('title');
                var $memberimage = $(memberimage);
                var $membername = $(activity_images[0]);
                var $descblock = $('<div class="activity_desc"></div>');

                $descblock.prepend($(this).parent().find('.action_stamp'));           
                $memberimage.addClass('activity_thumb pull-right');

                $(this).parent().prepend($descblock);
                $(this).parent().prepend($memberimage);


            }
        });
               
    });
    
      function activity_more() {
           current_number_activities += 5;  
           $(".member_activity_list").slice(0,current_number_activities).fadeIn(500);
        } 
         
        

</script>