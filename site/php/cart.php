<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="CSS.css" type="text/css">
        <script src="https://kit.fontawesome.com/c8dadfc9a6.js" crossorigin="anonymous"></script>
        <script>
             
        </script>
    </head>
    <body>

    <?php include 'top.php'; ?>

        <div id="cart-container">
            <div id="cart-content">
                <span id="cart-top-info">Sepetim <span id="cart-quantity-sum">X ürün</span></span>

                <div class="cart-product">
                    <img src="images\urun.jpg">

                    <div class="cart-product-info">
                        <span class="product_name">Ürünün ismi(Başlığı)</span></br>
                        Satıcı <span class="store_name">Mağazanın Adı</span></br>
                        <span class="price">Fiyat</span> TL
                    </div>

                    <div class="cart-product-quantity">
                        <button class="quantityUp-btn"><i class="fas fa-plus"></i></button>
                        <input type="text" value="1">
                        <button class="quantityDown-btn"><i class="fas fa-minus"></i></button>
                    </div>

                </div>
                
                <div class="cart-product">
                    <img src="images\urun.jpg">

                    <div class="cart-product-info">
                        <span class="product_name">Ürünün ismi(Başlığı)</span></br>
                        Satıcı <span class="store_name">Mağazanın Adı</span></br>
                        <span class="price">Fiyat</span> TL
                    </div>

                    <div class="cart-product-quantity">
                        <button class="quantityUp-btn"><i class="fas fa-plus"></i></button>
                        <input type="text" value="1">
                        <button class="quantityDown-btn"><i class="fas fa-minus"></i></button>
                    </div>

                </div>

                <div class="cart-product">
                    <img src="images\urun.jpg">

                    <div class="cart-product-info">
                        <span class="product_name">Ürünün ismi(Başlığı)</span></br>
                        Satıcı <span class="store_name">Mağazanın Adı</span></br>
                        <span class="price">Fiyat</span> TL
                    </div>

                    <div class="cart-product-quantity">
                        <button class="quantityUp-btn"><i class="fas fa-plus"></i></button>
                        <input type="text" value="1">
                        <button class="quantityDown-btn"><i class="fas fa-minus"></i></button>
                    </div>

                </div>
                

            </div>
            <div id="cart-info">
                <span>ÖDENECEK TUTAR</span>
                <div><span id="cart-info-sumPrice_wshipment">Fiyat</span> TL</div>
                <button id="cart-info-continue-btn">Alışverişi tamamla</button></br>
                <div id="cart-info-details">
                    <div id="cart-info-details-shipment"><div>Kargo</div><div><span id="shipment_price">ShipmentPrice</span> TL</div></div>
                    <div id="cart-info-details-sum"><div>Ürünler</div><div><span id="cart-info-sumPrice">SumPrice</span> TL</div></div>
                </div>
            </div>
        </div>

        <?php include 'featured.php'; ?>
            
    </body>
</html>