<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li>{anchor:url1="account/blog/",url2="index.php?m=account_blog",name="blog|frm_blog"}</li>
                <li><a href="{virtual_path}{entry_edit_link}">{lang:"blog","frm_edit_entry"}</a></li>
                <li class="active"><a href="{virtual_path}{entry_comments_link}">{lang:"blog","frm_view_comments"}</a></li>
            </ol>  
        </div> 
        <div class="profileactions col-lg-12">
            <div class="btn-group">   
                <a class="btn btn-primary " href="{virtual_path}{entry_edit_link}">{lang:"blog","opt_edit_entry"}</a></li>
                <a class="btn btn-primary active" href="{virtual_path}{entry_comments_link}">{lang:"blog","opt_view_comments"}</a></li>
                {anchor:url1="account/blog/add/",url2="index.php?m=account_blog&p=add",name="blog|opt_add_entry",class="btn btn-primary "}</li>
            </div>
        </div>     
        <div class="col-sm-9">
                <div class="panel panel-default">
                 <div class="panel-heading">{lang:"blog","app_comments"}</div>              
                 <div class="panel-body">
                
                <!-- IF hide_content != "1" -->
                    <div class="container-fluid">
                        <div class="row">

                            <!-- BEGIN entry_comments -->
                            <div class="loop_comment col-lg-3 col-md-4 col-sm-6 col-xs-12 clearfix margin-b-25 {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}"> 
                            
                                    <div class="pull-left blog_thumbnail">
                                        <!-- INCLUDE member_sections_picture.tpl -->
                                    </div>
                                    <div class="blog_author pull-left">
                                        <!-- INCLUDE member_sections_name.tpl -->
                                        {lang:"blog","post_date"}: {comment_post_date}
                                    </div>
                                    

                                    <div class="entry padding-15 padding-b-0">
                                        <p class="small">{comment_body}</p>
                                    </div>
                                    <!-- IF session.can_delete_own_blogs_comments -->
                                    <div class="padding-15 clearfix">
                                        <a class="btn btn-danger pull-right btn-xs" href="#" onclick="javascript:confirmLink('{lang:"blog","delete_comment?"}', '{top.virtual_path}{comment_delete_link}')" title="{lang:"blog","delete_comment"}">{lang:"blog","delete_comment"}</a>
                                    </div>
                                    <!-- ENDIF --> 
                            </div>
                 
                    <!-- END entry_comments -->
                     </div>
                 </div>
                <!-- ENDIF -->
            </div>

            <!-- IF total_pages > "1" AND  hide_content != "1" -->    
            
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                    <div class="pull-right">
                        <span>{lang:"core","page_numbers"}</span>
                        <div class="btn-group">
                            {page_links}
                        </div>
                    </div> 
                </div>
            
                <script type="text/javascript">
                    $(function() {
                        $('#footer_pagination a').addClass('btn btn-default');
                    });
                </script>
            <!-- ENDIF -->
            
            </div>  <!-- panel -->    
        </div>      
        <div class="col-sm-3">
            <!-- INCLUDE webffo_account_sidebar.tpl -->
            <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->            
 <!-- INCLUDE footer.tpl -->
