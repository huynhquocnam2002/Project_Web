<%@ page import="vn.edu.hcmuaf.fit.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.DB.DataDB" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet"/>

    <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon"/>


    <!-- Carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>

    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="css/styles.css"/>

    <title>JC Phone Shop</title>
</head>

<body>
<!-- Header -->
<!-- Header_top -->
<header id="header" class="header">
    <div class="navigation">
        <div class="container">
            <nav class="nav">
                <div class="nav__hamburger">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-menu"></use>
                    </svg>
                </div>

                <div class="nav__logo">
                    <a href="/" class="scroll-link">
                        JC SHOP
                    </a>
                </div>

                <div class="nav__menu">
                    <div class="menu__top">
                        <span class="nav__category">PHONE</span>
                        <a href="#" class="close__toggle">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-cross"></use>
                            </svg>
                        </a>
                    </div>
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#header" class="nav__link scroll-link">Trang ch???</a>
                        </li>
                        <li class="nav__item">
                            <a href="#category" class="nav__link scroll-link">S???n ph???m</a>
                        </li>
                        <li class="nav__item_seach">
                            <input class="input_seach" id="input_seach" type="text" placeholder="seach...">
                            <div class="nav__icons">
                                <a href="#" class="icon__item" id="icon__item_seach">
                                    <svg class="icon__search">
                                        <use xlink:href="phone_nam/images/sprite.svg#icon-search"></use>
                                    </svg>
                                </a>
                            </div>
                        </li>
                        <li class="nav__item">

                            <div class="nav__item_hotro">
                                <a href="#hotro" class="nav__link scroll-link">HOTLINE H??? TR???</a> <br>
                                <a href="#hotro" class="nav__link scroll-link">0999.999.999</a>
                            </div>
                        </li>

                    </ul>
                </div>
                <%if (session.getAttribute("user") == null) {%>
                <div class="nav__icons">
                    <a href="/LoginServlet" class="icon__item">
                        <svg class="icon__user">
                            <use xlink:href="phone_nam/images/sprite.svg#icon-user"></use>
                        </svg>
                    </a>

                    <div class="nav__item_user" id="nav__item_user">
                        <a href="/LoginServlet" class="nav__link scroll-link">????ng Nh???p /</a>
                        <a href="register.jsp" class="nav__link scroll-link">????ng K??</a><br>
                        <a href="" class="nav__link scroll-link">Th??nh Vi??n</a>
                    </div>
                </div>
                <%
                } else {
                    User user = (User) session.getAttribute("user");
                %>
                <div class="nav__icons">
                    <a href="/html/user.html" style="padding: 0; height: 4rem; width: 4rem" class="icon__item">
                        <img src="<%=user.getImg()%>"
                             style="width: 4rem; height: 4rem; object-fit: cover; border-radius: 50%" alt="img">
                    </a>

                    <div class="nav__item_user" style="font-size: 1.2rem" id="nav__item_user1">
                        <a href="html/user.html" class="nav__link scroll-link"
                           style="line-height: 2"><%=user.getName()%>
                        </a><br>
                        <a href="" class="nav__link scroll-link">Th??nh Vi??n</a>
                    </div>
                </div>
                <%}%>

                <%
                    if (session.getAttribute("user") != null) {
                        User u = (User) session.getAttribute("user");
                        int numOfCartItems= DataDB.getCartItems(u).size();
                %>
                <div class="nav__icons" id="nav__item_giohang">
                    <a href="/phone_nam/login.html" class="icon__item">
                        <svg class="icon__cart">
                            <use xlink:href="phone_nam/images/sprite.svg#icon-shopping-basket"></use>
                        </svg>

                        <span id="cart__total"><%=numOfCartItems%></span>
                    </a>
                    <a href="/phone_nam/login.html" class="nav__link_giohang">Gi??? H??ng</a>
                </div>
                <%}%>
            </nav>
        </div>
    </div>
