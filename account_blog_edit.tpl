<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a> </li>				
                <li>{anchor:url1="account/blog/",url2="index.php?m=account_blog",name="blog|frm_blog"} </li>				
                <!-- IF entry_id -->					
                <li class="active"><a href="{virtual_path}{entry_edit_link}">{lang:"blog","frm_edit_entry"}</a></li>				
                <!-- ELSE -->					
                <li class="active">{anchor:url1="account/blog/add/",url2="index.php?m=account_blog&p=add",name="blog|frm_add_entry"} </li>				
                <!-- ENDIF -->		
            </ol>    
        </div> 
        <div class="btn-group profileactions col-lg-12">     
            <!-- IF entry_id -->       
                <a href="{virtual_path}{entry_edit_link}" class="active btn btn-primary">{lang:"blog","opt_edit_entry"}</a>			 
                <a href="{virtual_path}{entry_comments_link}"  class=" btn btn-primary">{lang:"blog","opt_view_comments"}</a>			
                {anchor:url1="account/blog/add/",url2="index.php?m=account_blog&p=add",name="blog|opt_add_entry",class=" btn btn-primary"} 			
            <!-- ELSE --> 			
                {anchor:url1="account/blog/",url2="index.php?m=account_blog",name="blog|opt_view_entries",class=" btn btn-primary"} 			
                {anchor:url1="account/blog/add/",url2="index.php?m=account_blog&p=add",name="blog|opt_add_entry",class="active btn btn-primary"}       
            <!-- ENDIF -->     
        </div>    
                     
        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        
        <div class="col-sm-9">
            <div class="panel panel-default">
                 <div class="panel-heading"><!-- IF entry_id -->{lang:"blog","app_editentry"}<!-- ELSE -->{lang:"blog","app_addentry"} <!-- ENDIF --></div>              
                 <div class="panel-body">

                        <!-- IF hide_content != "1" --> 	  
                        <div class="clearfix">    
                            <div class="row">          
                                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">							
                                    <div class="image ">								
                                        <!-- IF entry_picture != "" -->									
                                        <a class="picture_zoom" href="{top.virtual_pic_path}{session.media_path}{entry_picture}" id="entry_{entry_id}" target="_blank">                    
                                            <img class="img-responsive img-full" src="{virtual_pic_path}{session.media_path}{entry_preview_picture}" alt="{lang:"blog","view"}" border="0" />                  </a>									
                                        <div id="entry_{entry_id}_zoom" style="display:none">
                                            <img class="img-responsive img-full" src="{top.virtual_pic_path}{session.media_path}{entry_picture}" alt="" border="0" />
                                        </div>								
                                        <!-- ELSE -->									
                                        <a href="#" class=" hidden-xs ">
                                            <img class="img-responsive img-full" src="{virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="" border="0" /></a>								
                                        <!-- ENDIF -->							
                                    </div>					 
                                </div>           
                                <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12">							
                                    <div class="form padding-l-0 padding-xs-left">								
                                        <form name="edit" method="post" action="" enctype="multipart/form-data">									
                                            <div class="fieldset clearfix">											
                                                <div class="form-group">                        
                                                    <label for="field_title">{lang:"blog","title"}
                                                    </label>										    
                                                    <input type="text" id="field_title" class="form-control" name="title" value="{entry_title}" maxlength="255" />                      
                                                </div>											
                                                <div class="form-group">												
                                                    <label for="field_body">{lang:"blog","body"}
                                                        <!-- IF settings.blog_chars_counter --> 
                                                        <span style="font-weight:normal">({character_count})
                                                        </span>
                                                        <!-- ENDIF -->
                                                    </label>												
                                                    <textarea id="field_body" class="form-control" cols="40" rows="5" name="body" <!-- IF settings.blog_chars_counter -->onkeyup="strcounter('field_body','field_body_count',this.value,{settings.blog_max_length})" onkeydown="strcounter('field_body','field_body_count',this.value,{settings.blog_max_length})" onchange="strcounter('field_body','field_body_count',this.value,{settings.blog_max_length})"<!-- ENDIF -->>{entry_body}</textarea>											
                                                </div>											
                                                <div class="form-group">                        
                                                    <label for="field_picture">{lang:"blog","picture"}
                                                    </label>											  
                                                    <input id="field_picture" type="file" name="picture" value=""  />                      
                                                </div>											
                                                <input class="btn btn-primary pull-right" type="submit" name="submit" value="{lang:"blog","submit"}" />									
                                            </div>									
                                            <input type="hidden" name="issubmit" value="1" />								
                                        </form>							
                                    </div>					 
                                </div>			
                            </div>		
                    </div>
                    <!-- ENDIF -->	
                </div>
            </div> <!-- panel -->
        </div>     
        <div class="col-sm-3">
            <!-- INCLUDE webffo_account_sidebar.tpl -->
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->