{vldthemes:a="start"}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- IF active_module == "member_profile" AND hide_content != "1" -->
	<title>{member_username} | {htmlentities:app_page} | {htmlentities:settings.app_title}</title>
<!-- ELSEIF (active_module == "member_albums" OR active_module == "member_pictures" OR active_module == "member_pictures_view") AND hide_content != "1" -->
	<!-- IF picture_description -->
		<title>{member_username} | {trim:picture_description,64} | {htmlentities:settings.app_title}</title>
	<!-- ELSEIF album_description -->
		<title>{member_username} | {trim:album_description,64} | {htmlentities:settings.app_title}</title>
	<!-- ELSE -->
		<title>{member_username} | {htmlentities:app_page} | {htmlentities:settings.app_title}</title>
	<!-- ENDIF -->
<!-- ELSEIF (active_module == "member_videos" OR active_module == "member_videos_view") AND hide_content != "1" -->
	<!-- IF video_description -->
		<title>{member_username} | {trim:video_description,64} | {htmlentities:settings.app_title}</title>
	<!-- ELSE -->
		<title>{member_username} | {htmlentities:app_page} | {htmlentities:settings.app_title}</title>
	<!-- ENDIF -->
<!-- ELSEIF (active_module == "member_audio" OR active_module == "member_friends" OR active_module == "member_guestbook" OR active_module == "member_gifts" OR active_module == "member_events") AND hide_content != "1" -->
	<title>{member_username} | {htmlentities:app_page} | {htmlentities:settings.app_title}</title>
<!-- ELSEIF (active_module == "member_blog" OR active_module == "member_blog_entry") AND hide_content != "1" -->
	<!-- IF entry_title -->
		<title>{member_username} | {trim:entry_title,64} | {htmlentities:settings.app_title}</title>
	<!-- ELSE -->
		<title>{member_username} | {htmlentities:app_page} | {htmlentities:settings.app_title}</title>
	<!-- ENDIF -->
<!-- ELSEIF (active_module == "events_details" OR active_module == "events_guests" OR active_module == "events_pictures") AND hide_content != "1" -->
	<!-- IF event_name -->
		<title>{event_name} | {htmlentities:app_page} | {htmlentities:settings.app_title}</title>
	<!-- ELSE -->
		<title>{htmlentities:app_page} | {htmlentities:settings.app_title}</title>
	<!-- ENDIF -->
<!-- ELSE -->
	<title>{htmlentities:app_page} | {htmlentities:settings.app_title}</title>
<!-- ENDIF -->
<!-- IF active_module == "pages" OR active_module == "news_view" -->
	<!-- IF app_description -->
		<meta name="description" content="{htmlentities:app_description}" >
	<!-- ELSE -->
		<meta name="description" content="{htmlentities:settings.app_description}" >
	<!-- ENDIF -->
	<!-- IF app_keywords -->
		<meta name="keywords" content="{htmlentities:app_keywords}" >
	<!-- ELSE -->
		<meta name="keywords" content="{htmlentities:settings.app_keywords}" >
	<!-- ENDIF -->
    <!-- ELSE -->
	<meta name="description" content="{htmlentities:settings.app_description}" >
	<meta name="keywords" content="{htmlentities:settings.app_keywords}" >
    <!-- ENDIF -->


    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




    <script type="text/javascript">
      var virpath  = '{virtual_path}';
      var vir_tpl_path  = '{virtual_tpl_path}{session.template}/';
      
    </script>
    
 
 
   <link rel="shortcut icon" href="{virtual_path}favicon.ico">  
   <link rel="stylesheet" href="{virtual_tpl_path}{session.template}/css/bootstrap_skins/{vldthemes:a="skin"}">

  <!-- IF settings.language_rtl -->
  
  <!-- ENDIF -->
  <!-- IF active_module == "news" AND settings.enable_news_feed -->
  <link rel="alternate" type="application/rss+xml" title="{htmlentities:settings.app_title} | {htmlentities:app_page}" href="{virtual_path}{ifelse:settings.fancy_urls,"1","news/rss/","index.php?m=news&p=rss"}" />
  <!-- ELSEIF (active_module == "member_blog" OR active_module == "member_blog_entry") AND settings.enable_blog_feed -->
  <link rel="alternate" type="application/rss+xml" title="{htmlentities:settings.app_title} | {htmlentities:app_page}" href="{virtual_path}{member_blog_rss_link}" />
  <!-- ELSEIF active_module == "member_guestbook" AND settings.enable_guestbook_feed -->
  <link rel="alternate" type="application/rss+xml" title="{htmlentities:settings.app_title} | {htmlentities:app_page}" href="{virtual_path}{member_guestbook_rss_link}" />
  <!-- ELSEIF active_module == "events" AND settings.enable_events_feed -->
  <link rel="alternate" type="application/rss+xml" title="{htmlentities:settings.app_title} | {htmlentities:app_page}" href="{virtual_path}{ifelse:settings.fancy_urls,"1","events/rss/","index.php?m=events&p=rss"}" />
  <!-- ENDIF -->
  
  <!-- IF active_module == "account_audio_edit" OR active_module == "account_pictures_edit" OR active_module == "account_events_pictures_edit" OR active_module == "account_videos_edit" OR active_module == "account_audio" OR active_module == "member_audio" OR active_module == "member_videos" OR active_module == "member_videos_view" -->
  <script type="text/javascript" src="{virtual_path}includes/js/swfobject.js"></script>
  <!-- ELSEIF loggedin -->
  <script type="text/javascript" src="{virtual_path}includes/js/swfobject.js"></script>
  <!-- ENDIF -->


</head>

<body class="{active_module} login_{loggedin}" <!-- IF loggedin AND settings.enable_chat AND session.can_chat -->onload="initChat({settings.chat_check_sec},'{session.username}',{session.sound_notify});"<!-- ENDIF -->>

<!-- INCLUDE header_navigation.tpl -->

<link rel="stylesheet" type="text/css" href="{virtual_tpl_path}{session.template}/css/style.css" />
<link rel="stylesheet" type="text/css" href="{virtual_tpl_path}{session.template}/css/custom.css" />
<!-- IF loggedin -->
<link rel="stylesheet" type="text/css" href="{virtual_tpl_path}{session.template}/css/style_login.css" />
<!-- ENDIF -->