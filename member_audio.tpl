<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li class="active"><a href="{virtual_path}{member_audio_link}">{lang:"member","frm_audio"}</a></li>
            </ol>    
        </div>         
        <div class="col-lg-12 profileactions">
            <div class="options">
                <div class="btn-group">
                    <!-- INCLUDE member_sections_links.tpl -->
                 </div>
            </div>
        </div>  
      <div class="col-lg-8 col-md-8">             
           <div class="well"><h4 class="pagetitle">{lang:"member","app_audio"}</h4></div> 


                <!-- IF hide_content != "1" -->

                <div class=" outter page_member_audio">
                    <!-- BEGIN profile_audio -->
                    <div class="clearfix well bevelbottom sound_item row_{rowcnt} dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
                        <div class="col-lg-9 padding-l-0">

                            <div id="mpl{rowcnt}" class="player"><a href="http://www.macromedia.com/go/getflashplayer">Get Flash</a> to see this player.</div>
                            <script type="text/javascript" language="javascript">
                                swfobject.embedSWF("{top.virtual_path}media/utils/mediaplayer.swf", "mpl{rowcnt}", "345", "19", "9.0.0", false,
                                {'autostart':'false','file':'{top.virtual_pic_path}{top.member_media_path}{audio_filename}','wmode':'transparent'},
                                {'allowfullscreen':'false','wmode':'transparent'}, {});
                            </script>
                            <div class="datainfo">
                                <h4>{lang:"member","title"}:{audio_name}</h4>
                            </div>

                            <div class="itemfooter rating_audio positionrelative">
                                <!-- IF settings.enable_audio_rating AND session.can_rate_audios AND audio_rated -->
                                {ratings:type="audio",member_id=top.member_id,item_id=audio_id,score=audio_score,votes=audio_votes}
                                <!-- ENDIF -->
                            </div>
                        <!-- IF audio_description -->
                         {lang:"member","description"}: {audio_description}
                       <!-- ENDIF -->

                        </div>
                        <div class="col-lg-3">

                            <!-- IF settings.enable_reports AND settings.enable_audio_reports AND session.can_submit_reports -->
                            <div class="pull-right">
                                {reports:type="audio",member_id=top.member_id,item_id=audio_id}
                            </div> 
                            <!-- ENDIF -->	      
                          


                        </div>
                    </div>
                    <!-- END profile_audio -->
                </div>

                <!-- ENDIF -->
 
        </div> 
    <div class="col-lg-4 col-md-4">
        <!-- INCLUDE webffo_sidebar.tpl -->
    </div>  
   </div>
</div>
      
<!-- INCLUDE footer.tpl -->
