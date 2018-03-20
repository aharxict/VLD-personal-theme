<!-- INCLUDE header.tpl -->

<div class="container">
    <div class="row">
      <div class="col-lg-12">
         <ol class="breadcrumb">
             <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
             <li>{anchor:url1="account/home/",url2="index.php?m=account_home",name="photo|frm_profile"}</li>
              <li class="active">{anchor:url1="account/photo/",url2="index.php?m=account_photo",name="photo|frm_photo"}</li>
        </ol>
        </div>
       <div class="col-sm-9">
       
        <div class="panel panel-default">
  	     <div class="panel-heading">{lang:"photo","app_photo"}  

                <div title="{lang:"photo","profile_pct"} {session.completepct}%" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{session.completepct}" aria-valuemin="0" aria-valuemax="100" style="width:{session.completepct}%">
                    <span class="sr-only">{messages_pct}% </span>
                  
                  </div>
                </div>
                 
            </div>
  	 <div class="panel-body">
			          
            <!-- INCLUDE message.tpl --> 
            <!-- IF hide_content != "1" -->
            <div class="container-fluid ">
              <div class="row">
                <div class="col-lg-4 col-md-4 padding-l-0">

                      <div class="image">
                          <!-- IF photo_filename -->
                          <a class="picture_zoom" href="{virtual_pic_path}{session.media_path}{photo_filename_large}<!-- IF session.picture_date -->?s={session.picture_date}<!-- ENDIF -->" target="_blank" id="photo_0">
                              <img class="img-responsive img-full" src="{virtual_pic_path}{session.media_path}{photo_filename}<!-- IF session.picture_date -->?s={session.picture_date}<!-- ENDIF -->" 
                                   border="0" alt="" /></a>
                          <div id="photo_0_zoom" style="display:none"><img class="img-responsive img-full" src="{virtual_pic_path}{session.media_path}{photo_filename_large}" alt="" border="0" /></div>
                          <!-- ELSE -->
                          <a href="{virtual_path}{member_photo_link}"><img class="img-responsive img-full" src="{virtual_tpl_path}{session.template}/media/user_picture_none_0.jpg" alt="" border="0" /></a>
                          <!-- ENDIF -->

                        </div>
                </div>
                     
                  <div class="col-lg-4 col-md-4">	
                      <div class="form padding-15 padding-l-0">
                          <form name="edit" method="post" action="" enctype="multipart/form-data">
                              <div class="fieldset">

                                  <div class="form-group">
                                      <label for="field_photo">{lang:"photo","select_picture"}</label>
                                      <input id="field_photo" type="file" name="photo" value="" class="" />
                                  </div> 
                                  <!-- IF settings.adult_images -->
                                  <label for="field_adult" class="">
                                      <input data-toggle="checkbox" type="checkbox"  name="adult" value="1" id="field_adult" <!-- IF photo_adult -->checked="checked"<!-- ENDIF --> />
                                             {lang:"photo","is_adult"}
                                  </label> 
                                  <!-- ENDIF -->
                                  <br>
                                  <br>
                                  <!-- IF photo_filename -->         
                                    <div class="btn-group">
                                        <a class="btn btn-default" href="{top.virtual_path}{delete_link}" onclick="javascript:confirmLink('{lang:"photo","delete?"}', '{top.virtual_path}{delete_link}')" title="{lang:"photo","delete"}">{lang:"photo","delete"}</a></li>
                                    </div> 					
                                 <!-- ENDIF -->
                          
                                  <input class="btn btn-primary" type="submit" name="submit" value="{lang:"photo","submit"}" />

                              </div>
                              <input type="hidden" name="issubmit" value="1" />
                          </form>
                      </div>
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
