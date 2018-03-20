<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
			<ol class="breadcrumb">
	       		 <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
	     		 <li>{anchor:url1="account/gifts/",url2="index.php?m=account_gifts",name="gifts|frm_gifts"}</li>
				<!-- IF gifts_folder == "1" -->
					<li >{anchor:url1="account/gifts/inbox/",url2="index.php?m=account_gifts&p=inbox",name="gifts|frm_inbox"}</li>
				<!-- ELSE -->
					<li >{anchor:url1="account/gifts/sent/",url2="index.php?m=account_gifts&p=sent",name="gifts|frm_sent"}</li>
				<!-- ENDIF -->
				<li  class="active"><a href="{virtual_path}{gift_link}">{lang:"gifts","frm_view"}</a></li>	
	  		 </ol>

		  	 <div class="profileactions pull-right">
	  			<div class="btn-group">
					<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/inbox/","index.php?m=account_gifts&p=inbox"}" <!-- IF gifts_folder == "1" -->class="active btn btn-primary"<!-- ELSE -->class="btn btn-primary"<!-- ENDIF -->>{lang:"gifts","opt_inbox"} ({session.totaligifts})</a>
					<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/sent/","index.php?m=account_gifts&p=sent"}" <!-- IF gifts_folder == "2" -->class="active btn btn-primary"<!-- ELSE -->class="btn btn-primary"<!-- ENDIF -->>{lang:"gifts","opt_sent"} ({session.totalsgifts})</a>
		
	  			</div>
	  		</div>


 	</div>


<div class="col-sm-12"><!-- INCLUDE message.tpl --></div>

<div class="col-sm-9">
    <div class="panel panel-default">
         <div class="panel-heading"><!-- IF gifts_folder == "1" -->{lang:"gifts","frm_inbox"}<!-- ELSE -->{lang:"gifts","frm_sent"}<!-- ENDIF --></div> 
         <div class="panel-body">


			<!-- IF hide_content != "1" -->

				<div class="container-fluid container-small">
					<div class="row">
				         <div class="col-sm-2 col-xs-3">
								<div class="image">
									<!-- IF gifts_folder == "1" -->
										<!-- IF gift_privacy == "2" -->
											<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/inbox/","index.php?m=account_gifts&p=inbox"}"><img class="img-responsive img-full" src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>
										<!-- ELSE -->
											<!-- INCLUDE member_sections_picture.tpl -->
										<!-- ENDIF -->
									<!-- ELSE -->
										<!-- INCLUDE member_sections_picture.tpl -->
									<!-- ENDIF -->
								</div>
					       </div>
					    <div class="col-sm-3 text-center">
					     	<div class="xwell margin-t-15">
					    	<img class="img-responsive center-block block-center" src="{top.virtual_pic_path}{gift_filename}" alt="{gift_name}" />
					    	</div>
					    </div>
			           <div class="col-sm-7 col-xs-9">
			           	<div class=" pull-right">
							  <a class="btn btn-sm btn-danger" href="#" onclick="confirmForm('{lang:"gifts","delete_one?"}', 'gifts')">{lang:"gifts","delete_button"}</a>
						 </div>	
						<div class="itemheader title">
							<h2 class="inner"><a href="{top.virtual_path}{gift_link}">{gift_name}</a></h2>
							
									<!-- IF gift_folder == "1" -->{lang:"gifts","from"}<!-- ELSE -->{lang:"gifts","to"}<!-- ENDIF -->:
									<!-- IF top.gifts_folder == "1" -->
										<!-- IF gift_privacy == "2" -->
											{lang:"gifts","anonymous"}
										<!-- ELSE -->
											<a href="{virtual_path}{member_profile_link}">{member_username}</a>
										<!-- ENDIF -->
									<!-- ELSE -->
										<a href="{virtual_path}{member_profile_link}">{member_username}</a>
									<!-- ENDIF -->
								<br>
								<p class="text-muted stamp">{lang:"gifts","date"} {gift_date}</p>
						</div>
						<div class="entry">
							
							<form name="gifts" method="post" action="{virtual_path}{gift_delete_link}">
							<input type="hidden" name="gift_id[{gift_id}]" value="1" id="gift_id_{gift_id}" />
							</form>
						</div>
						<!-- IF gift_message -->
							<div class="entry">
								{gift_message}
							</div>
						<!-- ENDIF -->
			               
					</div>
         		 </div>
				</div>
				<!-- ENDIF -->
			</div>
		</div>
	</div>

	<div class="col-sm-3">
    <!-- INCLUDE webffo_account_sidebar.tpl -->
		<!-- INCLUDE webffo_sidebar.tpl -->
	</div>

  </div>
</div>
<!-- INCLUDE footer.tpl -->