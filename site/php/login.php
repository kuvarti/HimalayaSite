<?php 

 include "connection.php";
    session_start();

    $sifre_yanlis="";

    if(isset($_GET["lg-durum"]))
    {
        $sifre_yanlis="kullanıcı adı veya şifreniz yanlış";
    }

    


?>

<html>
    <head>
        <title></title>
    <link rel="stylesheet" type="text/css" href="CSS.css">
    <link rel="stylesheet" type="text/javascript" href="myJquery.js">
    <script src="jquery-3.6.0.min.js" ></script>
        <script>
           
           $(document).ready(function()
           {
           
            $('#lg-login-btn').click(function(){
                        
                        $('#login').css(
                       {
                            'display':'block',
                            'animation':'fade 1s'
                       }); 
                    
                       $('#register').css(
                       {
                            'display':'none'
                       });

                       $('#lg-register-btn').css(
                           {
                                'background-color':'#eee'
                           });

                       $('#lg-login-btn').css(
                           {
                                'background-color':'white'
                           });
            });

               $('#lg-register-btn').click(function(){
                   $('#login').css(
                       {
                            'display':'none'
                       }); 
                    

                       $('#register').css(
                       {
                            'display':'block',
                            'animation':'fade 1s'
                       }); 

                       $('#lg-register-btn').css(
                           {
                               'background-color':'white'
                           });

                       $('#lg-login-btn').css(
                           {
                                'background-color':'#eee'
                           });
                });
            });
        </script>

    </head>

    <body>
        <div id="login-container">
            <div id="lg-logo-box"><a href="index.php"><span id="lg-logo">Himalaya</span></a></div>

            <div id="main-box">
                
                <div id="login-register"><button id="lg-login-btn">Giriş yap</button><button id="lg-register-btn">Kayıt ol</button></div>
                
                <div id="login">
                    <span style="color:red; margin-left:10px; "><?php echo $sifre_yanlis; ?></span>
                    
                    <form action="login_phpFunctions.php" method="POST" >
                        <input class="login-txt-box" name="kadi_txt" type="text" placeholder="E-posta adresi">
                        <input class="login-txt-box" name="sifre_txt" type="text"  placeholder="Şifre">
                        
                        <button  id="giris-btn">Giriş Yap</button>
                    </form>


                    <span id="sif-unuttum">Şifremi Unuttum</span><br>

                </div>

                <div id="register">
                      <form action="login_phpFunctions.php" method="Post">
                        <input class="register-txt" name="isim" type="text" placeholder="Ad">    <!--<input class="as-txt" type="text" placeholder="Soyad">-->
                        <input class="register-txt" name="email" type="text" placeholder="E-posta adresi">
                        <input class="register-txt" name="sifre" type="text" placeholder="Şifre">

                        <input id="register-cb" type="checkbox"> <span id="gs">Gizlilik Sözleşmesini okudum onaylıyorum.</span>

                        <button id="giris-btn"> Üye ol </button>
                      </form>
                    <span id="register-info"></span>

                </div>
                <br>
                <span><a style="text-decoration:none; color:black; font-weight:bolder;" href="store_login.php">Mağaza girişi için tıklayın -></a></span>
            </div>

        </div>
    </body>
</html>