<!-- IF member_id != session.member_id AND vt_compatibility AND vt_compatibility > "50" -->
<div class="panel panel-default ">
    <div class="panel-heading">{vldthemes:a="lang",key="compatible_title"}</div>
    <div class="panel-body title {vt_cmpt_class} txt-lg text-center">
       
       <h2 class=" cp_pct"><i class="<!-- IF vt_compatibility >= "80" -->text-danger<!-- ENDIF --> glyphicon glyphicon-{vt_cmpt_icon}"></i> {vt_compatibility}%</h2>
       <p>{vt_cmpt_txt}</p>
    </div>
</div>
<!-- ENDIF -->
