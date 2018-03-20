<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">	
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li class="active">{anchor:url1="pictures/",url2="index.php?m=pictures",name="pictures|frm_pictures"}</li>   
        </ol>
    </div>

            
 <div class="col-sm-9">  
        <div class="panel panel-default">
             <div class="panel-heading">{lang:"pictures","app_pictures"}</div> 
             <div class="panel-body">

            <!-- IF hide_content != "1" AND global_pictures -->
            <div class="container-fluid container-small">
              <div class="row">
                <!-- BEGIN global_pictures -->
                <div class="loop_picture margin-b-15  col-sm-3">
                        <div class="image relative">
                            <!-- IF picture_adult -->
                            <!-- IF session.showadult AND session.can_view_adult_images -->
                            <a href="{top.virtual_path}{picture_link}" title="{trim:picture_description,60}">
                                <img  class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=picture_preview}" alt="" border="0" />
                            </a>
                            <!-- ELSE -->
                            <a href="{top.virtual_path}{picture_link}" title="{trim:picture_description,60}">
                                <img  class="img-full img-responsive" src="{vldthemes:a="blur",path=member_media_path,filename=picture_preview}" alt="" border="0" />
                            </a>
                            <!-- ENDIF -->
                            <!-- ELSE -->
                            <a href="{top.virtual_path}{picture_link}"  title="{trim:picture_description,60}">
                                <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=picture_preview}" alt="" border="0" />
                            </a>
                            <!-- ENDIF -->
                      

                        <span class="author label label-default ease"><a href="{top.virtual_path}{member_profile_link}">{trim:member_username,10}</a></span>
                      

                        </div>

                    
                </div>

                <!-- END global_pictures -->
                </div>
            </div>
            <!-- ENDIF -->
      


        <!-- IF total_pages > "1" AND hide_content != "1" -->
        
            <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                <div class="">
                    <span>{lang:"pictures","page_numbers"}</span>
                    <div class="btn-group">
                        {page_links}
                    </div>
                </div> 
            </div>
           
        <script type="text/javascript">
          $(function(){
            $('#footer_pagination a').addClass('btn btn-default');
          });
        </script>
    
        <!-- ENDIF -->
         </div>
        </div>
      </div>
       <div class="col-sm-3">
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->        

