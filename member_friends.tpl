<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li class="active"><a href="{virtual_path}{member_friends_link}">{lang:"member","frm_friends"}</a></li>
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
                 <div class="panel-heading"><h4 class="pagetitle">{lang:"member","app_friends"}</h4></div> 
                 <div class="panel-body padding-b-5">
            
                    <!-- IF hide_content != "1" -->
                    <div class="container-fluid container-small">
                        <div class="outter page_member_friends row">

                            <!-- BEGIN friends_profiles -->
                            <div class="col-sm-2 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                                <!-- INCLUDE webffo_profile.tpl -->
                            </div> 
                            <!-- END friends_profiles -->
                        </div>
                    </div>

                    <!-- ENDIF -->
                </div>

                <!-- IF total_pages > "1" AND hide_content != "1" -->  	

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
