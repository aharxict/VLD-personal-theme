
  <div class="panel panel-success">
    <div class="panel-heading pointer" data-toggle="collapse" href="#activitydata" aria-expanded="false" aria-controls="#activitydata"><span class="glyphicon glyphicon-chevron-down"></span> {vldthemes:a="lang",key="activity_title"}</div>
    <div class="collapse <!-- IF vt_activity_show --> in <!-- ENDIF -->" id="activitydata">
      <div class="panel-body">
        <div class="clearfix">
          <div class="title col-xs-12 text-center">
            <!-- IF vt_activity_dailylogin -->
             <h4><span class="glyphicon glyphicon-thumbs-up text-warning"></span>{vldthemes:a="lang",key="activity_daily"} </h4>
            <!-- ELSE -->
             <h4>{vldthemes:a="lang",key="activity_need",required=vt_activity_points_required}  <span class="label label-warning">{vt_activity_nextlevel}</span></h4>
             <!-- ENDIF -->
             <hr>
          </div>
          <div class="col-xs-2 title text-center">
           {vldthemes:a="lang",key="activity_yourlevel"}
            <h2 class=""><span class="label label-warning">{vt_activity_level}</span></h2>
           </div>
          <div class="col-xs-10">
    
            <div style="margin:8px 0" class=" progress">
                  <div class="progress-bar progress-bar-warning rogress-bar-striped" style="width: {vt_activity_progress_already}%">
                    <span class="">{vldthemes:a="lang",key="activity_progress"} {vt_activity_progress_already}%</span>
                  </div>                     
            </div>
          
            <small>{vldthemes:a="lang",key="activity_help"}</small>
          
          </div>
        
        </div>   
       </div>
      </div>
    </div>