</header>
<!-- Header_danhmuc -->
<header id="Header_danhmuc" class="Header_danhmuc">
    <div class="navigation_danhmuc">
        <div class="container">
            <nav class="nav">
                <div class="nav__hamburger">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-menu"></use>
                    </svg>
                </div>

                <ul class="nav__list" id="nav__list_DANHMUC">


                    <div class="nav__icons_danhmuc">
                        <a href="../html/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/oplung.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="../html/indexseach.html" class="scroll-linkDANHMUC">???P L??NG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/sacduphong.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">S???C D??? PH??NG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/tainghe.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">TAI NGHE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/capsac.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">C???C S???C</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/kinhcuongluc.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">K??NH C?????NG L???C</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/apple1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">PH??? KI???N APPLE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/gaydienthoai.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">GI?? ????? ??I???N THO???I</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/bag1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">T??I CH???NG N?????C</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc">
                        <a href="/phone_nam/indexseach.html" class="icon__item">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/khac.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">PH??? KI???N KH??C</a>
                        </li>
                    </div>


                </ul>

            </nav>
        </div>
    </div>


    <!-- Hero -->
    <div class="hero">
        <div class="glide" id="glide_1">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides">
                    <li class="glide__slide">
                        <div class="hero__center">
                            <div class="hero__left">
                                <span class="">Ngu???n c???m h???ng n??m 2022</span>
                                <h1 class="">PIN D??? PH??NG D??NH CHO B???N!</h1>
                                <p>M???u S???c D??? Ph??ng B??n Ch???y nh???t c???a n??m</p>
                                <a href="/phone_chuong/product.html">
                                    <button class="hero__btn">MUA NGAY</button>
                                </a>
                            </div>
                            <div class="hero__right">
                                <div class="hero__img-container">
                                    <img class="banner_01" src="phone_nam/images/sacduphong1.png" alt="banner2"/>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="glide__slide">
                        <div class="hero__center">
                            <div class="hero__left">
                                <span>Ngu???n c???m h???ng n??m 2022</span>
                                <h1>ARIPODS 2 CH??NH H??NG APPLE</h1>
                                <p>Gi???m Ngay 30% Khi Mua H??ng Tr?????c Ng??y 22/12/2022</p>
                                <a href="/phone_chuong/product.html">
                                    <button class="hero__btn">MUA NGAY</button>
                                </a>
                            </div>
                            <div class="hero__right">
                                <img class="banner_02" src="phone_nam/images/tainghe6.png" alt="banner2"/>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="glide__bullets" data-glide-el="controls[nav]">
                <button class="glide__bullet" data-glide-dir="=0"></button>
                <button class="glide__bullet" data-glide-dir="=1"></button>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
                <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-left2"></use>
                    </svg>
                </button>
                <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                    <svg>
                        <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-right2"></use>
                    </svg>
                </button>
            </div>
        </div>
    </div>
</header>
<!-- End Header -->

