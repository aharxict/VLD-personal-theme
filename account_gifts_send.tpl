<!-- INCLUDE header.tpl -->
<div class="container">      
    <div class="row">          
        <div class="col-lg-12">              
            <ol class="breadcrumb">    
        				<li>{anchor:url1="account/gifts/",url2="index.php?m=account_gifts",name="gifts|frm_gifts"}</li>
        				<li class="active"><a href="{virtual_path}{gift_send_link}">{lang:"gifts","frm_send"}</a></li>
      	    </ol>

            <div class="profileactions pull-right">
              <div class="btn-group">
                <a class="btn btn-primary" href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/inbox/","index.php?m=account_gifts&p=inbox"}">{lang:"gifts","opt_inbox"} ({session.totaligifts})</a>
                <a href="{virtual_path}{ifelse:settings.fancy_urls,"1","account/gifts/sent/","index.php?m=account_gifts&p=sent"}" class="active btn btn-primary">{lang:"gifts","opt_sent"} ({session.totalsgifts})</a>
              </div>
          </div>

     </div>

    

<div class="col-sm-9">
    <!-- INCLUDE message.tpl -->
    
    <div class="panel panel-default">
         <div class="panel-heading">{lang:"gifts","app_send"}</div> 
         <div class="panel-body">
            <!-- IF hide_content != "1" -->  
              <form method="post" name="gift" action="">
              <div class="container-fluid container-small">
      		       <div class="row">
                   <div class="col-sm-2">
        							<div class="image">
        								<!-- INCLUDE member_sections_picture.tpl -->
        							</div>
                    </div>
                    <div class="col-lg-10 col-md-12 col-sm-12 col-xs-12">
      		          
                              <table style="width:100%">
                              	<!-- BEGIN gifts -->
      													<td valign="top" class="text-center">
      														<label>
      															<img class="img-responsive" src="{top.virtual_pic_path}{gift_filename}" title="{gift_name}" alt="{gift_name}" border="0" /><br/>
      															<div class="">
                                    <input name="gift_id" data-toggle="radio" value="{gift_id}" type="radio"  <!-- IF gift_id == top.gift_post_id -->checked="checked"<!-- ENDIF --> /> <!-- IF gift_credits -->{gift_credits} <!-- IF gift_credits > "1" -->{lang:"gifts","credits"}<!-- ELSE -->{lang:"gifts","credit"}<!-- ENDIF --><!-- ELSE -->{lang:"gifts","free"}<!-- ENDIF -->
                                   </div>
      														</label>
                                  <br>
                                  <br>
      													</td>
      												<!-- IF rowlast == "0" AND rowcnt mod "5" == "4" --></tr><tr><!-- ENDIF -->
      											<!-- END gifts -->
                            </table>
                  
                        	
        								<input type="hidden" name="isgift" value="1" />

      						
                    
                    	<div class="fieldset">
        											<!-- IF settings.enable_gifts_message -->
      												<div class="form-group">
                                <label for="field_message">{lang:"gifts","message"}</label>
      											  	<textarea id="field_message" class="form-control" cols="40" rows="5" name="message">{gift_message} </textarea>
                              </div>
        											<!-- ENDIF -->

        											<label class="" for="privacy_public">
        										  	<input data-toggle="radio" id="privacy_public" type="radio" name="privacy" value="0" <!-- IF gift_privacy == "0" -->checked="checked"<!-- ENDIF --> />
                                <strong>{lang:"gifts","privacy_public"} </strong>
                              </label>
                              
                              <br>
                              
        											<label class="" for="privacy_personal">
        											 <input data-toggle="radio" id="privacy_personal" type="radio"  name="privacy" value="1" <!-- IF gift_privacy == "1" -->checked="checked"<!-- ENDIF --> /> 
                                 <strong>{lang:"gifts","privacy_personal"}</strong> (<span>{lang:"gifts","privacy_personal_help"}</span>)
                              </label>   
                              
        											<label class="" for="privacy_anon">
            								     <input data-toggle="radio" id="privacy_anon" type="radio" name="privacy" value="2" <!-- IF gift_privacy == "2" -->checked="checked"<!-- ENDIF --> />
                                 <strong>{lang:"gifts","privacy_anon"}</strong> (<span>{lang:"gifts","privacy_anon_help"}</span>)
        						          </label>
                          </div>
                            <input class=" btn btn-primary" name="submit" value="{lang:"gifts","submit"}" type="submit" />
      					  </div> <!-- von col-lg-9 -->
      			</div>
            
            	</div>

          </div>
        </div>
      	<script type="text/javascript" language="javascript">
      	 var smilies = [{smilies_str}];
      	</script>
      
      </form>
      <!-- ENDIF -->
        </div> 
       <div class="col-sm-3">
           <!-- INCLUDE webffo_account_sidebar.tpl -->
           <!-- INCLUDE webffo_sidebar.tpl -->
       </div>  
    </div>
</div>
<!-- INCLUDE footer.tpl -->
