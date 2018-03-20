<!-- IF session.can_unblock_members AND top.active_module == "account_blocked" -->
	<a href="#" class="btn btn-danger btn-xs" onclick="javascript:confirmLink('{lang:"blocked","delete?"}', '{top.virtual_path}{member_delete_link}')" title="{lang:"blocked","delete"}">{lang:"blocked","delete"}</a>
<!-- ENDIF -->

<!-- IF session.can_delete_own_events_guests AND top.active_module == "account_events" -->
	<a class="btn btn-danger btn-xs" onclick="javascript:confirmLink('{lang:"events","deleteguest?"}', '{top.virtual_path}{member_delete_link}')" title="{lang:"events","deleteguest"}">{lang:"events","deleteguest"}</a>
<!-- ENDIF -->