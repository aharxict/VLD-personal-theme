<!-- INCLUDE header.tpl -->
   
<!-- IF vts_mod_promotion_enabled -->
<div class="text-center topmembers padding-xs-15">
  <div class="container container-small">
    <div class="row">
      {vldthemes:a="getTopmembers",limit="12",template="ext.members_round.tpl"}
    </div>
  </div>
</div>
<!-- ENDIF -->

<div class="container">
    <div class="row">
      <div class="col-lg-12">
                
         <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="account/home/",url2="index.php?m=account_home",name="home|frm_profile"}</li>
            <li class="active">{anchor:url1="account/home/",url2="index.php?m=account_home",name="home|frm_home"}</li>
        </ol>
	</div>
  
    <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>
        <div class="col-md-9">
       
         <!-- IF session.group_id == "1" --> 
         <div class="panel panel-success">
             <div class="panel-heading">Integrated Theme Admin </div>
             <div class="panel-body ">
                 <p> Hey {session.username}, <br>
                     you can configure this theme without editing tons of .tpl and .php files, just click to open 
                    <a href="{virtual_path}index.php?a=start&t=admin" class="btn btn-xs btn-default">theme administration</a>  
                 </p>
                 
             </div>         
         </div>
         
         {vldthemes:a="croninfo"} 
         
         <!-- ENDIF --> 
             
        {vldthemes:a="getNewVisitorsFans"}
        
        {vldthemes:a="getActivityBox"}
  
        <div class="panel panel-default">
           <div class="panel-heading">{vldthemes:a="lang",key="matches"} </div>
           <div class="panel-body padding-b-5">
         
             <div class="container-fluid container-small">
              <div class="row">
                
                <!-- IF profile_field_gender2_value_id == "1" -->
                    {members:limit=6,photos=0,orderby="joindate",cache_time=0,cache_name="member_matches",profile_gender1="2"}
                <!-- ELSE -->
                     {members:limit=6,photos=0,orderby="joindate",cache_time=0,cache_name="member_matches",profile_gender1="1"}
                <!-- ENDIF -->
              
 
              </div>
          </div>
         
          </div>
        </div>
        
        {vldthemes:a="cupid"}
       

    
            <div class="panel panel-default">
                <div class="panel-heading">{vldthemes:a="lang",key="activities",username=member_username}</div>
                <div class="panel-body">
                     {activities:member_id=member_id,timeframe="9999",limit="30",actions="blogs|albums|pictures|audios|events|videos|gifts|guestbooks|comments"}
                </div>
            </div>
          
            
        </div>
        <div class="col-md-3">
            
             <div class="bg_white relative margin-b-15 clearfix">
                    {anchor:url1="account/photo/",url2="index.php?m=account_photo",name="home|opt_photo",class="overlay_changeimage badge badge-primary"}
                    <!-- IF member_picture -->
                    <a href="{top.virtual_path}{ifelse:settings.fancy_urls,"1","account/photo/","index.php?m=account_photo"}">
                        <img class="img-responsive img-full" src="{vldthemes:a="thumbnail",path=session.media_path,filename=member_picture_large}" alt="" border="0" />
                    </a>
                    <!-- ELSE -->
                    <a href="{top.virtual_path}{ifelse:settings.fancy_urls,"1","account/photo/","index.php?m=account_photo"}">
                        <img class="img-responsive img-full" src="{vldthemes:a="avatar"}" alt="" border="0" />
                    </a>
                    <!-- ENDIF -->
                    <div class="padding-15 ">
 
                     <!-- IF settings.enable_member_rating AND session.rated -->
                        <span class="label-profile label label-warning"><span class="glyphicon glyphicon-star"></span></span>  &nbsp;  {member_score}  &nbsp;  ({lang:"home","votes"}: {member_votes})
                    <!-- ENDIF -->
                    <!-- IF vts_mod_activity_enabled -->
                      <br>
                      <span class="label-profile label label-warning">{vldthemes:a="getLevel",member_id=member_id}</span> &nbsp; {vldthemes:a="lang",key="activity_level"}                    
                    <!-- ENDIF -->
                   </div>

              </div>  

         <!-- INCLUDE webffo_account_sidebar.tpl -->
         <!-- INCLUDE webffo_sidebar.tpl -->
        </div>
        
    </div>
</div>

<!-- INCLUDE footer.tpl -->