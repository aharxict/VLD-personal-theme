<!-- IF member_type_label == "members" -->
	<!-- IF profile_field_age_name -->
           <div class="">{lang:"core","userinfo_age"}: {profile_field_age_value_years}</div>
	<!-- ENDIF -->
	<!-- IF profile_field_gender1_name -->
	   <div class="">{lang:"core","userinfo_gender"}: {profile_field_gender1_value}</div>
	<!-- ENDIF -->
	<!-- IF profile_field_gender2_name -->
	   <div class="">{lang:"core","userinfo_seeking"}: {profile_field_gender2_value}</div>
	<!-- ENDIF -->
	<!-- IF profile_field_country_name OR profile_field_city_name -->
	   <div class="">{lang:"core","userinfo_location"}: {profile_field_country_value}<!-- IF profile_field_city_value -->, {profile_field_city_value}<!-- ENDIF --></div>
	<!-- ENDIF -->
<!-- ENDIF --->