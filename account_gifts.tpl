<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">        
                <li> <a href="{virtual_path}" class="breadcrumb_home" >Home</a>  </li>      
                <li>{anchor:url1="account/gifts/",url2="index.php?m=account_gifts",name="gifts|frm_gifts"}  </li>		
                <!-- IF gifts_folder == "1" -->			
                <li class="active">{anchor:url1="account/gifts/inbox/",url2="index.php?m=account_gifts&p=inbox",name="gifts|frm_inbox"} </li>		
                <!-- ELSE -->			
                <li class="active">{anchor:url1="account/gifts/sent/",url2="index.php?m=account_gifts&p=sent",name="gifts|frm_sent"}   </li>		
                <!-- ENDIF -->	 
            </ol>    
        </div>    
        <div class="options profileactions col-lg-12">  			
           <div class="btn-group">				
               <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/inbox/","index.php?m=account_gifts&p=inbox"}" <!-- IF gifts_folder == "1" -->class="active btn btn-primary"
                  <!-- ELSE -->class="btn btn-primary"
                  <!-- ENDIF -->>{lang:"gifts","opt_inbox"} ({session.totaligifts})</a>				
               <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/sent/","index.php?m=account_gifts&p=sent"}" <!-- IF gifts_folder == "2" -->class="active btn btn-primary"
                  <!-- ELSE -->class="btn btn-primary"
                  <!-- ENDIF -->>{lang:"gifts","opt_sent"} ({session.totalsgifts})</a>	   			
           </div>  		
       </div> 
       
      <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>

        <div class="col-sm-9">

            <div class="panel panel-default">
                 <div class="panel-heading">{lang:"gifts","frm_gifts"}</div> 
                 <div class="panel-body">


                    <!-- IF hide_content != "1" -->           
                    <form name="gifts" method="post" action="{virtual_path}{gifts_delete_link}">	
                       <div class="container-fluid container-small">	     
                         <div class="row page_account_gifts">        				
                            <!-- BEGIN gifts -->        					
                            <div class="loop_gift col-lg-3 col-md-4 col-sm-4 col-xs-12 gift_entry <!-- IF top.gifts_folder == "1" AND gift_new -->new<!-- ENDIF -->">                      
                                 <div class="well bg_white_alpha clearfix">        							
                                 						                     
                                    <div class="image col-lg-12">   
                                       <div class="checkbox pull-right">                        
                                        <input type="checkbox" name="gift_id[{gift_message_id}]" id="gift_id_{gift_message_id}" class="" />        		          
                                    </div>        
                                         								
                                        <!-- IF top.gifts_folder == "1" -->        									
                                            <!-- IF gift_privacy == "2" -->        										
                                            <a href="{top.virtual_path}{gift_link}" title="{gift_name}">
                                                <img class="img-full" src="{top.virtual_tpl_path}{session.template}/media/content_picture_none.gif" alt="{gift_name}" />
                                            </a>        									
                                            <!-- ELSE -->        										
                                            <a href="{top.virtual_path}{gift_link}" title="{gift_name}">
                                                <img class="img-full" style="border: 0px" src="{top.virtual_pic_path}{gift_filename}" alt="{gift_name}" />
                                            </a>        									
                                            <!-- ENDIF -->        								
                                        <!-- ELSE -->        									
                                        <a href="{top.virtual_path}{gift_link}" title="{gift_name}">
                                            <img class="img-full" style="border: 0px" src="{top.virtual_pic_path}{gift_filename}" alt="{gift_name}" />
                                        </a>        								
                                        <!-- ENDIF -->        						
                                    </div>                    
                                    <div class="pull-left gift_author">          							
                                        <!-- IF top.gifts_folder == "1" -->          								
                                        <!-- IF gift_privacy == "2" --> 
                                            {lang:"gifts","anonymous"}           								
                                        <!-- ELSE -->           								  	  
                                        <!-- INCLUDE member_sections_name.tpl -->           								
                                        <!-- ENDIF -->                                      							
                                        <!-- ELSE -->           								
                                        <a href="{top.virtual_path}{member_profile_link}">{trim:member_username,25}</a>          							
                                        <!-- ENDIF -->          							
                                        <div class="date text-muted">{gift_date}</div>        						 
                                    </div>                     
                                    <div class="clear"></div>        							
       							     					
                                
                                  <div class="margin-t-15">
                                     <a href="{top.virtual_path}{gift_link}"  class="btn btn-block btn-default btn-sm">{lang:"gifts","app_view"}</a>
                                  </div>
                                
                                </div>                 
                            </div>          				
                            <!-- END gifts -->          				
                        </div>
                        </div>                         			         
                    </form>	
       

           
                <div id="footer_pagination" class="footer_pagination clearfix">		  	
                    <div class="pull-left">      		
                        <a href="#" class="btn btn-danger" onclick="javascript:confirmForm('{lang:"gifts","delete?"}', 'gifts')" title="{lang:"gifts","delete"}">{lang:"gifts","delete"}</a>        
                    </div>                 
                    <div class="pull-right">        	
                        <!-- IF total_pages > "1" -->    				
                        <span>{pages_info}
                        </span>            	
                        <div class="btn-group">              
                            <!-- IF previous_page != "0" -->      					
                            <a class="btn btn-primary" href="{virtual_path}{previous_page_link}">&laquo; {lang:"gifts","previous_page"}</a>      				
                            <!-- ENDIF -->      				
                            <!-- IF next_page != "0" -->      					
                            <a class="btn btn-primary" href="{virtual_path}{next_page_link}">{lang:"gifts","next_page"} &raquo;</a>      				
                            <!-- ENDIF -->             
                        </div>             
                        <!-- ENDIF -->       
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