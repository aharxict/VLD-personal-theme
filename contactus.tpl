<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ol class="breadcrumb">
             <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li class="active">{anchor:url1="contactus/",url2="index.php?m=contactus",name="contactus|frm_contactus"}</li>
        </ol>
       </div>

        <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        <div class="col-sm-9">

            <div class="panel panel-default">
                <div class="panel-heading"><h4>{lang:"contactus","app_contactus"}</h4></div>
                <div class="panel-body">
        
                    <!-- IF hide_content != "1" -->    

                      <form name="edit" method="post" action="">
                            <div class="form-group">
                                <label for="field_from">{lang:"contactus","email"}</label>
                                <input type="text" class="form-control" size="40" id="field_from" name="from" value="{from}" />
                            </div> 
                            
                            <div class="form-group"> 
                                <label for="field_subject">{lang:"contactus","subject"}</label>
                                <select name="subject" class="form-control">{dropdownlist:subjects,subj}</select>
                            </div>   
                            
                            <div class="form-group"> 
                               <label for="field_body">{lang:"contactus","message"}</label>
                               <textarea class="form-control textarea_full" id="field_body" name="body" rows="2" cols="40">{body}</textarea>
                            </div>      
                           
                            <!-- IF settings.feedback_captcha -->
                            <div class="form-group"> 
                                <label for="field_captcha">{lang:"contactus","verify_number"}</label>
                               <input type="text" id="field_captcha" class="form-control" name="captcha" maxlength="5" style="margin-bottom:8px" /><br/>
                                                              <img src="{virtual_path}includes/fns/fns.captcha.php" alt="" border="0" />
                            </div>                 
                            <!-- ENDIF -->                  
                                             
                                                  
                            <input class="btn btn-primary" name="submit" value="{lang:"contactus","submit"}" type="submit" />
                            <input type="hidden" name="iscontactus" value="1" />
                      </form>

                    <!-- ENDIF -->
                </div>
         </div>
       
     </div>
     <div class="col-sm-3">
         <!-- INCLUDE webffo_sidebar.tpl -->
     </div>                                                           
    </div>                                                           
</div>                                                           
                                                          
<!-- INCLUDE footer.tpl -->