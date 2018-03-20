<!-- IF app_message_type == "info" -->
  <div class="alert alert-success alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4>Hey!</h4> {app_message}
  </div>
  
<!-- ELSEIF app_message_type == "error" -->
  <div class="alert alert-danger alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4>Error!</h4> {app_message} 
  </div>

<!-- ENDIF -->
