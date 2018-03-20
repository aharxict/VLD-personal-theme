<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li class="active">{anchor:url1="account/guestbook/",url2="index.php?m=account_guestbook",name="guestbook|frm_guestbook"}</li>
                <!-- IF active_module == "account_guestbook_unapproved" -->
                <li class="active">{anchor:url1="account/guestbook/unapproved/",url2="index.php?m=account_guestbook&p=unapproved",name="guestbook|frm_unapproved"}</li>
                <!-- ENDIF -->
            </ol>    
        </div> 
                
        <div class="profileactions col-lg-12">
            <div class="btn-group">
                <!-- IF active_module == "account_guestbook" -->
                {anchor:url1="account/guestbook/",url2="index.php?m=account_guestbook",name="guestbook|opt_all_entries",class="btn btn-primary active"}
                <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/guestbook/unapproved/","index.php?m=account_guestbook&p=unapproved"}" class="btn btn-primary">{lang:"guestbook","opt_unapproved_entries"}<!-- IF session.new_guestbooks --> ({session.new_guestbooks})<!-- ENDIF --></a>
                <!-- ELSE -->
                {anchor:url1="account/guestbook/",url2="index.php?m=account_guestbook",name="guestbook|opt_all_entries",class="btn btn-primary"}
                <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/guestbook/unapproved/","index.php?m=account_guestbook&p=unapproved"}" class="active btn btn-primary">{lang:"guestbook","opt_unapproved_entries"}<!-- IF session.new_guestbooks --> ({session.new_guestbooks})<!-- ENDIF --></a>
                <!-- ENDIF -->
            </div>
        </div>    
                
        <div class="col-sm-9"> 


        <div class="panel panel-default">
         <div class="panel-heading"> <!-- IF active_module == "account_guestbook" -->{lang:"guestbook","app_guestbook"}<!-- ELSE -->{lang:"guestbook","app_unapproved"}<!-- ENDIF --></div> 
         <div class="panel-body">

             <!-- IF hide_content != "1" -->
                <div class="container-fluid container-small">

                        <div class="row">
                            <!-- BEGIN guestbook_entries -->
                            <div class="col-lg-12 {ifelse:rownum,"1","odd","even"}  {ifelse:rowlast,"1","dataitemlast",""}">

                                <!-- IF rowcnt > "0" --><hr><!-- ENDIF -->
                                <div class=" bevelbottom clearfix ">

                                    <div class="image padding-l-0 col-sm-2">
                                  
                                        <!-- INCLUDE webffo_profile.tpl -->
                                        
                                         
                                    </div>

                                    <div class="col-lg-10">
                                        <div class="clearfix">
                                            <!-- IF session.can_approve_own_guestbook AND top.entries_active == "0" -->
                                            <a href="{top.virtual_path}{entry_approve_link}" class="pull-right btn btn-success btn-xs" title="{lang:"guestbook","approve"}">{lang:"guestbook","approve"}</a>
                                            <!-- ENDIF -->
                                            <!-- IF session.can_delete_own_guestbook -->
                                            <a href="#" class="pull-right btn btn-danger btn-xs"  onclick="javascript:confirmLink('{lang:"guestbook","delete?"}', '{top.virtual_path}{entry_delete_link}')" title="{lang:"guestbook","delete"}">{lang:"guestbook","delete"}</a></li>
                                            <!-- ENDIF -->
                                            <div class="entry">
                                                {entry_body}
                                            </div>          
                                            <div class="timestamp stamp text-muted">{lang:"guestbook","posted_on"} {entry_post_date} </div>
                                           
                                        </div>
                                    </div>    
                                </div>
                            </div> 
                            <!-- END guestbook_entries -->
                        </div>
                    </div>
                    <!-- ENDIF -->

     
            <!-- IF hide_content != "1"AND total_pages > "1" -->
          
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                    <div class="pull-right">
                        <span>{pages_info}</span>
                        <div class="btn-group">
                            <!-- IF previous_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"guestbook","previous_page"}</a>
                            <!-- ENDIF -->
                            <!-- IF next_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"guestbook","next_page"} &raquo;</a>
                            <!-- ENDIF -->
                        </div>
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
