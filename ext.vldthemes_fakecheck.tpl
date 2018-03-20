<!-- IF fakecheck_status == "2" OR member_id == session.member_id -->
<div class="panel panel-default ">
    <div class="panel-heading">{vldthemes:a="lang",key="fakecheck_title"}</div>
    <div class="panel-body">
       
        <!-- IF fakecheck_status == "2" -->
          <div class="text-center">
            <img src="{virtual_tpl_path}{session.template}/images/fakecheck.png">    
          </div>
        <!-- ENDIF -->
        
        <!-- IF fakecheck_status == "1" -->
            <span style="font-size:48px;margin:0 0 10px 15px" class="pull-right glyphicon glyphicon-time"></span>
            {vldthemes:a="lang",key="fakecheck_status_wait"}          
        <!-- ENDIF -->
        
        <!-- IF member_id == session.member_id AND fakecheck_status == "0" -->     
            <a href="#" onclick="return fakecheck_picture()" class="btn btn-block btn-default">{vldthemes:a="lang",key="fakecheck_open"} </a> 
        <!-- ENDIF -->
    </div>
</div>
<!-- ENDIF -->
<script type="text/javascript">
  function fakecheck_picture() {
  $.get(virpath+'index.php?a=start&t=upload_fakecheck',function(data){
    $('body').append($(data));
    $('#fakecheckselect').modal('show');
  });

  return false;
}    
</script>