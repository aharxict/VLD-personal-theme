<!-- IF vts_new_favorites > "0" -->
	<div class="alert alert-warning" style="font-size:18px">
		<span class="glyphicon glyphicon-heart"></span> 
		<a class="alert-link" style="text-decoration:none" href="{virtual_path}account/favorites/fans">{vts_new_favorites_txt}</a>	
	</div>
<!-- ENDIF -->

<!-- IF vts_new_visitors > "0" -->
	<div class="alert alert-warning" style="font-size:18px">
		<span class="glyphicon glyphicon-eye-open"></span> 
		<a class="alert-link" style="text-decoration:none" href="{virtual_path}account/visitors">{vts_new_visitors_txt}</a>	
	</div>
<!-- ENDIF -->