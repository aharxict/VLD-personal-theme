<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">		
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="search/",url2="index.php?m=search",name="search|frm_search"}</li>
            <!-- IF active_module == "advanced_search" -->
                    <li class="active">{anchor:url1="search/advanced/",url2="index.php?m=search&p=advanced",name="search|frm_advanced_search",class="active"}</li>
            <!-- ELSEIF active_module == "matchmaker" -->
                    <li class="active">{anchor:url1="search/advanced/",url2="index.php?m=search&p=advanced",name="search|frm_advanced_search",class="active"}</li>
            <!-- ELSE -->
            <!-- ENDIF -->
	</ol>
    </div>          
    <div class="col-sm-12 profileactions clearfix">
      <div class="btn-group">
              <!-- IF active_module == "advanced_search" -->
                      {anchor:url1="search/",url2="index.php?m=search",name="search|opt_search",class="btn btn-default"}
                      {anchor:url1="search/advanced/",url2="index.php?m=search&p=advanced",name="search|opt_advanced_search",class="btn btn-default active"}
              <!-- ELSE -->
                      {anchor:url1="search/",url2="index.php?m=search",name="search|opt_search",class="btn btn-default active"}
                      <!-- IF session.can_advanced_search -->
                      {anchor:url1="search/advanced/",url2="index.php?m=search&p=advanced",name="search|opt_advanced_search",class="btn btn-default"}
                      <!-- ENDIF -->
              <!-- ENDIF -->
              <!-- IF loggedin AND settings.enable_matchmaker -->
              {anchor:url1="search/matchmaker/",url2="index.php?m=search&p=matchmaker",name="search|opt_matchmaker",class="btn btn-default"}
              <!-- ENDIF -->
              <!-- IF loggedin AND settings.enable_saved_searches AND session.can_save_searches -->
                      {anchor:url1="search/saved/",url2="index.php?m=search&p=saved",name="search|opt_saved_searches",class="btn btn-default"}
              <!-- ENDIF -->
      </div>
    </div>
    
       <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
      
            
<!-- IF active_module == "advanced_search" -->
    <!-- INCLUDE search_advanced.tpl -->
<!-- ELSE -->
 <!-- INCLUDE search_simple.tpl -->
<!-- ENDIF -->

    </div>
    </div>
<!-- INCLUDE footer.tpl -->    