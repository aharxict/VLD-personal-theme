<!-- INCLUDE header.tpl -->


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li class="active">{anchor:url1="news/",url2="index.php?m=news",name="news|frm_news"}</li>
                <li class="active"><a href="{virtual_path}{ifelse:settings.fancy_urls,"1","news/rss/","index.php?m=news&p=rss"}" target="_blank"><img src="{virtual_tpl_path}{session.template}/media/rss.png" border="0" /></a></li>
            </ol>
        </div>
        <div class="col-sm-9">

        <!-- IF hide_content != "1" -->
            <div class="panel panel-default">
                <div class="panel-heading">{lang:"news","app_news"}</div>
                <div class="panel-body">
          
                        <!-- BEGIN news_entries -->
                          <!-- IF rowcnt > "0" -->
                            <hr>
                          <!-- ENDIF -->
                        <div class="news_entry{ifelse:rownum,"1","odd","even"}  {ifelse:rowlast,"1","dataitemlast",""}">
                            <div class="row">
                                <!-- IF news_picture -->
                                <div class="image col-sm-2 ">
                                    <a class="" href="{top.virtual_path}{news_link}">
                                        <img class="img-responsive img-full" src="{vldthemes:a="thumbnail",filename=news_picture}" alt="" border="0" />
                                    </a>
                                </div>
                                <!-- ENDIF -->
                                <div class="<!-- IF news_picture --> col-sm-10  <!-- ELSE --> col-lg-12 <!-- ENDIF -->">
                                    <small class="text-muted pull-right">{news_date}</small>
                                    <div class="title">
                                        <h4 class="inner"><a href="{top.virtual_path}{news_link}">{trim:news_title,50}</a></h4>
                                    </div>  
                                    <div class="entry text-justify">

                                        <!-- IF rowcnt == '0' -->
                                        <p>{trim:news_body,700}</p> 
                                        <!-- ELSE -->
                                        <p>{trim:news_body,200}</p>
                                        <!-- ENDIF -->
                                        <a class="btn btn-primary btn-xs" href="{top.virtual_path}{news_link}">{lang:"news","readmore"}</a>
                                        <div class="timestamp pull-right">

                                            <a  href="{top.virtual_path}{news_link}">{news_total_comments} {lang:"news","total_comments"}</a>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <!-- END news_entries -->
                                      

                    <!-- ENDIF -->
                </div>
            </div>

            <!-- IF total_pages > "1" AND hide_content != "1" -->
            <div class="webffo-inner margin-t-25">
                <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                    <div class="pull-right">
                        <span>{pages_info}</span>
                        <div class="btn-group">
                            <!-- IF previous_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"news","previous_page"}</a>
                            <!-- ENDIF -->
                            <!-- IF next_page != "0" -->
                            <a class="btn btn-default" href="{virtual_path}{next_page_link}">{lang:"news","next_page"} &raquo;</a>
                            <!-- ENDIF -->
                        </div>
                    </div> 
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
