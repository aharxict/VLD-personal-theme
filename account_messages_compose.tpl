<!-- INCLUDE header.tpl -->



<div class="container">
  <!-- INCLUDE message.tpl -->
</div>


<!-- IF hide_content != "1" -->

    <div style="min-height:500px" class="text-center margin-t-15 margin-b-15">
      <br>
      <br>
      <img class="loader" src="{virtual_tpl_path}{session.template}/media/loader.gif">
      <br>
      <br>
      <br><button class="btn btn-lg btn-success" onclick="showConversations({member_id})"><span class="glyphicon glyphicon-envelope"></span> {vldthemes:a="lang",key="conv_manual_open"}</button>
    </div>
    <script type="text/javascript">
      $(function(){
        showConversations({member_id});
      });
    </script>
<!-- ENDIF -->
     
<!-- INCLUDE footer.tpl -->
 
