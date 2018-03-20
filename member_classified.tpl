<!-- INCLUDE header.tpl -->

<div class="container">

  <div class="row">
  
  <div class="col-sm-12"><!-- INCLUDE message.tpl --></div>

  <div class="col-sm-9">

     <div class="panel panel-default">
        <div class="panel-heading">{entry_title}</div>
        <div class="panel-body">

          <!-- IF hide_content != "1" -->
          	
            <div class="clearfix">
              <div class="row">
              
                <div class="col-sm-2">
              
                		<div class="classified_pic">
                			<!-- IF member_picture AND session.can_view_adult_images < member_picture_adult -->
                				<img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/adult.jpg" alt="" />
                			<!-- ELSEIF member_picture -->
                				<img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/image.php?src={member_media_path}{member_picture}" alt="" />
                			<!-- ELSE -->
                				<img class="img-full img-responsive" src="{top.virtual_tpl_path}{session.template}/media/user_picture_none.gif" alt="" />
                			<!-- ENDIF -->                			
                		</div>   
                   <div class="label label-success label-big margin-t-15">{price}</div>  
                            		
          		  </div>
                
                <div class="col-sm-10">
          
          			<!-- IF entry_picture AND session.can_view_adult_images < entry_cant_view_adult_images -->
          				<div class="classified_img_border">
          					<img src="{top.virtual_tpl_path}{session.template}/media/adult.jpg" alt="" />
          				</div>
          			<!-- ELSEIF entry_picture -->
          				<div class="classified_img_border">
          					<img class="img-full img-responsive" src="{top.virtual_pic_path}{member_media_path}{entry_picture}" alt="" />
          					<!-- IF session.can_access_cp AND entry_fsk_check == "0" --><span id="fskcheck"><b>FSK:</b> &nbsp; <a href="" onclick="fskcheck('fskcheck', 'classified', {entry_id}, '0'); return false;">(Softc.)</a> &nbsp; <a href="" onclick="fskcheck('fskcheck', 'classified', {entry_id}, '1'); return false;">(Hardc.)</a> &nbsp; <a href="" onclick="fskcheck('fskcheck', 'classified', {entry_id}, '2'); return false;">(Extrem)</a></span><!-- ENDIF -->
          				</div>
          			<!-- ENDIF -->
          			
          			<div class="text-justify margin-t-15">{entry_body}</div>
          			          		
              	{reports:type="classified",member_id=member_id,item_id=entry_id}	
                {webffo_strings:action="classified_delete",id=entry_id}
          	
          	   </div>
        	   </div>
           </div>
         </div>
      </div>
            
      	<!-- IF entry_allow_comments AND session.can_view_all_classifieds_comments -->
      		
          
          <div class="panel panel-default">
            <div class="panel-heading">{lang:"member","comments_num"} ({entry_total_comments})</div>
      	   	<div class="panel-body">
      			
        			<form action="{entry_link}" method="post" id="commentform">
        		
        					<input type="hidden" name="iscomment" value="1" />
                  
                  <div class="form-group">
        					   <textarea class="form-control" id="comment_body" name="body" cols="" rows="">{comment_body}</textarea>
        					</div>
                  
                  <div class="form-group">
        					<!-- IF settings.classifieds_comments_captcha -->
        						<img src="{virtual_path}includes/fns/fns.captcha.php" alt="" class="captcha " />
        						<input type="text" placeholder="{lang:"member","verify_number"}" id="field_captcha" class="form-control margin-t-15 captcha" name="captcha" maxlength="5" />
        					<!-- ENDIF -->
        					</div>
                  
        					<input type="submit" class="btn btn-success" name="submit" value='{lang:"member","submit_comment"}' />

        			</form>
      			
      		</div>
      	</div>
          		
      			{comments:type="classified",member_id=member_id,content_id=entry_id}
      		
      	<!-- ENDIF -->  	
     <!-- ENDIF -->
  </div>
  <div class="col-sm-3">
  	
      <div class="panel panel-default">
        <div class="panel-heading">More&hellip;</div>
        <div class="panel-body">
        	<div>{lang:"pd","dateadded"} {entry_post_date} </div>
              
    	     <a class="btn btn-primary btn-block" href="{virtual_path}member/{member_id}/classifieds/">More Ads from {member_username}</a>
    	   </div>
      </div>
      
   </div>
  </div>
</div>
<!-- INCLUDE footer.tpl -->