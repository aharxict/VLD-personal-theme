<!-- INCLUDE header.tpl -->

<div style="min-height:500px" class="text-center margin-t-15 margin-b-15">
  <br>
  <br>
  <img class="loader" src="{virtual_tpl_path}{session.template}/media/loader.gif">
  <br>
  <br>
  <br><button class="btn btn-lg btn-success" onclick="showConversations()"><span class="glyphicon glyphicon-envelope"></span> {vldthemes:a="lang",key="conv_manual_open"}</button>
</div>
<script type="text/javascript">
  $(function(){
    showConversations(0);
  });
</script>
     
<!-- INCLUDE footer.tpl -->