<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">
                <li><a href="{virtual_path}" class="breadcrumb_home" >Home</a></li>
                <li><!-- INCLUDE member_sections_location.tpl --></li>
                <li class="active"><a href="{virtual_path}{member_gifts_link}">{lang:"member","frm_gifts"}</a></li>
            </ol>    
        </div>
       <div class="col-lg-12 profileactions">
            <div class="options">
                <div class="btn-group">
                    <!-- INCLUDE member_sections_links.tpl -->
                 </div>
            </div>
        </div>

       <div class="col-lg-12 ">
        <!-- INCLUDE message.tpl -->
       </div>   
            
       <div class="col-sm-9">    
       
        <div class="panel panel-default">
                <div class="panel-heading">{lang:"member","app_gifts"}</div>
                <div class="panel-body">
                  
                  <div class="container-fluid container-small">        
                    <div class="row">
                     <!-- IF hide_content != "1" -->

              

                    <!-- BEGIN profile_gifts -->
                    <div class="col-sm-3 col-xs-6 dataitem {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">
               
                        <div class="well margin-b-15">
                  
                            <div class="image ">
                                <img class="img-responsive block-center center-block" src="{top.virtual_pic_path}{gift_filename}" alt="" border="0" />
                             </div>

                            <div class="datainfo ">
                                <h4 class="">
                                    {gift_name}
                                </h4>
                                
                                    <strong>{lang:"member","sent_by"}: </strong>
                                    <!-- IF gift_privacy == "0" -->
                                    <a href="{top.virtual_path}{member_profile_link}">{member_username}</a>
                                    <!-- ELSEIF gift_privacy == "1" AND (session.member_id == gift_sender_id OR session.member_id == gift_receiver_id) -->
                                    <a href="{top.virtual_path}{member_profile_link}">{member_username}</a>
                                    <!-- ELSE -->
                                   {lang:"member","anonymous"}
                                    <!-- ENDIF -->
                                    <br>
                                  
                                  <div class="text-muted">{gift_date}</div>
                                    
                                  <div style="min-height:36px" class="margin-t-15 text-center">  
                                    <!-- IF gift_privacy == "0" OR session.member_id == gift_receiver_id -->
                                    <!-- IF gift_message -->
                                    <button data-toggle="modal" data-target="#myModal_{message_id}"  class="btn btn-block btn-default btn-sm">{lang:"member","message"}</button>
                                 
                                    <div class="modal fade" id="myModal_{message_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_{message_id}">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel_{message_id}">{lang:"member","message"}</h4>
                                          </div>
                                          <div class="modal-body">
                                             {gift_message}
                                          </div>
                                          
                                        </div>
                                      </div>
                                    </div>
                                    
                                    
                                    <!-- ENDIF -->
                        
                                    <!-- ENDIF -->
                                    </div>
                               
                            </div>
                       </div>
                    </div>
                    <!-- END profile_gifts -->
                    <!-- ENDIF -->


                  </div>
                </div>



               

            <!-- IF total_pages > "1" AND hide_content != "1" -->
            <div class="footer_wrap">
                <div class="footer">
                    <p>{pages_info}</p>
                    <!-- IF previous_page != "0" -->
                    <a href="{virtual_path}{previous_page_link}">&laquo; {lang:"member","previous_page"}</a>
                    <!-- ENDIF -->
                    <!-- IF next_page != "0" -->
                    <a href="{virtual_path}{next_page_link}">{lang:"member","next_page"} &raquo;</a>
                    <!-- ENDIF -->
                    <div class="clear"></div>
                </div>
            </div>

            <!-- ENDIF -->
    </div>
    </div>
    </div>
    <div class="col-sm-3">
        <!-- INCLUDE webffo_sidebar.tpl -->
    </div>  
 </div>
</div>

<!-- INCLUDE footer.tpl -->
