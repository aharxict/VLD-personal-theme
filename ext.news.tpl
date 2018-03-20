<!-- IF ext_news -->
<div class="panel panel-default">
   <div class="panel-heading">News</div>
   <div class="panel-body word-break">
      <!-- BEGIN ext_news -->
      <!-- IF rowcnt > "0" -->

       <!-- ENDIF -->

      <div class="dataitem newsitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
          <!-- IF news_picture -->
  
          <div class="image">
              <a href="{top.virtual_path}{news_link}"><img src="{top.virtual_pic_path}{news_picture}" alt="" border="0" /><br /></a>
          </div>
  
          <!-- ENDIF -->
            <div class="block">
          <h5><a href="{top.virtual_path}{news_link}">{trim:news_title,40}</a></h5>
          <em>{news_date}</em>
          <p>{trim:news_body,120} </p>
          <a href="{top.virtual_path}{news_link}">{lang:"core","home_read_more"}</a>
            </div>
      </div>
      <!-- END ext_news -->
  </div>
</div>
<!-- ENDIF -->
