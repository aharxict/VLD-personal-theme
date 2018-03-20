<div id="topmembermodal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{vldthemes:a="lang",key="topmember_title"}</h4>
      </div>
      <div class="modal-body">
        {vldthemes:a="lang",key="topmember_description"}
        
        <div class="text-center">
        <!-- IF vt_topmember_enoughcredits -->
          <a href="{top.virtual_path}index.php?a=start&t=set_topmember" class="btn btn-success"> {vldthemes:a="lang",key="topmember_become"}</a>
        <!-- ELSE -->
          <a href="{top.virtual_path}account/upgrade/credits/" class="btn btn-success">{vldthemes:a="lang",key="topmember_buycredits"}</a>
        <!-- ENDIF -->
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">{vldthemes:a="lang",key="close"}</button>

      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->