<!-- Main -->
<main id="main">
    <div class="container">
        <!-- Collection -->
        <section id="collection" class="section collection">
            <div class="collection__container" data-aos="fade-up" data-aos-duration="1200">
                <div class="collection__box">
                    <div class="img__container">
                        <img class="collection_02" src="phone_nam/images/collection_02.png" alt="">
                    </div>
                    <div class="collection__content">
                        <div class="collection__data">
                            <span>Ra m???t v???i nhi???u m??u s???c m???i</span>
                            <h1>HEADPHONES</h1>
                            <a href="/phone_chuong/product.html">MUA NGAY</a>
                        </div>
                    </div>
                </div>
                <div class="collection__box">
                    <div class="img__container">
                        <img class="collection_01" src="phone_nam/images/sacnhanh1.png" alt="">
                    </div>
                    <div class="collection__content">
                        <div class="collection__data">
                            <span>?????t tr?????c s??n ph???m</span>
                            <h1>S???C SI??U NHANH</h1>
                            <a href="/phone_chuong/product.html">MUA NGAY</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- DANH MUC S??N PH???M -->
        <section class="section section-danhmuc">
            <div>

                <ul class="nav__list" id="nav__list_DANHMUC11">


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/oplung.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">???P L??NG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/sacduphong.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">S???C D??? PH??NG</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/tainghe.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">TAI NGHE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/capsac.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">C???C S???C</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/kinhcuongluc.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">K??NH C?????NG L???C</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/apple1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">PH??? KI???N APPLE</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/gaydienthoai.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">GI?? ????? ??I???N THO???I</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/bag1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">T??I CH???NG N?????C</a>
                        </li>
                    </div>


                </ul>
            </div>
            <div>

                <ul class="nav__list" id="nav__list_DANHMUC1">


                    <div class="nav__icons_danhmuc1">
                        <a href="/phone_nam/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/oplung.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/phone_nam/indexseach.html" class="scroll-linkDANHMUC">TH??? NH???</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/sacduphong.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">C??P CHUY???N ?????I</a>
                        </li>
                    </div>


                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/tainghe.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">MIC PH???</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/capsac.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">????N MINI</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/kinhcuongluc.jpg"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">KH??N LAU M??N H??NH</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/apple1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href=/phone_nam/indexseach.html" class="scroll-linkDANHMUC">MI???NG D??N DECOR</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/gaydienthoai.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">D???NG C??? V??? SINH</a>
                        </li>
                    </div>

                    <div class="nav__icons_danhmuc1">
                        <a href="/html/indexseach.html" class="icon__item1">
                            <img class="icon__itemdanhmuc" src="phone_nam/icon/bag1.png"></img>
                        </a>
                        <li class="nav__item">
                            <a href="/html/indexseach.html" class="scroll-linkDANHMUC">B??T C???M ???NG</a>
                        </li>
                    </div>

                </ul>
            </div>
        </section>


        <!-- Latest Products -->
        <section class="section latest__products" id="latest">
            <div class="title__container">
                <div class="section__title active" data-id="Latest Products">
                    <span class="dot"></span>
                    <h1 class="primary__title">S??N PH???M HOT</h1>
                </div>
            </div>
            <div class="container" id="containersale" data-aos="fade-up" data-aos-duration="1200">
                <div class="glide" id="glide_2">
                    <div class="Flashsale">
                        <div class="Flashsale-left">
                            <div class="Flashsale-phukien">Ph??? Ki???n</div>
                            <div class="Flashsale-title">Flash Sale</div>
                        </div>
                        <div class="Flashsale-time">
                            <ul class="Flashsale-time_list">
                                <li class="Flashsale-time_list_cham">B???t ?????u sau</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">00</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">36</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">29</li>
                                <li class="Flashsale-time_list_cham">:</li>
                                <li class="Flashsale-time_list_time">57</li>
                            </ul>
                        </div>
                    </div>
                    <div class="glide__track" data-glide-el="track">
                        <ul class="glide__slides latest-center">
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/gay1.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>G???y t??? s?????ng nh???p kh???u</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>500.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/taingh6.webp" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>Tai Nghe Kh??ng D??y</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>9.800.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/sacdp1.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>S???c D??? Ph??ng Phi???n B???n Gi???i H???n</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>3.200.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/gay2.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>G???y T??? S?????ng China</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>700.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/op1.webp" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>???p L??ng Si??u C???ng</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>900.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/cuongluc1.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>K??nh C?????ng L???c KingKong</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>600.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/tainghe5.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>T???i Nghe D??nh Cho ??i???n Tho???i</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>6.600.000</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/sacdp3.jpg" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>S???c D??? Ph??ng Nh???p Kh???u</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>5.500.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="product">
                                    <div class="product__header">
                                        <img src="phone_nam/images_phukien/op3.png" alt="product">
                                    </div>
                                    <div class="product__footer">
                                        <h3>???p L??ng Trong su???t</h3>
                                        <div class="rating">
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-full"></use>
                                            </svg>
                                            <svg>
                                                <use xlink:href="phone_nam/images/sprite.svg#icon-star-empty"></use>
                                            </svg>
                                        </div>
                                        <div class="product__price">
                                            <h4>2.100.000 VN??</h4>
                                        </div>
                                        <a href="#">
                                            <button type="submit" class="product__btn">Th??m v??o gi??? h??ng</button>
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <a data-tip="Quick View" data-place="left"
                                               href="/phone_chuong/product.html">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-eye"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Wishlist" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-heart-o"></use>
                                                </svg>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-tip="Add To Compare" data-place="left" href="#">
                                                <svg>
                                                    <use xlink:href="phone_nam/images/sprite.svg#icon-loop2"></use>
                                                </svg>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                        </ul>
                    </div>

                    <div class="glide__arrows" data-glide-el="controls">
                        <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-left2"></use>
                            </svg>
                        </button>
                        <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-right2"></use>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <section class="category__section section" id="category">
            <div class="tab__list">
                <div class="title__container tabs">
                    <div class="section__titles category__titles ">
                        <div class="section__title filter-btn active" data-id="All Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">T???t c???</h1>
                        </div>
                    </div>
                    <div class="section__titles">
                        <div class="section__title filter-btn" data-id="Trending Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">Xu h?????ng</h1>
                        </div>
                    </div>

                    <div class="section__titles">
                        <div class="section__title filter-btn" data-id="Special Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">?????c bi???t</h1>
                        </div>
                    </div>

                    <div class="section__titles">
                        <div class="section__title filter-btn" data-id="Featured Products">
                            <span class="dot"></span>
                            <h1 class="primary__title">B??n ch???y</h1>
                        </div>
                    </div>

                </div>
            </div>
            <div class="category__container" data-aos="fade-up" data-aos-duration="1200">
                <div class="category__center"></div>
            </div>

        </section>

        <!-- Facility Section -->
        <section class="facility__section section" id="facility">
            <div class="container">
                <div class="facility__contianer" data-aos="fade-up" data-aos-duration="1200">
                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-airplane"></use>
                            </svg>
                        </div>
                        <p>MI???N PH?? V???N CHUY???N TO??N C???U</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-credit-card-alt"></use>
                            </svg>
                        </div>
                        <p>HO??N TI???N 100%</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-credit-card"></use>
                            </svg>
                        </div>
                        <p>NHI???U H??NH TH???C THANH TO??N</p>
                    </div>

                    <div class="facility__box">
                        <div class="facility-img__container">
                            <svg>
                                <use xlink:href="phone_nam/images/sprite.svg#icon-headphones"></use>
                            </svg>
                        </div>
                        <p>H??? TR??? 24/7</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial Section -->
        <section class="section testimonial" id="testimonial">
            <div class="testimonial__container">
                <div class="glide" id="glide_4">
                    <div class="glide__track" data-glide-el="track">
                        <ul class="glide__slides">
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="profile">
                                    </div>
                                    <p>S??? d???ng m?? gi???m 80% ph?? v???n chuy???n (t???i ??a 15K) ????n h??ng t??? 0?? cho s???n ph???m thu???c
                                        gian h??ng Freeship Extra.
                                        ????n v??? v???n chuy???n kh??? d???ng: Nhanh
                                        ??p d???ng tr??n ???ng d???ng JC SHOP.
                                        M?? ch??? ???????c ho??n theo quy ?????nh c???a JC SHOP.
                                        S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i
                                        ho???c
                                        khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/profile.php?id=100015179019358">
                                            <h3>GI???M 15%</h3>
                                        </a>
                                        <span>?????n h???t ng??y 22/11/2022</span>
                                    </div>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="profile">
                                    </div>
                                    <p>S??? d???ng m?? gi???m 50% ph?? v???n chuy???n (t???i ??a 30K) ????n h??ng t??? 0?? cho s???n ph???m thu???c
                                        gian h??ng Freeship Extra.
                                        ????n v??? v???n chuy???n kh??? d???ng: Nhanh
                                        ??p d???ng tr??n ???ng d???ng JC SHOP.
                                        M?? ch??? ???????c ho??n theo quy ?????nh c???a JC SHOP.
                                        S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i
                                        ho???c
                                        khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/Nam.74.76.76">
                                            <h3>GI???M 30k</h3>
                                        </a>
                                        <span>?????n h???t ng??y 22/12/2022</span>
                                    </div>
                                </div>
                            </li>
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="profile">
                                    </div>
                                    <p>M?? CCBDPBL1022A ho??n 5% t???i ??a 100K Xu cho ????n h??ng h???p l??? t??? 50K t??? shop Ho??n Xu
                                        Xtra tr??n ???ng d???ng Shopee. HSD: 28/10/2022 23:59. S??? l?????ng c?? h???n. M???i kh??ch
                                        h??ng
                                        ch??? s??? d???ng 1 l???n. S??? Shopee Xu ho??n ???????c t??nh tr??n gi?? tr??? ????n h??ng (sau khi
                                        tr???
                                        khuy???n m??i, s??? Shopee Xu v?? kh??ng bao g???m ph?? v???n chuy???n).</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/canh.nguyenhua">
                                            <h3>GI???M 100k</h3>
                                        </a>
                                        <span>?????n h???t ng??y 22/12/2022</span>
                                    </div>
                                </div>

                            </li>
                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="">
                                    </div>
                                    <p>S??? d???ng m?? mi???n ph?? v???n chuy???n cho sa??n ph????m thu????c gian ha??ng FreeShip Xtra:
                                        + Mi????n phi?? v????n chuy????n t????i ??a 15,000?? cho ????n ha??ng t???? 50,000??.
                                        + Mi???n ph?? v???n chuy???n t???i ??a 25,000?? cho ????n h??ng t??? 150,000?? d??nh ri??ng gian
                                        h??ng
                                        qu???c t???.
                                        + Mi????n phi?? v????n chuy????n t????i ??a 70,000?? cho ????n ha??ng t???? 300,000??.
                                        + Mi???n ph?? v???n chuy???n t???i ??a 25,000?? cho ????n h??ng t??? 200,000?? d??nh ri??ng gian
                                        h??ng
                                        trong n?????c ( ch??? ??p d???ng v??o th??? 4 h??ng tu???n ).
                                        ????n v??? v???n chuy???n kh??? d???ng: Nhanh
                                        S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i
                                        ho???c
                                        khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/profile.php?id=100024761910958">
                                            <h3>MI???N PH?? V???N CHUY???N</h3>
                                        </a>
                                        <span>?????n h???t ng??y 22/12/2022</span>
                                    </div>
                                </div>
                            </li>

                            <li class="glide__slide">
                                <div class="testimonial__box">
                                    <div class="client__image">
                                        <img src="phone_nam/img/voucher2.png" alt="">
                                    </div>
                                    <p>S??? d???ng m?? mi???n ph?? v???n chuy???n cho ????n ha??ng tho??a ??i????u ki????n ??u ??a??i ta??i ???ng
                                        d???ng
                                        JC SHOP .
                                        K??nh v????n chuy????n kha?? du??ng: Nhanh.
                                        Ch??? ??p d???ng cho m???t s??? ng?????i b??n tham gia ch????ng tr??nh Ho??n Xu Xtra, Freeship
                                        Xtra,
                                        JC SHOP Mall.
                                        Ma?? chi?? ????????c hoa??n theo quy ??i??nh cu??a JC SHOP
                                        S??? l?????t s??? d???ng c?? h???n, ch????ng tr??nh v?? m?? c?? th??? k???t th??c khi h???t l?????t ??u ????i
                                        ho???c
                                        khi h???t h???n ??u ????i, tu??? ??i???u ki???n n??o ?????n tr?????c.</p>
                                    <div class="client__info">
                                        <a href="https://www.facebook.com/songchongtao.thichet/">
                                            <h3>MI???N PH?? 1 ????N H??NG</h3>
                                        </a>
                                        <span>di???n ra v??o ng??y 30 h??ng th??ng</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="glide__bullets" data-glide-el="controls[nav]">
                        <button class="glide__bullet" data-glide-dir="=0"></button>
                        <button class="glide__bullet" data-glide-dir="=1"></button>
                        <button class="glide__bullet" data-glide-dir="=2"></button>
                        <button class="glide__bullet" data-glide-dir="=3"></button>
                        <button class="glide__bullet" data-glide-dir="=4"></button>
                    </div>
                </div>
            </div>
        </section>

        <!--New Section  -->
        <section class="section news" id="news">
            <div class="container">
                <div class="title__container">
                    <div class="section__titles">
                        <div class="section__title active">
                            <span class="dot"></span>
                            <h1 class="primary__title">Tin T???c</h1>
                        </div>
                    </div>
                </div>
                <div class="news__container">
                    <div class="glide" id="glide_5">
                        <div class="glide__track" data-glide-el="track">
                            <ul class="glide__slides">
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news1.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Tr????ng T??ng B???ng Sale C???c L???n</h3>
                                            <span>By Admin Nam</span>
                                            <p>S??? nhi???t t??nh v?? quy c??ch ph???c v??? chuy??n nghi???p t???i
                                                JC PHONE khi???n ca ngh??? s?? r???t h??i l??ng. C??c ngh??? s?? n???i ti???ng cho bi???t
                                                r???t
                                                l?? an t??m h??n,...</p>
                                            <a href="#">
                                                <button>Xem Th??m</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news2.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Tr????ng T??ng B???ng Sale C???c L???n</h3>
                                            <span>By Admin C???nh</span>
                                            <p>S??? nhi???t t??nh v?? quy c??ch ph???c v??? chuy??n nghi???p t???i
                                                JC PHONE khi???n ca ngh??? s?? r???t h??i l??ng. C??c ngh??? s?? n???i ti???ng cho bi???t
                                                r???t
                                                l?? an t??m h??n,...</p>
                                            <a href="#">
                                                <button>Xem Th??m</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news3.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Tr????ng T??ng B???ng Sale C???c L???n</h3>
                                            <span>By Admin Thu???n</span>
                                            <p>S??? nhi???t t??nh v?? quy c??ch ph???c v??? chuy??n nghi???p t???i
                                                JC PHONE khi???n ca ngh??? s?? r???t h??i l??ng. C??c ngh??? s?? n???i ti???ng cho bi???t
                                                r???t
                                                l?? an t??m h??n,...</p>
                                            <a href="#">
                                                <button>Xem Th??m</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news4.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Tr????ng T??ng B???ng Sale C???c L???n</h3>
                                            <span>By Admin Bi??n</span>
                                            <p>S??? nhi???t t??nh v?? quy c??ch ph???c v??? chuy??n nghi???p t???i
                                                JC PHONE khi???n ca ngh??? s?? r???t h??i l??ng. C??c ngh??? s?? n???i ti???ng cho bi???t
                                                r???t
                                                l?? an t??m h??n,...</p>
                                            <a href="#">
                                                <button>Xem Th??m</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="glide__slide">
                                    <div class="new__card">
                                        <div class="card__header">
                                            <img src="phone_nam/images/news5.jpg" alt="">
                                        </div>
                                        <div class="card__footer">
                                            <h3>Khai Tr????ng T??ng B???ng Sale C???c L???n</h3>
                                            <span>By Admin Ho??i</span>
                                            <p>S??? nhi???t t??nh v?? quy c??ch ph???c v??? chuy??n nghi???p t???i
                                                JC PHONE khi???n ca ngh??? s?? r???t h??i l??ng. C??c ngh??? s?? n???i ti???ng cho bi???t
                                                r???t
                                                l?? an t??m h??n,...</p>
                                            <a href="#">
                                                <button>Xem Th??m</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>


                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- NewsLetter -->
        <section class="section newsletter" id="contact">
            <div class="container">
                <div class="newsletter__content">
                    <div class="newsletter__data">
                        <h3>THEO D??I B???N TIN JC-TEAM</h3>
                        <p>H??y ????ng k?? ????? c?? th??? bi???t ???????c nh???ng voucher, nh???ng s???n ph???m m???i s???m nh???t!!</p>
                    </div>
                    <form action="#">
                        <input type="email" placeholder="Nh???p ?????a ch??? Email c???a b???n" class="newsletter__email">
                        <a class="newsletter__link" href="#">????ng K??</a>
                    </form>
                </div>
            </div>
        </section>

    </div>
