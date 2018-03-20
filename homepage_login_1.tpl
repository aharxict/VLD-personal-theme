<div class="container">

<div class="row">
   

      <div  class="col-lg-9">

        {vldthemes:a="getNewVisitorsFans"}

        {vldthemes:a="getPhotoGame"}
      
        <div class="panel panel-default">
           <div class="panel-heading">{vldthemes:a="lang",key="latest_members"}</div>
           <div class="panel-body">
         
             <div class="container-fluid container-small">
              <div class="row">
                {members:limit=36,photos=0,orderby="joindate",cache_time=0,cache_name="online"} 
              </div>
             </div>
         
          </div>
        </div>

     
      </div>
 
          
      <div class="col-lg-3" >         
        <!-- INCLUDE webffo_sidebar.tpl -->
      </div>  
      
    </div>  
</div>