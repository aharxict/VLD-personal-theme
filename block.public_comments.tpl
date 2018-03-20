<!-- IF block_comments -->
<div class="panel panel-default">
    <div class="panel-heading">{vldthemes:a="lang",key="comments"}</div>
    <div class="panel-body">
      <!-- BEGIN block_comments -->
    
      <!-- IF rowcnt > "0" -->
            <hr>
          <!-- ENDIF -->
          <div class=" comments dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
            <div class="container-fluid">
                <div class="row">
                    <div class="comment_left col-sm-3 col-lg-2 image padding-l-0">            
                        <!-- INCLUDE webffo_profile.tpl -->     
                    </div>
                    <div class="comment_right col-sm-9 col-lg-10 padding-right-none pull-right">

                        <div class="entry">
                          <!-- IF settings.enable_reports AND top.comment_type_reports_enabled AND session.can_submit_reports -->
                          <small class="text-muted pull-right"> {reports:type=top.comment_type,member_id=top.member_id,item_id=comment_id}</small> 
                          <!-- ENDIF -->
                            <small class="text-muted pull-right">{comment_post_date}</small>
                             <!-- IF comment_delete_link --><small class="text-muted pull-right">{comment_delete_link}</small> <!-- ENDIF -->
                            <p>{comment_body}</p>
                        </div>

                    </div>
                </div>
            </div>    
          </div>
    
            <!-- IF total_pages > "1" -->
            <div class="footer_wrap">
                <div class="footer">
                    <p>{lang:"core","page_numbers"}</p>
                    {page_links}
                    <div class="clear"></div>
                </div>
            </div>
            <!-- ENDIF -->
        
    <!-- END block_comments -->
    </div>  
</div>
<!-- ENDIF -->