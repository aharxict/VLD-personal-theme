<!-- INCLUDE header.tpl -->
<div class="container">      
  <div class="row">          
    <div class="col-lg-12">              
        <ol class="breadcrumb">
            <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
            <li>{anchor:url1="account/events/",url2="index.php?m=account_events",name="event_pictures|frm_events"}</li>
            <li><a href="{virtual_path}{event_edit_link}">{lang:"event_pictures","frm_editevent"}</a></li>
            <li class="active"><a href="{virtual_path}{event_pictures_view_link}">{lang:"event_pictures","frm_pictures"}</a></li>
        </ol>                         
    </div> 
      
 <div class="btn-group profileactions col-lg-12">
	<a class="btn btn-primary" href="{virtual_path}{event_edit_link}">{lang:"event_pictures","opt_editevent"}</a>
        <a class="btn btn-primary" href="{virtual_path}{event_guests_view_link}">{lang:"event_pictures","opt_guests"}</a>
        <a class="btn btn-primary" href="{virtual_path}{event_comments_view_link}" >{lang:"event_pictures","opt_comments"}</a>
        <a class="btn btn-primary active"  href="{virtual_path}{event_pictures_view_link}" >{lang:"event_pictures","opt_pictures"}</a>
        <a class="btn btn-primary" href="{virtual_path}{event_pictures_add_link}">{lang:"event_pictures","opt_addpicture"}</a></li>    
 </div>      
      
    <div class="col-sm-9">              
      <div class="well">  
          <h4>{lang:"event_pictures","app_pictures"}</h4>
      </div>    
      <div class="webffo-inner margin-t-25 margin-b-25 ">
            <div class="row page_account_events_pictures">
                <!-- IF hide_content != "1" -->
                <!-- BEGIN event_pictures -->
                <div class="col-sm-4  col-sm-6 col-xs-12 ">
                    <div class="well bg_white_alpha bevelbottom clearfix">
                        <div class="entry_top clearfix">
                            <div class="image">
                                <a href="{top.virtual_path}{picture_edit_link}">
                                    <img class="img-full img-responsive" src="{vldthemes:a="thumbnail",path=session.media_path,filename=picture_preview}" alt="" border="0" />
                                </a>
                            </div>
                        </div>
                        <div class="datainfo">
                         
                            <strong>{lang:"event_pictures","post_date"}:</strong>
                            {picture_post_date}  
                        </div>

                        <div class="btn-group btn-group-justified">
                            <!-- IF session.can_edit_own_events_pictures -->
                            <a class="btn btn-primary btn-sm" href="{top.virtual_path}{picture_edit_link}" title="{lang:"event_pictures","edit"}" ><span class="glyphicon glyphicon-pencil"></span> &nbsp;</a>
                            <!-- ENDIF -->
                            <!-- IF session.can_delete_own_events_pictures -->
                            <a class="btn btn-danger btn-sm" href="#" onclick="javascript:confirmLink('{lang:"event_pictures","delete?"}', '{top.virtual_path}{picture_delete_link}')" title="{lang:"event_pictures","delete"}"><span class="glyphicon glyphicon-minus"></span> </a>
                            <!-- ENDIF -->
                        </div>
                    </div>
                </div> 
                <!-- END event_pictures -->


                <!-- IF total_pages > "1" -->
                <div class="webffo-inner ">
                    <div id="footer_pagination" class="padding-15 footer_pagination clearfix">
                        <div class="pull-right">
                            <span>{pages_info}</span>
                            <div class="btn-group">
                                <!-- IF previous_page != "0" -->
                                <a class="btn btn-default" href="{virtual_path}{previous_page_link}">&laquo; {lang:"event_pictures","previous_page"}</a>
                                <!-- ENDIF -->
                                <!-- IF next_page != "0" -->
                                <a class="btn btn-default" href="{virtual_path}{next_page_link}">lang:"event_pictures","next_page"} &raquo;</a>
                                <!-- ENDIF -->
                            </div>
                        </div> 
                    </div>
                </div> 
                <!-- ENDIF -->

                <!-- ENDIF -->
            </div>

        </div>
      </div>       
      <div class="col-sm-3">
          <!-- INCLUDE webffo_account_sidebar.tpl -->
          <!-- INCLUDE webffo_sidebar.tpl -->
        </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->