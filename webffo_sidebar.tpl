<!-- IF active_module == "pictures" -->
<!-- IF orderby_box -->
<!-- INCLUDE pictures_sidebar.tpl -->
<!-- ENDIF -->
<!-- ELSEIF active_module == "videos" -->
<!-- IF orderby_box -->
<!-- INCLUDE videos_sidebar.tpl -->
<!-- ENDIF -->
<!-- ELSEIF active_module == "blogs" -->
<!-- IF orderby_box -->
<!-- INCLUDE blogs_sidebar.tpl -->
<!-- ENDIF -->
<!-- ENDIF -->

<!-- IF !loggedin -->

<div class="panel panel-success">
    <div class="panel-heading">{lang:"core","login_header"}</div>
    <div class="panel-body">
        <div class="xlogin xformtransform">
            <form method="post" class="clearfix" name="login" action="{virtual_path}{ifelse:settings.fancy_urls,"1","account/login/","index.php?m=account_login"}">
                <div class="form-group">
                    <input id="loginbox_username" maxlength="64" size="10" type="text" name="username" placeholder="{lang:"core","login_username"}" value="" class="form-control username" /></dd>
                </div>
                <div class="form-group">
                    <input id="loginbox_password" maxlength="32" size="10" type="password" name="password" placeholder="{lang:"core","login_password"}" value="" class="form-control password" /></dd>
                </div>

                <input type="submit" name="login" value="{lang:"core","login_submit"}" class="btn btn-sm btn-primary pull-right" />

                <label for="loginbox_nonxpcookie"> &nbsp;{lang:"core","login_remember_me"}
                    <input type="checkbox" name="nonxpcookie" value="1" class="xcheckbox pull-left" id="loginbox_nonxpcookie" />
                </label>

                <input type="hidden" name="islogin" value="1" />
                <div class="lostpass">{anchor:url1="account/lostpass/",url2="index.php?m=account_lostpass",name="core|login_forgot_pass"}</div>


            </form>
        </div>
    </div>
</div>

<!-- ENDIF -->


{news:limit=2,cache_time=0}


<!-- IF active_module == "homepage" -->
<div class="well hidden">
    {search:type="members",fields="gender1|gender2|age|country"}
</div>  
<!-- ELSE -->

<!-- ENDIF -->
{polls:polls=""}

<div class="hidden-xs">
    {banners:group="sidebar"}
</div>