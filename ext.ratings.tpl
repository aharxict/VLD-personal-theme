<div class="ratingbox member_rating">
	<div class="selection" id="rating_{ext_rating_type}_box{ext_rating_item_id}" onmouseout="ratingstar_reset('{ext_rating_type}',{ext_rating_item_id})">
		<div id="rating_{ext_rating_type}_response{ext_rating_item_id}" <!-- IF ext_rating_force_locked -->title="{ext_rating_score}"<!-- ELSEIF ext_rating_locked -->title="{lang:"core","rating_submitted"}"<!-- ENDIF -->>
			<a onclick="submit_rating('{ext_rating_type}',{ext_rating_member_id},{ext_rating_item_id},1);return false;" onmouseover="ratingstar_toggle('{ext_rating_type}',{ext_rating_item_id},1);return false;" href="#" id="ratingstar{ext_rating_item_id}__1"></a><!--
			--><a onclick="submit_rating('{ext_rating_type}',{ext_rating_member_id},{ext_rating_item_id},2);return false;" onmouseover="ratingstar_toggle('{ext_rating_type}',{ext_rating_item_id},2);return false;" href="#" id="ratingstar{ext_rating_item_id}__2"></a><!--
			--><a onclick="submit_rating('{ext_rating_type}',{ext_rating_member_id},{ext_rating_item_id},3);return false;" onmouseover="ratingstar_toggle('{ext_rating_type}',{ext_rating_item_id},3);return false;" href="#" id="ratingstar{ext_rating_item_id}__3"></a><!--
			--><a onclick="submit_rating('{ext_rating_type}',{ext_rating_member_id},{ext_rating_item_id},4);return false;" onmouseover="ratingstar_toggle('{ext_rating_type}',{ext_rating_item_id},4);return false;" href="#" id="ratingstar{ext_rating_item_id}__4"></a><!--
			--><a onclick="submit_rating('{ext_rating_type}',{ext_rating_member_id},{ext_rating_item_id},5);return false;" onmouseover="ratingstar_toggle('{ext_rating_type}',{ext_rating_item_id},5);return false;" href="#" id="ratingstar{ext_rating_item_id}__5"></a>
		</div>
	</div>
	<!-- IF ext_rating_force_locked -->
		<div class="scores" <!-- IF ext_rating_hide_score -->style="display:none"<!-- ENDIF -->>
			{lang:"core","rating_score"}:
			<span id="rating_{ext_rating_type}_score{ext_rating_item_id}">{ext_rating_score}</span>
			{lang:"core","rating_votes"}:
			<span id="rating_{ext_rating_type}_votes{ext_rating_item_id}">{ext_rating_votes}</span>&nbsp;
		</div>
		<!-- IF ext_rating_hide_score -->&nbsp;<!-- ENDIF -->
	<!-- ELSE -->
		<div class="scores">
			{lang:"core","rating_score"}:
			<span id="rating_{ext_rating_type}_score{ext_rating_item_id}">{ext_rating_score}</span>
			{lang:"core","rating_votes"}:
			<span id="rating_{ext_rating_type}_votes{ext_rating_item_id}">{ext_rating_votes}</span>
		</div>
		<div style="display:none" class="progress" id="rating_{ext_rating_type}_progress{ext_rating_item_id}"></div>
	<!-- ENDIF -->
</div>
<script type="text/javascript" language="javascript">
    $(function() {
        ratingstar_reset('{ext_rating_type}', {ext_rating_item_id}<!-- IF ext_rating_locked -->, 1<!-- ENDIF -->);
    });
</script>
