<div class="poll panel panel-default">
    <div class="panel-heading">{ext_poll_question} </div>
    <div class="panel-body">
    
    	<div class="sidebox">
    		<div class="polls">
    			<table class="plain">
    				<!-- BEGIN ext_poll_answers -->
    					<tr>
    						<!-- IF parent.ext_poll_voted == "0" -->
    							<td id="poll_{parent.ext_poll_id}_checkbox_{rowcnt}" class="">
                    <label class="xradio">
    								  <input data-toggle="radio" type="radio" id="poll_{parent.ext_poll_id}_checkbox_{rowcnt}_obj" name="poll_answer" value="{rowcnt}" class="xradio" onclick="submit_poll({parent.ext_poll_id},{rowcnt},'{lang:"core","polls_curr_votes"}')" />
    							 </label>
                  </td>
    						<!-- ENDIF -->
    						<td class="answers">
    							<!-- IF parent.ext_poll_voted == "0" -->
    								<label for="poll_{parent.ext_poll_id}_checkbox_{rowcnt}_obj">{answer} <span id="poll_{parent.ext_poll_id}_results_{rowcnt}" style="display: none"></span></label>
    								<div id="poll_{parent.ext_poll_id}_bar_{rowcnt}" class="results_bar" style="display:none;width:{pct_width}%"></div>
    							<!-- ELSE -->
    								<label>{answer} <span id="poll_{parent.ext_poll_id}_results_{rowcnt}">{pct}% ({votes} {lang:"core","polls_curr_votes"})</span></label>
    								<div id="poll_{parent.ext_poll_id}_bar_{rowcnt}" class="results_bar" style="width:{pct_width}%"></div>
    							<!-- ENDIF -->
    						</td>
      					</tr>
      				<!-- END ext_poll_answers -->
    				<tr>
    					<td colspan="2">
    						<div class="results" id="poll_{ext_poll_id}_results_view" <!-- IF parent.ext_poll_voted -->style="display:none"<!-- ENDIF -->><a href="#" class="btn btn-success" onclick="submit_poll({ext_poll_id},-1,'{lang:"core","polls_curr_votes"}');return false;">{lang:"core","polls_votes_view"}</a></div>
    						<div class="results" id="poll_{ext_poll_id}_results_wrap" <!-- IF parent.ext_poll_voted == "0" -->style="display:none"<!-- ENDIF -->>
    							{lang:"core","polls_total_votes"}: <span id="poll_{ext_poll_id}_results">{ext_poll_total_votes}</span>
    						</div>
    					</td>
    				</tr>
    			</table>
    		</div>
    	</div>
  </div>
</div>
