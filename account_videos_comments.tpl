<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
       
    <div class="btn-group profileactions col-lg-12">       
   		  <a class="btn btn-primary" href="{virtual_path}{videos_edit_link}">{lang:"videos","opt_editvideo"}</a>
				<a class="btn btn-primary active" href="{virtual_path}{videos_comments_link}">{lang:"videos","opt_viewcomments"}</a>
				{anchor:url1="account/videos/add/",url2="index.php?m=account_videos&p=add",name="videos|opt_addvideo",class="btn btn-primary"}
    </div>      
    
     <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
     
     <div class="col-sm-9"> 
           
          <div class="panel panel-default">
             <div class="panel-heading">{lang:"videos","app_comments"} </div>              
                <div class="panel-body">         
                  <!-- IF hide_content != "1" -->    
              		<div class="row">
              			<!-- BEGIN video_comments -->
              				<div class="col-lg-3 clearfix margin-b-25 {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}"> 
                          <div class="clearfix bg_white_alpha bevelbottom">
                           <div class="clearfix padding-15 padding-b-0">
                             <div class="pull-left blog_thumbnail">
                                   <!-- INCLUDE member_sections_picture.tpl -->
                              </div>
                             <div class="blog_author pull-left">
                                <!-- INCLUDE member_sections_name.tpl -->
                                {lang:"videos","post_date"}: {comment_post_date}
                             </div>
                           </div>
              						<div class="entry padding-15 padding-b-0">
              							<p class="small">{comment_body}</p>
              						</div>
                  				<!-- IF session.can_delete_own_blogs_comments -->
                					  <div class="padding-15 clearfix">
                                <a href="#" class="btn btn-danger pull-right btn-xs" onclick="javascript:confirmLink('{lang:"videos","delete_comment?"}', '{top.virtual_path}{comment_delete_link}')" title="{lang:"videos","delete_comment"}">{lang:"videos","delete_comment"}</a>            
                					  </div>
                          <!-- ENDIF --> 
              					</div>
              				</div>
        
              			<!-- END video_comments -->
              		</div>
              
          <!-- ENDIF -->
       
     
        	<!-- IF total_pages > "1" AND hide_content != "1"  -->
        	<div class="webffo-inner">
          	<div id="footer_pagination" class="padding-15 footer_pagination clearfix">
        			<div class="pull-right">
                <span>{lang:"core","page_numbers"}</span>
              	<div class="btn-group">
                    {page_links}
                </div>
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
          <!-- INCLUDE webffo_account_sidebar.tpl -->
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->