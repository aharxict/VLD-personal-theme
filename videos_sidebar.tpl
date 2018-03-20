<div class="panel panel-default">
    <div class="panel-heading">{lang:"core","order_filters"} </div>
    <div class="panel-body">

        <form name="form_filter" action="" method="post">
           <div class="form-group">
                <label for="field_orderby">{lang:"core","order_browse"}</label>
                <select class="form-control" name="orderby" id="field_orderby">{dropdownlist:orderby_box,videos_orderby}</select>
           </div>   
           
           <div class="form-group" style="display:none">
                <label for="field_direction">{lang:"core","order_direction"}</label>
                <select class="form-control" name="direction" id="field_direction">{dropdownlist:direction_box,videos_direction}</select>
           </div>  
        
           <!-- IF settings.enable_videos_categories -->
            <div class="form-group">
                 <label for="field_category_id">{lang:"core","order_category"}</label>
                 <select class="form-control" name="category_id" id="field_category_id"><option value="0">{lang:"core","order_category_all"}</option>{dropdownlist:orderby_categories,videos_category_id}</select>
            </div>  
          <!-- ENDIF --> 
                
           <div class="form-group">        
              <label for="field_kwds">{lang:"core","order_search"}</label>
              <input name="kwds" type="text" class="form-control" id="field_kwds" value="" maxlength="128" />
          </div>
              
          <input class="btn btn-success" name="submit" value="{lang:"core","submit"}" type="submit" />
                
            <input type="hidden" name="isfilter" value="1" />
        </form>
    </div>
</div>
