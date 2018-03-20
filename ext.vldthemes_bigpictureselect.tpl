<div id="pictureselect" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{vldthemes:a="lang",key="select_bigpicture"}</h4>
      </div>
      <div class="modal-body">
          {pictures:member_id=session.member_id,public="1",limit="100",template="ext.vldthemes_bigpicturelist.tpl"}
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">{vldthemes:a="lang",key="close"}</button>

      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->