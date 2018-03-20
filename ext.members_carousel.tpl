<!-- IF ext_members -->

<div id="carousel-{vldthemes:a="getCarouselID",new="1"}" class="carousel slide members-carousel" data-ride="carousel" style="display: none;">
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

    <div class="item active">

    <!-- BEGIN ext_members -->
            <div class="col-sm-2 col-xs-6">		   
             <!-- INCLUDE webffo_profile.tpl -->
            </div>
            <!-- IF rowcnt > "0" AND rowcnt mod "6" == "5" --></div><!-- IF !rowlast --><div class="item"><!-- ENDIF --><!-- ENDIF -->
    <!-- END ext_members -->	
   
  </div>
  
    <!-- Controls -->
  <a class="left carousel-control " href="#carousel-{vldthemes:a="getCarouselID"}" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-circle-arrow-left slider-arrow" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-{vldthemes:a="getCarouselID"}" role="button" data-slide="next">
    <span class="glyphicon glyphicon-circle-arrow-right slider-arrow" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
<!-- ELSE -->
<p class="text-center">
    <span class="vt_usrn glyphicon glyphicon-user"></span>
    <span class="vt_usrm glyphicon glyphicon-remove text-danger"></span>
    <br>
    {vldthemes:a="lang",key="nomembers"}
</p>

<!-- ENDIF -->            