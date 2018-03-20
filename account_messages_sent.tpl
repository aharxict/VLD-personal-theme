<!-- INCLUDE header.tpl -->


<div class="container">

<!-- INCLUDE message.tpl -->

<div class="row">
<div class="col-sm-9">

	 <div class="profileactions clearfix"> 
  			<div class="btn-group">
  				<a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/inbox/","index.php?m=account_messages&p=inbox"}" class=" btn btn-primary">{lang:"messages","opt_inbox"} ({session.totalimessages})</a></li>
  				<a class="btn btn-primary active" href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/messages/sent/","index.php?m=account_messages&p=sent"}">{lang:"messages","opt_sent"} ({session.totalsmessages})</a></li>  
  			</div>
     </div>
		

      <div class="panel panel-default">
      	<div class="panel-heading">
      		 <!-- IF messages_pct -->
          <div class="pull-right message_progress">
            <div style="margin-top:0" title="{messages_info}" data-toggle="tooltip" data-placement="top" class="progress progress-striped">
              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{messages_pct}" aria-valuemin="0" aria-valuemax="100" style="width: {messages_pct}%">
                <span class="sr-only">{messages_pct}%</span>
              </div>
            </div>
          </div>
  		<!-- ENDIF -->
      
  		<h4>{lang:"messages","app_inbox"}</h4>  
  		</div>
      <div class="panel-body">
 

<!-- IF hide_content != "1" -->


  		<form name="messages" method="post" action="{virtual_path}{messages_delete_link}">


  		<div class="clearfix">
  				<!-- BEGIN profile_messages -->
  				<!-- IF rowcnt > "0" --><hr><!-- ENDIF -->

  				<div class=" row  <!-- IF message_new -->message_new<!-- ENDIF --> {ifelse:rownum,"1","odd","even"} {ifelse:rowlast,"1","dataitemlast",""}">

  						<div class="col-sm-2  col-xs-3">
						      <!-- INCLUDE member_sections_picture.tpl -->		    
    			  	</div>
                
    					<div class="col-sm-8  col-xs-7">
              
                    <a href="{top.virtual_path}{message_link}"><h4>{member_username}</h4>
                      <p>{trim:message_body,90}</p> 
                    </a>     

               </div>

               <div class="col-sm-2  col-xs-2">
                   <input type="checkbox" name="message_id[{message_id}]" id="message_id_{message_id} "data-toggle="checkbox" class="messageCheckbox pull-right" />  
                   <p class="hidden-xs timestamp text-muted">{message_date} </p>
               </div>
               
                         
            </div>
  				<!-- END profile_messages -->
            </div>
              
  		</form>

    </div>
  </div>
 

<!-- ENDIF -->
 


  <div id="footer_pagination" class=" footer_pagination clearfix">
  	<div class="pull-left">
       <a class="btn btn-default" href="#" onclick="javascript:confirmForm('{lang:"messages","delete?"}', 'messages')" title="{lang:"messages","delete"}">{lang:"messages","delete"}</a>
     </div> 
    
    <div class="pull-right">
      	<!-- IF total_pages > "1" -->
  				<span>{pages_info}</span>
          	<div class="btn-group">
            <!-- IF previous_page != "0" -->
    					<a class="btn btn-primary" href="{virtual_path}{previous_page_link}">&laquo; {lang:"messages","previous_page"}</a>
    				<!-- ENDIF -->
    				<!-- IF next_page != "0" -->
    					<a class="btn btn-primary" href="{virtual_path}{next_page_link}">{lang:"messages","next_page"} &raquo;</a>
    				<!-- ENDIF -->
           </div> 
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