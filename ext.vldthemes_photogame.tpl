
<div id="pgm" class="panel panel-default ">
    <div class="panel-heading">{vldthemes:a="lang",key="photogame_title"}</div>
    <div class="panel-body clearfix">
       
       <!-- IF pgm -->
       <div class="row">
       	<div class="col-sm-6">
   			<div class="relative">
       			<img src="{virtual_pic_path}{pgm.member_media_path}photo_{pgm.picture}" class="img-full">
       			<div id="pgma" class="text-center">
       				<div class="col-xs-6">
       					<a href="{virtual_path}?pgm_add={pgm.member_id}" class="btn btn-link"><span><i class="glyphicon glyphicon-heart"></i></span></a>
	       			</div>
	       			<div class="col-xs-6">
	       				<a href="{virtual_path}?pgm_skip={pgm.member_id}" class="btn btn-link"><span><i class="glyphicon glyphicon-remove"></i></span></a>
	       			</div>
       			</div>
       		</div>
       	</div>
       	<div class="col-sm-6 title">
       		<h2>{pgm.username} <!-- IF pgm.profile_field_age_value_years -->({pgm.profile_field_age_value_years}) <!-- ENDIF --> </h2>
       		<h3><!-- IF pgm.profile_field_city_value --> {pgm.profile_field_city_value} <!-- ENDIF --></h3>

       		
	       		<a href="{virtual_path}member/{pgm.username}" class="btn btn-primary">{vldthemes:a="lang",key="photogame_viewprofile"}</a>

       		</div>	
       	</div>
       <!-- ELSE -->
       <!-- ENDIF -->
      
    </div>
</div>
<style type="text/css">
	#pgma span {
		font-size:36px;
		background:#fff;
		border-radius:50%;
		padding:8px 10px 0 10px;
	
	}

	#pgma .glyphicon-heart  {
		position:relative;
		top:3px;
		left:-2px;
	}


	#pgma {
		position:absolute;
		left:0;
		right:0;
		bottom:15%;
	}
</style>