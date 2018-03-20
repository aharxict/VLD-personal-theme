<div id="qs" class="panel panel-default">
   <div class="panel-heading clearfix" style="padding-bottom:0">

       <form id="ajaxsearch" class="pull-left">
           {vldthemes:a="lang",key="search"}
           <input type="radio" name="gender" value="f" onclick="getAjaxSearch()"> <img height="30" src="{virtual_tpl_path}{session.template}/media/female.svg" class="searchgender">
           <input type="radio" name="gender" value="m" onclick="getAjaxSearch()"> <img height="30" src="{virtual_tpl_path}{session.template}/media/male.svg" class="searchgender">
        <input type="hidden" name="age_from" id="age_from">
        <input type="hidden" name="age_to" id="age_to">
        <input type="hidden" name="distance_from" id="distance_from">
        <input type="hidden" name="distance_to" id="distance_to">
        <input type="hidden" name="page" id="page">
      </form>


      <div id="location_marker" class="pull-right clearfix">
          <a href="#locationModal"  data-toggle="modal" data-target="#locationModal"><span class="glyphicon glyphicon-map-marker"></span><span id="currentcity">{vldthemes:a="getcity"}</span></a>
      </div> 

      <div id="age_slider_holder" class="pull-right">
          <div id="age_slider"></div>
          <small> {vldthemes:a="lang",key="age"} <span id="age_form_to"></span>  {vldthemes:a="lang",key="age_years"}</small>
      </div>
   

      <div id="distance_slider_holder" class="pull-right">
          <div id="distance_slider"></div>
          <small>  {vldthemes:a="lang",key="distance"} <span id="distance_from_to"></span> km </small>
      </div>

    </div>
   <div class="panel-body padding-b-5">        
     <div class="container-fluid container-small">
        <div id="ajaxsearch_results" class="row">
          
        </div>
     </div>
  </div> 
 <div id="quicksearch_footer" class="panel-footer clearfix">
     
 </div>
</div>
      
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
         getAjaxSearch();
     }
     
     $(function() {
         setTimeout(function() {getAjaxSearch(); },300);
     });
     
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
             getAjaxSearch();
          });
      
          var distance_slider = document.getElementById('distance_slider');
      
          noUiSlider.create(distance_slider, {
            start: [<!-- IF cupid_prefrences_distance_from -->{cupid_prefrences_distance_from}<!-- ELSE -->0<!-- ENDIF -->, <!-- IF cupid_prefrences_distance_to -->{cupid_prefrences_distance_to}<!-- ELSE -->1000<!-- ENDIF -->],
            connect: true,
            step:1,
            range: {
              'min': 0,
              'max': 1000
            }
          });
      
          distance_slider.noUiSlider.on('update', function( values, handle ) {
             $('#distance_from_to').html(Math.round(values[0])+" - "+Math.round(values[1]));
             $('#distance_from').val(Math.round(values[0]));
             $('#distance_to').val(Math.round(values[1]));
          });
      
            distance_slider.noUiSlider.on('set', function( values, handle ) {
             getAjaxSearch();
          });
          
          $('.noUi-connect').addClass('bg-primary');
        }
      });
</script>
