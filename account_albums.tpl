<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li> <a href="{virtual_path}" class="breadcrumb_home" >Home</a>  </li>      	
                <li class="active">{anchor:url1="account/albums/",url2="index.php?m=account_albums",name="albums|frm_albums"} </li>		
            </ol>    
        </div>   
        <div class="btn-group actionbuttons margin-b-15 col-lg-12">    
           {anchor:url1="account/albums/",url2="index.php?m=account_albums",name="albums|opt_viewalbums",class="active btn btn-primary"}       
           {anchor:url1="account/albums/add/",url2="index.php?m=account_albums&p=add",name="albums|opt_addalbum",class="btn btn-primary"}       
       </div>  
        <div class="col-sm-9">              
            
            <div class="panel panel-default">
                <div class="panel-heading">{lang:"albums","app_albums"}
                    
                    <div title="{albums_info} - {albums_pct}%" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{albums_pct}" aria-valuemin="0" aria-valuemax="100" style="width:{albums_pct}%">
                          <span class="sr-only">{albums_pct}% </span>
                        </div>
                    </div>
                </div>
                <div class="panel-body"> 		
              
                    <!-- IF hide_content != "1" -->	
                    <div class="">
                        
                            <!-- BEGIN profile_albums -->	
                            <!-- IF rowcnt > "0" --><hr><!-- ENDIF -->
                            <div class="row">
                                <div class="col-sm-3 loop_album dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">						               
                                    <div class="album_wrapper bevelbottom">              	
                                        <div class="image">									
                                            <!-- IF album_preview -->										
                                            <a href="{top.virtual_path}{album_pictures_link}" title="{lang:"albums","pictures"}">                      
                                                <img class="img-responsive img-full" src="{vldthemes:a="thumbnail",path=session.media_path,filename=album_preview}" alt="{lang:"albums","pictures"}" border="0" /></a>									
                                            <!-- ELSE -->										
                                            <a href="{top.virtual_path}{album_pictures_link}" title="{lang:"albums","pictures"}">                      
                                                <img class="img-responsive img-full" src="{top.virtual_tpl_path}{session.template}/media/album_picture_none.gif" alt="{lang:"albums","pictures"}" border="0" /></a>									
                                            <!-- ENDIF -->								
                                        </div>  					 	 
                                    </div>
                                </div>

                                <div class="col-sm-6">	
                                     <div class="image_overlay overlay_count">							    
                                            <strong>{lang:"albums","total_pictures"}:</strong>								  
                                            {album_total_pictures}                 
                                     </div>                

                                    <!-- IF album_update_date --> 							   
                                    <div class="image_overlay overlay_update">                 		
                                        <strong>{lang:"albums","update_date"}:</strong>									
                                        {album_update_date}                  
                                    </div> 
                                    <!-- ELSE -->
                                     <div class="image_overlay overlay_date">   								 
                                        <strong>{lang:"albums","post_date"}:</strong>								  
                                        {album_post_date}                 
                                    </div>   	
                                    <!-- ENDIF -->

                                    <!-- IF  album_description != "" -->
                                    <p class="text-justify">{trim:album_description,250} </p>         
                                    <!-- ELSE -->
                                        {vldthemes:a="lang",key="album_nodescription"}
                                    <!-- ENDIF -->
                                </div> 

                                <div class="col-sm-3 text-right">					 							

                                            <!-- IF session.can_edit_own_pictures -->									  
                                            <a class="btn btn-sm  btn-primary" href="{top.virtual_path}{album_pictures_link}" title="{lang:"albums","pictures"}">
                                                <span class="glyphicon glyphicon-picture"></span> </a>										
                                            <a class="btn  btn-sm btn-primary" href="{top.virtual_path}{album_edit_link}" title="{lang:"albums","edit"}"> 
                                                <span class="glyphicon glyphicon-pencil"></span> </a>									
                                            <!-- ENDIF -->									
                                            <!-- IF session.can_delete_own_pictures -->									
                                            <a class="btn  btn-sm  btn-danger" href="#" onclick="javascript:confirmLink('{lang:"albums","delete?"}', '{top.virtual_path}{album_delete_link}')" title="{lang:"albums","delete"}">
                                                <span class="glyphicon glyphicon-minus"></span> </a>									
                                            <!-- ENDIF -->							

                                </div>			
                            </div>			
                            <!-- END profile_albums -->		
            
                    </div>    
                <!-- ENDIF --> 
                 </div>
             </div>
            

            <!-- IF total_pages > "1" -->		
            <div class="footer_wrap">			
                <div class="footer">				
                    <p>{pages_info}
                    </p>				
                    <!-- IF previous_page != "0" -->					
                    <a href="{virtual_path}{previous_page_link}">&laquo; {lang:"albums","previous_page"}</a>				
                    <!-- ENDIF -->				
                    <!-- IF next_page != "0" -->					
                    <a href="{virtual_path}{next_page_link}">{lang:"albums","next_page"} &raquo;</a>				
                    <!-- ENDIF -->				
                    <div class="clear">
                    </div>			
                </div>		
            </div>		
        
            <!-- ENDIF -->  
        </div>        
        <div class="col-sm-3">
            <!-- INCLUDE webffo_account_sidebar.tpl -->
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->