</main>

<!-- End Main -->

<!-- Footer -->
<footer id="footer" class="section footer">
    <div class="container">
        <div class="footer__top">
            <div class="footer-top__box">
                <h3>B??? SUNG</h3>
                <a href="/phone_nam/htmlfooter/nhanhieu.html">Nh??n hi???u</a>
                <a href="/phone_nam/htmlfooter/phieuquatang.html">Phi???u qu?? t???ng</a>
                <a href="/phone_nam/htmlfooter/chinhanh.html">Chi nh??nh</a>
                <a href="#">?????c bi???t</a>
                <a href="/phone_nam/htmlfooter/sodoweb.html">S?? ????? trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>TH??NG TIN</h3>
                <a href="/phone_nam/htmlfooter/vechungtoi.html">V??? ch??ng t??i</a>
                <a href="/phone_nam/htmlfooter/chinhsachbaomat.html">Ch??nh s??ch b???o m???t</a>
                <a href="/phone_nam/htmlfooter/dieukhoanvadieukien.html">C??c ??i???u kho???n v?? ??i???u ki???n</a>
                <a href="/phone_nam/htmlfooter/lienhechungtoi.html">Li??n h??? ch??ng t??i</a>
                <a href="/phone_nam/htmlfooter/sodoweb.html">S?? ????? trang Web</a>
            </div>
            <div class="footer-top__box">
                <h3>T??I KHO???N C???A T??I</h3>
                <a href="/css/login.css">T??i kho???n c???a t??i</a>
                <a href="/css/login.css">L???ch s??? ????n h??ng</a>
                <a href="/css/login.css">Danh s??ch mong mu???n</a>
                <a href="#">Cung c???p th??ng tin</a>
                <a href="/html/home.html">Quay l???i</a>
            </div>
            <div class="footer-top__box">
                <h3>CONTACT US</h3>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-location"></use>
              </svg>
            </span>
                    <a
                            href="https://www.google.com/maps/dir/10.8840587,106.7833045/t%C3%B2a+b5+ktx+khu+b+%C4%91hqg+tphcm/@10.8838766,106.7809145,17z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3174d890227de92d:0x99150888f275361b!2m2!1d106.7829712!2d10.8839777">
                        T??a B5, KTX_B ??HQG TPHCM, Linh Trung, Th??? ?????c, TPHCM</a>
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
                    JC-PHONEcompany@gmail.com
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
                    08.999.999.99
                </div>
                <div>
            <span>
              <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-paperplane"></use>
              </svg>
            </span>
                    TO??N VI???T NAM
                </div>
            </div>
        </div>
    </div>
    <div class="footer__bottom">
        <div class="footer-bottom__box">

        </div>
        <div class="footer-bottom__box">

        </div>
    </div>
    </div>
