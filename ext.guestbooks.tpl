<!-- IF session.can_view_all_guestbooks -->

    <!-- IF ext_guestbooks_comments_form -->

    <div class="panel panel-default">
       <div class="panel-heading">{lang:"member","sign_guestbook"}</div>
       <div class="commentsform panel-body">

            <form name="edit" method="post" class="clearfix" action="{virtual_path}{member_guestbook_link}">
                <div class="form-group">
                    <label for="field_comment_body">{lang:"member","sign_guestbook"}</label>
                    <textarea class="form-control" id="field_comment_body" cols="40" rows="2" name="body"></textarea>
                </div>   
                <!-- IF settings.guestbooks_captcha -->
                <div class="form-group">
                    <label for="field_captcha">{lang:"member","verify_number"}</label>
                    <input  type="text" id="field_captcha" class="form-control" name="captcha" maxlength="5" style="margin-bottom:8px" />
                    <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                </div>   
                <!-- ENDIF -->
                <div class="clear"></div>
                <input class="submit btn btn-primary pull-right" type="submit" name="submit" value="{lang:"member","submit"}" />
                <input type="hidden" name="isguestbook" value="1" />
                <input type="hidden" name="isprofile" value="1" />
            </form>
      
        </div>
    </div>

    <!-- ENDIF -->

<!-- IF ext_guestbooks -->
<div class="panel panel-default">
    <div class="panel-heading">{vldthemes:a="lang",key="guestbook_entries"}</div>
    <div class="panel-body">
        <!-- BEGIN ext_guestbooks -->
        
          <!-- IF rowcnt > "0" -->
            <hr>
          <!-- ENDIF -->
          <div class="profile_comment comments dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
            <div class="container-fluid container-small">
                <div class="row">
                    <div class="comment_left col-xs-4 col-sm-3 col-lg-2 image padding-l-0">            
                        <!-- INCLUDE webffo_profile.tpl -->     
                    </div>
                    <div class="comment_right col-xs-8 col-sm-9 col-lg-10 padding-right-none pull-right">

                        <div class="entry">
                            <!-- IF settings.enable_reports AND settings.enable_guestbook_reports AND session.can_submit_reports -->
                                <small class="hidden-xs pull-right">{reports:type="guestbook",member_id=top.member_id,item_id=entry_id}</small>
                            <!-- ENDIF -->
                            <small class="hidden-xs text-muted pull-right">{entry_post_date}</small>
                            <p>{entry_body}</p>
                        </div>

                    </div>
                </div>
            </div>    
          </div>

        <!-- END ext_guestbooks -->
       
    </div>
</div>

<!-- ENDIF -->
<!-- ENDIF -->
