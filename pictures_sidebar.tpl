<div class="panel panel-default">
    <div class="panel-heading">{lang:"core","order_filters"}</div> 
    <div class="panel-body">

      <form name="form_filter" action="" method="post">
        
        <div class="form-group">
          <label for="field_orderby">{lang:"core","order_browse"}</label>
          <select class="form-control" name="orderby" id="field_orderby">{dropdownlist:orderby_box,pictures_orderby}</select>
        </div>
       
        <div style="display:none" class="form-group">
          <label for="field_orderby">{lang:"core","order_direction"}</label>
         <select class="form-control" name="direction" id="field_direction">{dropdownlist:direction_box,pictures_direction}</select>
        </div>
     
       <div class="form-group">
            <label for="field_kwds">{lang:"core","order_search"}</label>
            <input name="kwds" type="text" class="form-control" id="field_kwds" value="" maxlength="128" />
       </div>

       <input class="btn btn-primary" name="submit" value="{lang:"core","submit"}" type="submit" />

       <input type="hidden" name="isfilter" value="1" />
      </form>
    </div>
</div>