</footer>
<!-- End Footer -->

<!-- PopUp -->
<div class="popup hide__popup">
    <div class="popup__content">
        <div class="popup__close">
            <svg>
                <use xlink:href="phone_nam/images/sprite.svg#icon-cross"></use>
            </svg>
        </div>
        <div class="popup__left">
            <div class="popup-img__container">
                <img class="popup__img" src="phone_nam/images/popup.jpg" alt="popup">
            </div>
        </div>
        <div class="popup__right">
            <div class="right__content">
                <h1>Nh???n phi???u gi???m <span>30%</span> gi??</h1>
                <p>????ng k?? nh???n b???n tin c???a JC-Team v?? ti???t ki???m 30% cho l???n mua h??ng ti???p theo. Kh??ng c?? th?? r??c, H???a
                    lu??n ??,
                    n??i l??o s??n r??ng lu??n ???oo!!
                </p>
                <form action="#">
                    <input type="email" placeholder="Nh???p Email c???a b???n..." class="popup__form">
                    <a href="#">????ng k??</a>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Go To -->

<a href="#header" class="goto-top scroll-link">
    <svg>
        <use xlink:href="phone_nam/images/sprite.svg#icon-arrow-up"></use>
    </svg>
</a>

<!-- Glide Carousel Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<!-- Animate On Scroll -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<!-- Custom JavaScript -->
<%--<script src="phone_nam/js/products.js"></script>--%>
<%--<script src="phone_nam/js/index.js"></script>--%>
<script src="js/slider.js"></script>

</body>

</html>