<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SogukHavaDeposu.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style type="text/css">
.login-layout .widget-box.visible{display:block}.light-login .widget-box.login-box{background-color:#BCC6CF;background-color:rgba(100,110,120,.4)}.login-layout .widget-box.visible{visibility:visible;position:relative;z-index:auto;-moz-transform:scale(1,1) translate(0);-webkit-transform:scale(1,1) translate(0);-o-transform:scale(1,1) translate(0);-ms-transform:scale(1,1) translate(0);transform:scale(1,1) translate(0);transition:transform .3s ease;-moz-transition:-moz-transform .3s ease;-webkit-transition:-webkit-transform .3s ease;-o-transition:-o-transform .2s ease}.login-layout .widget-box{display:none;visibility:visible;position:static}.light-login .widget-box{padding:1px 1px 0;-webkit-box-shadow:0 0 2px 1px rgba(0,0,0,.12);box-shadow:0 0 2px 1px rgba(0,0,0,.12);border-bottom:1px solid rgba(50,50,50,.33)}.login-layout .widget-box{padding:0}.login-layout .widget-box{visibility:hidden;position:fixed;z-index:-5;border-bottom:none;box-shadow:none;padding:6px;background-color:#394557;-moz-transform:scale(0,1) translate(-150px);-webkit-transform:scale(0,1) translate(-150px);-o-transform:scale(0,1) translate(-150px);-ms-transform:scale(0,1) translate(-150px);transform:scale(0,1) translate(-150px)}.widget-box.no-border{border-width:0}.widget-box{margin-top:7px;margin-bottom:7px}.widget-box{padding:0;box-shadow:none;margin:3px 0;border:1px solid #CCC}.widget-box{-webkit-box-shadow:none}.no-border{border-width:0}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*{background:0 0!important;color:#000!important;box-shadow:none!important;text-shadow:none!important}.widget-body{background-color:#FFF}.login-layout .widget-box .widget-main{padding:16px}.login-layout .login-box .widget-main{padding-bottom:16px}.login-layout .widget-box .widget-main{padding:16px 36px 36px;background:#F7F7F7}.widget-main{padding:12px}.header.blue{border-bottom-color:#d5e3ef}h4.bigger{font-size:19px}.header{line-height:28px;margin-bottom:16px;margin-top:18px;padding-bottom:4px;border-bottom:1px solid #CCC}.blue{color:#478FCA!important}.lighter{font-weight:lighter}h4{font-size:18px}h4{font-weight:400}h4{font-family:"Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif}h4{font-size:18px}h4{margin-top:10px;margin-bottom:10px}h4{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}.header>.ace-icon{margin-right:2px}.green{color:#69AA46!important}.ace-icon{text-align:center}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.space-6{max-height:1px;min-height:1px;overflow:hidden;margin:6px 0 5px}fieldset{margin:0;min-width:0}fieldset{padding:0;border:0}.login-layout label{margin-bottom:11px}.block{display:block!important}label{max-width:none!important}label{font-weight:400;font-size:14px}label{display:inline-block;max-width:100%;margin-bottom:5px}label{font-weight:700}span.input-icon{display:inline-block}.input-icon{position:relative}.input-icon.input-icon-right>input{padding-left:6px;padding-right:24px}.input-icon>input{padding-left:24px;padding-right:6px}input[type=text]{border-radius:0!important;color:#858585;background-color:#FFF;border:1px solid #D5D5D5;padding:5px 4px 6px;font-size:14px;font-family:inherit;-webkit-box-shadow:none!important;box-shadow:none!important;-webkit-transition-duration:.1s;transition-duration:.1s}.form-control{border-radius:0;-webkit-box-shadow:none!important;box-shadow:none!important;color:#858585;background-color:#FFF;border:1px solid #D5D5D5}.form-control{width:100%;height:34px;padding:6px 12px;background-color:#fff;border:1px solid #ccc;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 1px rgba(0,0,0,.075);-webkit-transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s;-o-transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s;transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s}.form-control{font-size:14px;line-height:1.42857143;color:#555;display:block}.form-control{background-image:none}input{font-family:inherit;font-size:inherit;line-height:inherit}input{color:inherit;font:inherit;margin:0}.input-icon.input-icon-right>.ace-icon{left:auto;right:3px}.input-icon>.ace-icon{padding:0 3px;z-index:2;position:absolute;top:1px;bottom:1px;left:3px;line-height:30px;display:inline-block;color:#909090;font-size:16px}input[type=password]{border-radius:0!important;color:#858585;background-color:#FFF;border:1px solid #D5D5D5;padding:5px 4px 6px;font-size:14px;font-family:inherit;-webkit-box-shadow:none!important;box-shadow:none!important;-webkit-transition-duration:.1s;transition-duration:.1s}.space{max-height:1px;min-height:1px;overflow:hidden;margin:12px 0}.space-4{max-height:1px;min-height:1px;overflow:hidden;margin:4px 0 3px}.light-login .widget-box .toolbar{border-top-width:1px}.login-box .toolbar{background:#5090C1;border-top:2px solid #597597}.login-layout .widget-box .widget-body .toolbar>div>a{font-size:15px;font-weight:400;text-shadow:1px 0 1px rgba(0,0,0,.25)}.login-box .toolbar>div:first-child>a{margin-left:11px}.login-box .forgot-password-link{color:#FE9}a{color:#337ab7;text-decoration:none}a{text-decoration:underline}a{background-color:transparent}.login-box .toolbar>div:first-child+div>a{margin-right:11px}.login-box .user-signup-link{color:#CF7}</style>
</head>
<body class="login-layout light-login">
    <form id="form1" runat="server">
       
		
			<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green">Soğuk Hava Deposu Otomasyonu</i>
								</h1>
								<h4 class="blue" id="id-company-text">&nbsp;</h4>
							</div>

<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Kullanıcı Giriş Bilgileri
											</h4>

											<div class="space-6"></div>

											
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" id="txt_GirisKullanici" runat="server" class="form-control" placeholder="Kullanıcı Adı" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="txt_GirisSifre" runat="server" class="form-control" placeholder="Şifre" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
													
                                                        <asp:Button ID="btn_Giris" runat="server" Text="Giriş" CssClass="width-35 pull-right btn btn-sm btn-primary" OnClick="btn_Giris_Click" />
													</div>

													<div class="space-4"></div>
												</fieldset>
										

											

											<div class="space-6"></div>

											
										</div><!-- /.widget-main -->

									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->
	</div>
							</div>
						
					</div></div>
	</div>
        </div>
		<script type="text/javascript">
            if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
            jQuery(function ($) {
                $(document).on('click', '.toolbar a[data-target]', function (e) {
                    e.preventDefault();
                    var target = $(this).data('target');
                    $('.widget-box.visible').removeClass('visible');//hide others
                    $(target).addClass('visible');//show target
                });
            });



            //you don't need this, just used for changing background
            jQuery(function ($) {
                $('#btn-login-dark').on('click', function (e) {
                    $('body').attr('class', 'login-layout');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-light').on('click', function (e) {
                    $('body').attr('class', 'login-layout light-login');
                    $('#id-text2').attr('class', 'grey');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-blur').on('click', function (e) {
                    $('body').attr('class', 'login-layout blur-login');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'light-blue');

                    e.preventDefault();
                });

            });
		</script>
    </form>
</body>
</html>
