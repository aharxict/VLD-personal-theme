<div id="homepage-top">
  <div id="homepage-slider" class="hidden-xs">
 
      <div class="container relative">
        <h2 id="callout-1" class="bg-primary hidden-sm">{vldthemes:a="lang",key="callout_2"}</h2>
        <h3 id="callout-2" class="bg-primary hidden-sm">{vldthemes:a="lang",key="callout_1"}</h3>
        
        <div id="registration_block"class="col-md-4 col-sm-8 pull-right">
            <h3 class="front_reg_title bg-primary">{vldthemes:a="lang",key="reg_title"}</h3>
                <div id="reg_inner"></div>
        </div>
      </div>
    
  </div>               
</div>
     
<div id="homepage-mobile-intro" class="visible-xs stage stage-white">
    <div class="container container-small ">
      <div class="home_members homepage">
          <h2 class="nhtitle text-primary">{vldthemes:a="lang",key="reg_title"}</h2>
          <p>{vldthemes:a="lang",key="mob_login_intro"}</p>
          <a href="{virtual_path}account/login" class="btn btn-default"><i class="glyphicon glyphicon-log-in"></i>&nbsp; {lang:"core","menu_login"}</a>
          <p> {vldthemes:a="lang",key="mob_register_intro"}</p>
          <a href="{virtual_path}account/register" class="btn btn-primary"><i class="glyphicon glyphicon-plus-sign"></i> {lang:"core","menu_register"}</a>
        </div>                
    </div>                
</div>

<div class="stage invite-section" style="display: none;">
    <div class="container homepage">
        <div class="home_claimer">
            {page:label="welcome",template="ext.page_welcome.tpl",cache_time=0}
        </div>
    </div>
</div>

<div class="stage stage-white">
    <div class="container container-small ">
        <div class="home_members homepage">
            <h2 class="nhtitle text-primary"><em>{vldthemes:a="lang",key="homepage_title_2"}</em></h2>
            <div class="members_list members_popular row">
                {members:limit=12,photos=1,cache_time=0,cache_name="featured_home",featured="1",orderby="random",template="ext.members.home.tpl"}
            </div>
        </div>
    </div>
</div>

<div class="news-section">
    <div class="container">
        <div class="row">
            <!-- NEWS, HOMEPAGE -->
            <div class="col-sm-12" style="margin-bottom:10px;">
                <div class="news-block" style="padding-bottom:10px; min-height:323px;">
                    <div class="section-title">

                        <h2><em>{lang:"core","home_latest_news"}</em></h2>
                    </div>

                    {news:limit=2,cache_time=0}

                </div>
            </div>
            <!-- /NEWS, HOMEPAGE -->
        </div>
    </div>
</div>

<div id="stage_stories" class="stage stage-white ">

    <div class="container">
        <div class="row">
            <div class="icon-box col-sm-4">
                <a href="account/register/" class="col-sm-12 commenting wow " data-wow-delay="0.5s">
                    <h2 class="nhtitle text-primary">{vldthemes:a="lang",key="homepage_title_3"}</h2>
                    <p class="lead">{vldthemes:a="lang",key="homepage_subtitle_3"}</p>
                </a>
            </div>
            <div class="icon-box col-sm-4">
                <a href="account/register/" class="col-sm-12 envelope wow " data-wow-delay="1s">
                    <h2 class="nhtitle text-primary">{vldthemes:a="lang",key="homepage_title_4"}</h2>
                    <p class="lead">{vldthemes:a="lang",key="homepage_subtitle_4"}</p>
                </a>
            </div>
            <div class="icon-box col-sm-4">
                <a href="account/register/" class="col-sm-12 comment wow " data-wow-delay="1.5s">
                    <h2 class="nhtitle text-primary">{vldthemes:a="lang",key="homepage_title_5"}</h2>
                    <p class="lead">{vldthemes:a="lang",key="homepage_subtitle_5"}</p>
                </a>
            </div>
        </div>
    </div>
</div>

<div class="blog-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12" style="margin-bottom:10px;">
                <div class="news-block" style="padding-bottom:10px; min-height:323px;">
                    <div class="section-title">

                        <h2><em>{lang:"core","home_latest_blogs"}</em></h2>
                    </div>

                    {blogs:limit=4,cache_time=0,template="ext.blogs.home.tpl"}

                </div>
            </div>
        </div>
    </div>
</div>








<script src="{virtual_tpl_path}{session.template}/js/wow.min.js"></script>
<script>
 new WOW().init();
</script>