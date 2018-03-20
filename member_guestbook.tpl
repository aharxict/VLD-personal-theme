<!-- INCLUDE header.tpl -->
    <div class="container">      
        <div class="row">          
            <div class="col-lg-12">              
                <ol class="breadcrumb">
                    <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                    <li><!-- INCLUDE member_sections_location.tpl --></li>
                    <li class="active "><a href="{virtual_path}{member_guestbook_link}">{lang:"member","frm_guestbook"}</a></li>
                    <li class="active action"><a href="{virtual_path}{member_guestbook_rss_link}" target="_blank"><img src="{virtual_tpl_path}{session.template}/media/rss.png" border="0" /></a></li> 
                </ol>    
            </div>         
            <div class="col-lg-12 profileactions">
               <div class="options">
                   <div class="btn-group">
                       <!-- INCLUDE member_sections_links.tpl -->
                    </div>
               </div>
            </div>   
                    <div class="col-sm-9">       
                        <div class="panel panel-default">
                            <div class="panel-heading">{lang:"member","app_guestbook"}</div> 
                            <div class="panel-body">
                                <!-- IF hide_content != "1" -->

                                    <form name="edit" class="form_old old_form" method="post" action="">
                                        <div class="fieldset">
                                            <dl class="fieldset margin-0">
                                                <dt><label for="field_comment_body">{lang:"member","sign_guestbook"}</label></dt>
                                                <dd><textarea class="form-control textarea_full" id="field_comment_body" cols="40" rows="2" name="body">{guestbook_comment}</textarea></dd>
                                                <!-- IF settings.guestbooks_captcha -->
                                                <dt><label for="field_captcha">{lang:"member","verify_number"}</label></dt>
                                                <dd class="form-inline">
                                                    <input type="text" id="field_captcha" class="form-control" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                                                    <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                                                </dd>
                                                <!-- ENDIF -->
                                                <dd class="submit margin-t-15"><input class="submit btn btn-primary" type="submit" name="submit" value="{lang:"member","submit"}" /></dd>
                                            </dl>
                                        </div>
                                        <input type="hidden" name="isguestbook" value="1" />
                                    </form>
                            </div>               
                         </div>  
                                            
                        <div class="comments panel panel-default">
                            <div class="panel-heading">{vldthemes:a="lang",key="guestbook_entries"}</div> 
                            <div class="panel-body">                    
                                <!-- BEGIN guestbook_entries -->
                                    <!-- IF rowcnt > "0" --><hr><!-- ENDIF -->
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="comment_left col-sm-3 col-lg-2 image padding-l-0">            
                                                <!-- INCLUDE webffo_profile.tpl -->     
                                            </div>
                                            <div class="comment_right col-sm-9 col-lg-10 padding-right-none pull-right">

                                                <div class="entry">
                                                    <!-- IF settings.enable_reports AND settings.enable_guestbook_reports AND session.can_submit_reports -->
                                                        <small class="pull-right">{reports:type="guestbook",member_id=top.member_id,item_id=entry_id}</small>
                                                    <!-- ENDIF -->
                                                    <small class="text-muted pull-right">{entry_post_date}</small>
                                                    <p>{entry_body}</p>
                                                </div>

                                            </div>
                                        </div>
                                    </div>    
                                <!-- END guestbook_entries -->  

                            </div>
                 

                    <!-- ENDIF -->
               

                <!-- IF total_pages > "1" AND hide_content != '1' -->
     
                    <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                        <div class="pull-right">
                            <span>{pages_info}</span>
                            <div class="btn-group">
                                <!-- IF previous_page != "0" -->
                                <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"member","previous_page"}</a>
                                <!-- ENDIF -->
                                <!-- IF next_page != "0" -->
                                <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"member","next_page"} &raquo;</a>
                                <!-- ENDIF -->
                            </div>
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
