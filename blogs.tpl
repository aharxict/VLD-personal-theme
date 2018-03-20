<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">	
             <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
             <li class="active">{anchor:url1="blogs/",url2="index.php?m=blogs",name="blogs|frm_blogs"}</li>
        </ol>
    </div>

   

    <div class="col-sm-9"> 
       <div class="panel panel-default">
         <div class="panel-heading">{lang:"blogs","app_blogs"}</div> 
         <div class="panel-body">
  
        <!-- IF hide_content != "1" AND globalblogs_entries -->
            <div class="container-fluid">
                <!-- BEGIN globalblogs_entries -->
                <!-- IF rowcnt > "0" -->
                   <hr>
                <!-- ENDIF -->
                <div class="row">
                    <div class="col-sm-3 padding-l-0 col-xs-12  ">
                        <div class="entry_image image_overlay_actions">
                            <!-- IF entry_picture -->
                            <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                                <img src="{vldthemes:a="thumbnail",path=member_media_path,filename=entry_picture}" class="img-full img-responsive" alt="" border="0" /></a>
                            <!-- ELSEIF member_picture AND member_picture_active -->
                            <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                                <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=member_media_path,filename=member_picture}" alt="" border="0" />
                            </a>
                            <!-- ELSE -->
                            <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                                <img  class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/user_picture_none.gif" alt="" border="0" />
                            </a>
                            <!-- ENDIF -->                                                         
                        </div> 
                    </div>
                            
                    <div class="col-lg-9">
                        <h4><a class="nowrap " href="{top.virtual_path}{entry_link}">{trim:entry_title,40}</a></h4>
                        <div class="text-justify">
                            {trim:entry_body,590}
                        </div>
                    </div>    
               </div>   
            <!-- END globalblogs_entries --> 
         </div>

        <!-- ENDIF -->
        </div>

	<!-- IF total_pages > "1" AND hide_content != "1" -->
     
            <div id="footer_pagination" class=" footer_pagination_small ">
                <span>{lang:"blogs","page_numbers"}</span>
                <div class="btn-group">
                    {page_links}
                </div>
            </div> 
     
	<!-- ENDIF -->
            </div>
       </div>
       <div class="col-sm-3">
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->        