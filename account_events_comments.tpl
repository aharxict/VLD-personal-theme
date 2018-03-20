<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
      <ol class="breadcrumb">  
            <li>{anchor:url1="account/events/",url2="index.php?m=account_events",name="events|frm_events"}</li>
            <li><a href="{virtual_path}{event_edit_link}">{lang:"events","frm_editevent"}</a></li>
            <li><a href="{virtual_path}{event_comments_view_link}">{lang:"events","frm_comments"}</a></li>
       </ol>
    </div>
       
   <div class="btn-group profileactions col-lg-12">       
        <a class="btn-primary btn" href="{virtual_path}{event_edit_link}">{lang:"events","opt_editevent"}</a>
        <a class="btn-primary btn" href="{virtual_path}{event_guests_view_link}">{lang:"events","opt_guests"}</a>
        <a class="active btn-primary btn" href="{virtual_path}{event_comments_view_link}" >{lang:"events","opt_comments"}</a>
        <a class="btn-primary btn" href="{virtual_path}{event_pictures_view_link}">{lang:"events","opt_pictures"}</a>     
    </div>      
                    
    <div class="col-sm-9">  
            <div class="panel panel-default">
                 <div class="panel-heading">{lang:"events","app_comments"}</div> 
                 <div class="panel-body">

                    <!-- IF hide_content != "1" -->

                  	   <div class="container-fluid">
      
                          <!-- BEGIN event_comments -->
                                  <div class="row loop_event_comments clearfix {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
      
                                      <div class="image col-sm-3">
                                              <!-- INCLUDE member_sections_picture.tpl -->
                                              <!-- INCLUDE member_sections_name.tpl -->
                                              <div class="timestamp">{lang:"events","post_date"} {comment_post_date}</div>
                                      </div>
      
                                      <div class="itemheader col-sm-9">
      
                                          <div class="entry">{comment_body} </div>
      
                                          <!-- IF session.can_delete_own_events_comments -->
                                                 <a class="margin-t-15 btn btn-sm btn-danger" href="#" onclick="javascript:confirmLink('{lang:"events","delete_comment?"}', '{top.virtual_path}{comment_delete_link}')" title="{lang:"events","delete_comment"}">{lang:"events","delete_comment"}</a></li>
                                          <!-- ENDIF -->           
      
                                         </div>
                                    </div>                      
                          <!-- END event_comments -->
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