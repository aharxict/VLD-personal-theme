<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">	
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="search/",url2="index.php?m=search",name="search|frm_search"}</li>
            <!-- IF hide_content != "1" -->
                    <li class="active"><a href="{virtual_path}{search_link}">{lang:"search","frm_results"}</a></li>
            <!-- ENDIF -->
        </ol>
	</div>

 <div class="actionbuttons margin-b-15 col-lg-12 btn-group">                      
     {anchor:url1="search/",url2="index.php?m=search",name="search|opt_search",class="btn btn-primary"}
     <!-- IF session.can_advanced_search -->
     {anchor:url1="search/advanced/",url2="index.php?m=search&p=advanced",name="search|opt_advanced_search",class="btn btn-primary"}
     <!-- ENDIF -->
     <!-- IF loggedin AND settings.enable_matchmaker -->
     {anchor:url1="search/matchmaker/",url2="index.php?m=search&p=matchmaker",name="search|opt_matchmaker",class="btn btn-primary"}
     <!-- ENDIF -->
     <!-- IF loggedin AND settings.enable_saved_searches AND session.can_save_searches -->
     {anchor:url1="search/saved/",url2="index.php?m=search&p=saved",name="search|opt_saved_searches",class="btn btn-primary"}
     <!-- ENDIF -->
     
     <!-- IF hide_content != "1" -->
          <a href="{virtual_path}{search_link}" class="btn btn-primary active">{lang:"search","opt_results"}</a></li>
    <!-- ELSE -->
    {anchor:url1="search/",url2="index.php?m=search",name="search|opt_results",class="btn btn-primary active"}
    <!-- ENDIF --> 
</div>        

    <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
    <div class="col-sm-9">
     <div class="panel panel-default">
       <div class="panel-heading">{lang:"search","app_results"}</div>
       <div class="panel-body">

            <!-- IF hide_content != "1" -->
            <div class="container-full container-small">
                <div class="row">

                <!-- BEGIN search_profiles -->
                <div class="col-xs-4 col-sm-2 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                    <!-- INCLUDE webffo_profile.tpl -->
                </div>
                <!-- END search_profiles -->
           
            </div>
    
	

                <!-- IF total_pages > "1" -->

                    <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                        <span>{lang:"search","page_numbers"}</span>
                        <div class="btn-group">  {page_links}</div>
                   </div> 
                    <script type="text/javascript">
                      $(function(){
                        $('#footer_pagination a').addClass('btn btn-default');
                      });
                    </script>
                <!-- ENDIF -->

            <!-- ENDIF -->
             </div>
         </div>
       </div>
     </div>
       <div class="col-sm-3">
           <div class="panel panel-default">
               <div class="panel-heading">{lang:"search","order_by"}</div>
                <div class="panel-body">
                  <form name="form_reorder" class="" action="{virtual_path}{search_link}" method="post">
                      <div class="form-group">
                         <select class="form-control" name="orderby" id="field_orderby">{dropdownlist:orderby_box,search_orderby}</select>  
                      </div>
                       <div class="form-group">
                         <select class="form-control" name="direction" id="field_direction">{dropdownlist:direction_box,search_direction}</select> 
                       </div>
                      <input class="margin-t-15 btn btn-primary" name="submit" value="{lang:"search","submit"}" type="submit" />   
             </form>
            </div>
          </div>
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->        