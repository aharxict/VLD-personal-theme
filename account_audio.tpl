<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
      <ol class="breadcrumb">        
        <li>  <a href="{virtual_path}" class="breadcrumb_home" >Home</a> </li>				
        <li class="active">{anchor:url1="account/audio/",url2="index.php?m=account_audio",name="audio|frm_audio"} </li>		
      </ol>    
    </div>
    <div class="profileactions col-lg-12">
        <div class="btn-group">        
            {anchor:url1="account/audio/",url2="index.php?m=account_audio",name="audio|opt_viewaudio",class="btn btn-primary active"}
            {anchor:url1="account/audio/add/",url2="index.php?m=account_audio&p=add",name="audio|opt_addaudio",class="btn btn-primary"}        
        </div> 
    </div>     

     <div class="col-sm-9">
   
        <div class="panel panel-default">
            <div class="panel-heading">{lang:"audio","app_audio"} 

                <div title="{audio_info}" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{audio_pct}" aria-valuemin="0" aria-valuemax="100" style="width:{audio_pct}%">
                    <span class="sr-only">{audio_pct}% </span>
                  </div>
                </div>    
            </div>
            <div class="panel-body">   

                <!-- IF hide_content != "1" -->  

                
                <!-- BEGIN profile_audio -->           
                <div class="container-fluid container-small loop_audio  {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">  					 
                    <div class="row">
                        <div class="col-sm-9"> 
                            <strong>{lang:"audio","name"}:</strong>  										
                            <span>{audio_name} 
                            </span>
                            <br>  										
                            <!-- IF settings.enable_audio_rating AND audio_rated -->  										 
                            <strong>{lang:"audio","rated_on"}:</strong>  											
                            <span>{audio_score} ({audio_votes} {lang:"audio","votes"})
                            </span> 
                            <br>  										
                            <!-- ENDIF -->  										
                            <strong>{lang:"audio","dateadded"}:</strong>  										 
                            <span>{audio_post_date}  </span>                         			                      
                            <!-- IF audio_description -->   											
                            <p>                        <strong>{lang:"audio","notes"}: </strong>  											
                                <span>{audio_description}  
                                </span>
                                <br>  										
                            </p>                      
                            <!-- ENDIF -->    								
                            <div id="mpl{rowcnt}" class="player">
                                <a href="http://www.macromedia.com/go/getflashplayer">Get Flash</a> to see this player.
                            </div>    								
                            <script type="text/javascript" language="javascript">
                                swfobject.embedSWF("{top.virtual_path}media/utils/mediaplayer.swf", "mpl{rowcnt}", "345", "19", "9.0.0", false,
                                        {'autostart':'false','file':'{top.virtual_pic_path}{session.media_path}{audio_filename}','wmode':'transparent'},
                                        {'allowfullscreen':'false','wmode':'transparent'}, {});
                            </script>              
                      </div>  						
                      <div class="col-lg-4 col-md-4">                	
                        <div class="actions pull-right">                   
                          <!-- {lang:"core","userinfo_online"} -->  									
                          <div class="btn-group">  										
                            <!-- IF settings.show_online -->  											
                            <!-- IF member_online -->  											
                            <!-- ENDIF -->  										
                            <!-- ENDIF -->  										
                            <!-- IF session.can_edit_own_audio -->  											
                            <a class="btn btn-sm btn-primary" href="{top.virtual_path}{audio_edit_link}" title="{lang:"audio","edit"}">{lang:"audio","edit"}</a>  										
                            <!-- ENDIF -->  										
                            <!-- IF session.can_delete_own_audio -->  											
                            <a class="btn btn-sm btn-primary" href="#" onclick="javascript:confirmLink('{lang:"audio","delete?"}', '{top.virtual_path}{audio_delete_link}')" title="{lang:"audio","delete"}">{lang:"audio","delete"}</a>
                            </li>  										
                            <!-- ENDIF -->  									
                          </div>  								
                        </div>                 		   								   							
                      </div>  							   						           			
                   </div>  <!-- row -->
                   </div>							   						           			
                <!-- END profile_audio -->     	
       	
                <!-- IF total_pages > "1" -->   	

                  <div id="footer_pagination" class="padding-15 footer_pagination clearfix">  			
                    <div class="pull-right">          
                      <span>{pages_info}
                      </span>        	
                      <div class="btn-group">            
                        <!-- IF previous_page != "0" -->    					
                        <a href="{virtual_path}{previous_page_link}">&laquo; {lang:"audio","previous_page"}</a>    				
                        <!-- ENDIF -->    				
                        <!-- IF next_page != "0" -->    					
                        <a href="{virtual_path}{next_page_link}">{lang:"audio","next_page"} &raquo;</a>    				
                        <!-- ENDIF -->          
                      </div>         
                    </div>    		
                  </div>     

                <!-- ENDIF -->            
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