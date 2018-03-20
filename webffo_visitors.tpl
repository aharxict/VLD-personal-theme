        <div class="margin-b-25 clearfix">
          <div class="visible-xs"><span style="font-size:24px;padding:0 20px;display:block" class="fui-eye visitor_icon_size"></span></div>
            <div  style="display:none !important" class="webffo-col-1 hidden-md hidden-xs bg_white_alpha visitor_icon_height">
              <span style="font-size:59px;padding:0 20px;display:block" class="fui-eye visitor_icon_size"></span>
            </div>
            <div class="webffo-col-12" id="visitors_list">
              <div class="nowrap clearfix">
                {members:limit=12,photos=1,orderby="lastvisit",cache_time=0,cache_name="online",template="ext.members_visitors.tpl"}
              </div>
            </div>
        </div>
       <script type="text/javascript">
          $(function() {
            $('#visitors_list .nowrap').width($('#visitors_list .profile_wrapper_webffo ').length*$('#visitors_list .profile_wrapper_webffo ').first().width());
          });
               
        </script>