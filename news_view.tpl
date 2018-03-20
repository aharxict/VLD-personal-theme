<!-- INCLUDE header.tpl -->

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <ol class="breadcrumb">
             <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
             <li>{anchor:url1="news/",url2="index.php?m=news",name="news|frm_news"}</li>
            <!-- IF hide_content != "1" -->
                <li class="active"><a href="{virtual_path}{news_link}">{trim:news_title,30}</a></li>
            <!-- ENDIF -->
            <li class="active"><a href="{virtual_path}{ifelse:settings.fancy_urls,"1","news/rss/","index.php?m=news&p=rss"}" target="_blank"><img src="{virtual_tpl_path}{session.template}/media/rss.png" border="0" /></a></li>
             </ol>
    	</div>
                         
        <div class="col-sm-9">
            <div class="panel panel-default">
                <div class="panel-heading">{news_title}</div>
                <div class="panel-body">
                  <!-- IF hide_content != "1" -->
                    <div class="row">
                     <!-- IF news_picture -->
                        <div class="col-lg-3">
                            <div class="bg_white_alpha bevelbottom">
                                <div class="image">
                                    <a href="{top.virtual_path}{news_link}"><img class="img-full img-responsive" src="{top.virtual_pic_path}{news_picture}" alt="" border="0" /></a>
                                </div>

                                <small class="text-muted">{lang:"news","postdate"} {news_date}</small>
                            </div>
                        </div> 
                       <!-- ENDIF -->
                       <div class="col-lg-9">
                       {news_body}</div>
                 </div>        
                 <!-- ENDIF -->     
                </div>
            </div>
                        
            <!-- IF settings.enable_news_comments AND news_allow_comments -->
     
                   {comments:type="news",member_id=0,content_id=news_id}
                     
                   <div class="panel panel-default">
                      <div class="panel-heading">{lang:"news","add_comment"}</div>
                      <div class="panel-body">
                           <form name="edit" method="post" action="">
                              <div class="fieldset">
                                  <dl class="fieldset">
                                      <dt><label for="field_comment_body">{lang:"news","add_comment"}</label></dt>
                                      <dd><textarea class="form-control textarea_full" id="field_comment_body" cols="40" rows="2" name="body">{comment_body}</textarea></dd>
                                      <!-- IF settings.news_comments_captcha -->
                                      <dt><label for="field_captcha">{lang:"news","verify_number"}</label></dt>
                                      <dd class="form-inline">
                                          <input type="text" id="field_captcha" class="form-control" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                                          <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                                      </dd>
                                      <!-- ENDIF -->
                                      <dd class="submit margin-t-15"><input class="submit btn btn-primary" type="submit" name="submit" value="{lang:"news","submit"}" /></dd>
                                  </dl>
                              </div>
                              <input type="hidden" name="iscomment" value="1" />
                          </form>
                      </div>    
                   </div>


               <!-- ENDIF -->
    </div> 
    <div class="col-sm-3">
        <!-- INCLUDE webffo_sidebar.tpl -->
    </div>
  </div>
</div>

<!-- INCLUDE footer.tpl -->
