<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li>
                    <a href="{virtual_path}" class="breadcrumb_home" >Home</a>
                </li>				
                <li class="active">{anchor:url1="account/blog/",url2="index.php?m=account_blog",name="blog|frm_blog"}
                </li>		
            </ol>    
        </div> 
        <div class="margin-b-15 actionbuttons col-lg-12">
            <div class="btn-group">      
                {anchor:url1="account/blog/",url2="index.php?m=account_blog",name="blog|opt_view_entries",class="active btn btn-primary"}        {anchor:url1="account/blog/add/",url2="index.php?m=account_blog&p=add",name="blog|opt_add_entry",class=" btn btn-primary"}       
            </div>  
        </div> 
        
        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        
        <div class="col-md-9">              

              <div class="panel panel-default">
                 <div class="panel-heading">{lang:"blog","app_blog"}</div>              
                 <div class="panel-body">
          
                    <!-- IF hide_content != "1" -->
                    <div class="container-fluid ">		
                      		
                            <!-- BEGIN blog_entries -->		
                              <!-- IF rowcnt > "0" -->
                                <hr> 
                              <!-- ENDIF -->
                                <div class="row">	
                                    <div class="col-sm-3 col-xs-3 padding-l-0 col-xs-12  ">
                                     <div class="entry_image image_overlay_actions">
                                         <!-- IF entry_picture -->
                                         <a class="blog_entry_link" href="{top.virtual_path}{entry_link}">
                                             <img src="{vldthemes:a="thumbnail",path=session.media_path,filename=entry_picture}" class="img-full img-responsive" alt="" border="0" /></a>
                                         <!-- ELSEIF member_picture AND member_picture_active -->
                                         <a class="blog_entry_link" href="{top.virtual_path}{entry_link}"><img  class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=session.media_path,filename=member_picture}" alt="" border="0" /></a>
                                         <!-- ELSE -->
                                         <a class="blog_entry_link" href="{top.virtual_path}{entry_link}"><img  class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/user_picture_none.gif" alt="" border="0" /></a>
                                         <!-- ENDIF -->

                                     </div> 
                                 </div>
                                 <div class="col-lg-9 col-xs-9 clearfix">
                                     
                                         <div class="pull-right ">     
                                             {entry_post_date}
                                             <div class="btn-group hidden-xs">                                           
                                             <!-- IF session.can_view_own_blogs_comments -->        											
                                             <a class="btn btn-xs btn-primary" href="{top.virtual_path}{entry_comments_link}">
                                                 <span class="glyphicon glyphicon-comment">
                                                 </span> {entry_total_comments}</a>        										
                                             <!-- ENDIF -->        										
                                             <!-- IF session.can_edit_own_blogs -->        										
                                             <a class="btn btn-xs  btn-primary" href="{top.virtual_path}{entry_link}">
                                                 <span class="glyphicon glyphicon-pencil">
                                                 </span></a>        										
                                             <!-- ENDIF -->        										
                                             <!-- IF session.can_delete_own_blog -->        											
                                             <a class="btn btn-xs  btn-danger" href="#" onclick="javascript:confirmLink('{lang:"blog","delete?"}', '{top.virtual_path}{entry_delete_link}')" title="{lang:"blog","delete"}">
                                                 <span class="glyphicon glyphicon-remove">
                                                 </span></a>        										
                                             <!-- ENDIF -->                         
                                            </div>                        
                                         </div>                        
                                                       
                                     <h3><a class="nowrap " href="{top.virtual_path}{entry_link}">{trim:entry_title,23}</a></h3>
                                     <div class="text-justify">
                                         {trim:entry_body,690}             
                                     </div>
                                     
                                    <div class="visible-xs margin-t-15">
                                     <div class="btn-group btn-group-justified">                                           
                                             <!-- IF session.can_view_own_blogs_comments -->        											
                                             <a class="btn btn-xs btn-primary" href="{top.virtual_path}{entry_comments_link}">
                                                 <span class="glyphicon glyphicon-comment">
                                                 </span> {entry_total_comments}</a>        										
                                             <!-- ENDIF -->        										
                                             <!-- IF session.can_edit_own_blogs -->        										
                                             <a class="btn btn-xs  btn-primary" href="{top.virtual_path}{entry_link}">
                                                 <span class="glyphicon glyphicon-pencil">
                                                 </span></a>        										
                                             <!-- ENDIF -->        										
                                             <!-- IF session.can_delete_own_blog -->        											
                                             <a class="btn btn-xs  btn-danger" href="#" onclick="javascript:confirmLink('{lang:"blog","delete?"}', '{top.virtual_path}{entry_delete_link}')" title="{lang:"blog","delete"}">
                                                 <span class="glyphicon glyphicon-remove"></span></a>        										
                                             <!-- ENDIF -->                         
                                    </div>
                                  </div>
                                            
                                </div>
                             </div>
                            <!-- END blog_entries --> 		            
                    </div>
                <!-- ENDIF -->
            </div>
                                     
            <!-- IF total_pages > "1" AND hide_content != "1" -->	
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">			
                    <div class="pull-right">        
                        <span>{pages_info}
                        </span>      	
                        <div class="btn-group">				
                            <!-- IF previous_page != "0" -->					
                            <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"blog","previous_page"}</a>				
                            <!-- ENDIF -->				
                            <!-- IF next_page != "0" -->					
                            <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"blog","next_page"} &raquo;</a>				
                            <!-- ENDIF -->        
                        </div>       
                    </div>  		
                </div> 
            <!-- ENDIF -->
            </div>     	
        </div>      
        <div class="col-sm-3">
            <!-- INCLUDE webffo_account_sidebar.tpl -->
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->