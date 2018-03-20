<a href="#" class="text-danger btn_report" data-toggle="modal" data-target="#report_{ext_report_item_id}">Report</a>


<!-- Modal -->
<div class="modal fade" id="report_{ext_report_item_id}" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">{lang:"core","report"}</h4>
      </div>
      <div class="modal-body">

      <div class="reportbox" id="report_{ext_report_type}_response{ext_report_item_id}">
      	<div class="popup" id="report_{ext_report_type}_box{ext_report_item_id}">
      		<div class="reason">
      			<select class="input-sm form-control" id="report_{ext_report_type}_reason{ext_report_item_id}" name="report_{ext_report_type}_reason{ext_report_item_id}">
      				<option value="">{lang:"core","report_reason"}</option>
      				{dropdownlist:settings.reports_items,""}
      			</select>
      		</div>
      		<div class="submit">
      
      		</div>
      		<!-- <div class="progress" id="report_{ext_report_type}_progress{ext_report_item_id}"></div> -->
      	</div>
      </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">{lang:"core","help_close"}</button>
	<a href="#" class="btn btn-primary"  onclick="submit_report('{ext_report_type}','{ext_report_member_id}','{ext_report_item_id}','{lang:"core","report_no_reason"}');return false;">{lang:"core","submit"}</a>
      </div>
    </div>
  </div>
</div>