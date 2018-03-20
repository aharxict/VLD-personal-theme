<form id="cupidsearch" class="">

<div id="qs" class="panel panel-default">
   <div class="panel-heading clearfix" style="padding-bottom:0">

       {vldthemes:a="lang",key="cupid"}

       <input type="hidden" name="age_from" id="age_from">
       <input type="hidden" name="age_to" id="age_to">
       <input type="hidden" name="distance_from" value="0" id="distance_from">
       <input type="hidden" name="distance_to" value="1000" id="distance_to">
       <input type="hidden" name="page" id="page">
       <input type="hidden" name="cupid" id="cupid" value="1">



      <div id="location_marker" class="pull-right clearfix">
          <a href="#locationModal"  data-toggle="modal" data-target="#locationModal"><span class="glyphicon glyphicon-map-marker"></span><span id="currentcity">{vldthemes:a="getcity"}</span></a>
      </div> 
      
       <div id="age_slider_holder" class="pull-right">
            <div id="age_slider"></div>
            <small> {vldthemes:a="lang",key="age"} <span id="age_form_to"></span>  {vldthemes:a="lang",key="age_years"}</small>
        </div>  


    </div>
    
   <div class="panel-body padding-b-5">        
     <div class="container-fluid container-small">
     
        <div id="cupid_settings" class="clearfix">
                          
              <div id="cupid_fields">
                <!-- IF cupid_fields -->
                  <div class="clearfix">
                    <div class="row">
                      <!-- BEGIN cupid_fields -->
                        <div class="col-sm-4">
                          <div class="form-group">
                          <label>{field_title}</label><br>

                          <!-- IF field_type == "" -->
                          
                          <!-- ELSEIF field_type = "combo"  OR field_type == "radio" -->
                            <select data-width="99%" data-max-options="5" data-style="btn-default" class="selectpicker" id="field_{field_label}" data-actions-box="true" name="{field_label}" title="{vldthemes:a="lang",key="cupid_any"}" multiple>
                                {vldthemes:a="getDropdownList",items=field_items,selected=field_value}
                            </select>
                          <!-- ENDIF -->
                         </div>
                       </div>
                    <!-- END cupid_fields -->
                   </div>
                  </div>
                <!-- ENDIF -->
              </div>
              
            <div class="">
              <label class=""><input type="checkbox" id="cupid_notify" onclick="cupidSetnotify(this)" name="cupid_notify" value="1" <!-- IF vtu_cupid_subscribe == "1" -->checked<!-- ENDIF -->> {vldthemes:a="lang",key="cupid_notify"}</label>
              <hr>
            </div>  
        </div>
        
        <div id="cupid_submit" class="text-center clearfix">
          <div id="cpdh">
            <span id="cpda"></span>
          </div>
          <div class="text-center">
            <a href="#"  onclick="return getCupidSearch()" class="btn btn-success"> {vldthemes:a="lang",key="cupid_fly"}</a>
            <a href="{virtual_path}"   class="btn btn-primary"> {vldthemes:a="lang",key="cupid_game"}</a>
          </div>
        </div>
        <div id="cupidsearch_results_outer">
          <div id="cupidsearch_results" class="row">
            
          </div>
        </div>
     </div>
  </div> 
 <div id="cupidsearch_footer" class="panel-footer clearfix">
     
 </div>
</div>
</form>

<div class="modal fade" id="locationModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">{vldthemes:a="lang",key="location"}</h4>
        </div>
        <div class="modal-body">
            <input style="margin-bottom:15px" type="text" onkeyup="getAutocomplete(this,'autocomplete_values')" id="autocomplete_city" class="form-control">
            <div class="list-group" id="autocomplete_values">{vldthemes:a="lang",key="typelocation"}</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="return saveLocation();">{vldthemes:a="lang",key="savelocation"}</button>
        </div>
      </div>
    </div>
</div>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script> 

<script type="text/javascript">
     function saveLocation() {
         $loc = $('#autocomplete_city').val();
         $.post(virpath+'?a=start&t=savelocation',{ loc:$loc },function(data){
            $('#locationModal').modal('hide');
             location.reload();
         });
     }
     
     function setQuicksearchPage(pagenum) {
         $('#page').val(pagenum);
         getCupidSearch();
     }
     
     function cupidSetnotify(el) {
      $notify = $(el).prop('checked') ? 1 : 0;
      $.get(virpath+'?a=start&t=cupid_setnotify&cupid_notify='+$notify);
     }
     

     function cupidfly() {
      $blockwith = $('#cpdh').width();
      $('#cpda').animate( { left : 0 },800,function(){
         $('#cpda').addClass('switch');
         $('#cpda').animate( { left : ($blockwith-150) },1600,function(){
             $('#cpda').removeClass('switch');
             $('#cpda').animate( { left : '40%'},800,function(){
                // fin
             });
         });
      });
      return false;
     }
     
     $(function(){

        if($('#age_slider').length > 0) {
          var age_slider = document.getElementById('age_slider');
      
          noUiSlider.create(age_slider, {
            start: [<!-- IF cupid_prefrences_age_from -->{cupid_prefrences_age_from}<!-- ELSE -->18<!-- ENDIF -->, <!-- IF cupid_prefrences_age_to -->{cupid_prefrences_age_to}<!-- ELSE -->100<!-- ENDIF -->],
            connect: true,
            step:1,
            range: {
              'min': 18,
              'max': 80
            }
          });
      
          age_slider.noUiSlider.on('update', function( values, handle ) {
             $('#age_form_to').html(Math.round(values[0])+" - "+Math.round(values[1]));
             $('#age_from').val(Math.round(values[0]));
             $('#age_to').val(Math.round(values[1]));
          });  
      
          age_slider.noUiSlider.on('set', function( values, handle ) {
             //getAjaxSearch();
          });
      
          }

          $('.noUi-connect').addClass('bg-primary');
      });
    
    
      function getCupidLoader() {
         return '<div class="text-center"><img src="{virtual_tpl_path}{session.template}/media/loader.gif"></div>';
      }  
      
      function getCupidSearch() {
        cupidfly();
        $data = $('#cupidsearch').serializeArray().reduce(function(obj, item) {
          
           if(obj.hasOwnProperty(item.name)) {
             item.value = obj[item.name]+','+item.value;
           }
      
           obj[item.name] = item.value;

          return obj;
        }, {});
      
        $('#cupidsearch_results').html(getCupidLoader());
        $.post(virpath+'index.php?a=start&t=ajaxsearch',$data,function(data){
            
             $('#cupidsearch_results').html(data);
             $('#cupidsearch_footer').html($('#quicksearch_pagination').show());
            
        }); 
      
      return false;
      }
      
</script>


<style type="text/css">
  
  
  #cpdh {
    position:relative;
    height:130px;
    overflow:hidden;
    margin-bottom:10px;
  }
  
  #cupidsearch_results_outer {
    margin:20px 0;
  }
  
  
</style>