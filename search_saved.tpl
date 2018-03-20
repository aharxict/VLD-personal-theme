<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">	
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="search/",url2="index.php?m=search",name="search|frm_search"}</li>
            <!-- IF hide_content != "1" -->
                    <li class="active">{anchor:url1="search/saved/",url2="index.php?m=search&p=saved",name="search|frm_saved_searches"}</li>
            <!-- ENDIF -->
        </ol>
    </div>

     <div class="profileactions col-lg-12 btn-group">                      
        {anchor:url1="search/",url2="index.php?m=search",name="search|opt_search",class="btn btn-primary"}
        <!-- IF session.can_advanced_search -->
                {anchor:url1="search/advanced/",url2="index.php?m=search&p=advanced",name="search|opt_advanced_search",class="btn btn-primary"}
        <!-- ENDIF -->
        <!-- IF loggedin AND settings.enable_matchmaker -->
                {anchor:url1="search/matchmaker/",url2="index.php?m=search&p=matchmaker",name="search|opt_matchmaker",class="btn btn-primary"}
        <!-- ENDIF -->
        <!-- IF loggedin AND settings.enable_saved_searches AND session.can_save_searches -->
                {anchor:url1="search/saved/",url2="index.php?m=search&p=saved",name="search|opt_saved_searches",class="btn btn-primary active"}
        <!-- ENDIF -->
   </div>       

    <div class="col-lg-8 col-md-8">              
      <div class="well">  
        <h4>{lang:"search","app_saved_searches"}</h4>	
      </div>		

      <div class="webffo-inner margin-b-25 page_saved_searches">
        <!-- IF hide_content != "1" -->


        <div class="">
            <!-- BEGIN saved_searches -->
            <div class="well margin-t-15 margin-b-15 bg_white_alpha bevelbottom {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                <div class="margin-t-15 pull-right">
                    <div class=" btn-group">
                        <a class="btn btn-default" href="{top.virtual_path}{search_run_link}" title="{lang:"search","run_search"}">{lang:"search","run_search"}</a>
                        <!-- IF settings.enable_search_feed -->
                        <a class="btn btn-default" href="{top.virtual_path}{search_rss_link}" title="{lang:"search","rss_feed"}">{lang:"search","rss_feed"}</a>
                        <!-- ENDIF -->
                        <a class="btn btn-danger" href="#" onclick="javascript:confirmLink('{lang:"search","delete?"}','{top.virtual_path}{search_delete_link}')" title="{lang:"search","delete"}">{lang:"search","delete"}</a>
                    </div>
                </div>

                <div class="datainfo title">
                    <h2 class="inner"><a href="{top.virtual_path}{search_run_link}">{search_title}</a></h2>
                    <dl class="datainfo">
                        <dt>{lang:"search","search_date"}:</dt>
                        <dd>{search_date}</dd>
                    </dl>
                </div>


            </div>
            <!-- END saved_searches -->
        </div>
        <!-- ENDIF -->
	</div>
   </div>
       <div class="col-lg-4 col-md-4">
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->        
