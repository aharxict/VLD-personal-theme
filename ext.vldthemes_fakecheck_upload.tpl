<div id="fakecheckselect" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{vldthemes:a="lang",key="fakecheck_title"}</h4>
        
      </div>
      <div class="modal-body">
          <p>{vldthemes:a="lang",key="fakecheck_intro",code=code}</p>
           <form action="{virtual_path}index.php?a=start&t=upload_fakecheck&do_upload=1" method="POST" enctype="multipart/form-data">
              <div class="margin-b-15">
                <input type="file" name="file">
              </div>
              <input type="submit" name="submit" class=" btn btn-success" value="{vldthemes:a="lang",key="fakecheck_upload"}">

            </form>
            
            <br>
  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">{vldthemes:a="lang",key="close"}</button>

      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->