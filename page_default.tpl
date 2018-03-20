<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li class="active"><a href="{virtual_path}{page_link}">{app_page}</a></li>   
        </ol>
    </div>

   <div class="col-sm-9">
      <div class="panel panel-default">
        <div class="panel-heading">{app_page}</div>
  		      <div class="panel-body">
               <!-- IF hide_content != "1" -->
    
                           <div class="title"><h2>{app_page}</h2></div>
                           <div class="entry">
                               {page_content}
                           </div>
                  
     
               <!-- ENDIF -->
             </div>  
         </div>
         
                 <!-- IF settings.enable_page_comments AND page_allow_comments -->

                <div class="panel panel-default">
                  <div class="panel-heading">{lang:"pages","add_comment"}</div>
                  
                       <!-- IF loggedin == "1" -->
                     
                             <form name="edit" method="post" action="">
                                 <div class="fieldset">
                                     <dl class="fieldset">
                                         <dt><label for="field_comment_body">{lang:"pages","add_comment"}</label></dt>
                                         <dd><textarea class="textarea textarea_full" id="field_comment_body" cols="40" rows="5" name="body">{comment_body}</textarea></dd>
                                         <!-- IF settings.pages_comments_captcha -->
                                         <dt><label for="field_captcha">{lang:"pages","verify_number"}</label></dt>
                                         <dd>
                                             <input type="text" id="field_captcha" class="text" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                                             <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                                         </dd>
                                         <!-- ENDIF -->
                                         <dd class="submit"><input class="btn btn-success pull-right" type="submit" name="submit" value="{lang:"pages","submit"}" /></dd>
                                     </dl>
                                 </div>
                                 <input type="hidden" name="iscomment" value="1" />
                             </form>
                        
                       <!-- ENDIF -->
                   </div>
                   
                     <div id="comments_page">
                           {comments:type="page",member_id=0,content_id=page_id}
                       </div>

                   <!-- ENDIF -->
        
        
        
        </div>
        <div class="col-sm-3">
              <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
     </div>
</div>
<!-- INCLUDE footer.tpl -->
