<?php
//want to include category and sub-category//

include_once "app/models/category.php";
include_once "app/models/subcategory.php";



$cat = new category;
$categoryBeforeFetch =  $cat->selectAllData();
$categories = $categoryBeforeFetch->fetch_all(MYSQLI_ASSOC);
// print_r($categories);die;
$subcat = new  subCategory;



?>
<!-- header start -->
<header class="header-area gray-bg clearfix">
    <div class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-6">
                    <div class="logo">
                        <a href="index.php">
                            <img alt="" src="assets/img/logo/logo.png">
                        </a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-8 col-6">
                    <div class="header-bottom-right">

                    
                        <div class="main-menu">
                            <nav>
                                <ul>
                                    <li class="top-hover"><a href="index.php">home</a> </li> 
                                    <li><a href="shop.php">shop</a></li>
                                    <li class="mega-menu-position top-hover"><a href="shop.php">category</a>
                                        <ul class="mega-menu">
                                           <?php foreach($categories AS $key=>$category){?>

                                        
                                            <li>
                                                <ul>
                                                    <li class="mega-menu-title"><?= $category['name'];?></li>
                                                    <?php 
                                                      $subcat->setCategoryId($category['id']);
                                                      $result = $subcat->catSubcat(); 
                                                      if($result){
                                                          $subcategroies = $result->fetch_all(MYSQLI_ASSOC);
                                                          foreach($subcategroies AS $key=>$sub){?>
                                                              <li><a href="shop.php?sub=<?= $sub['id'] ?>"><?= $sub['name']; ?></a></li>
                                                              <?php
                                                              }
                                                      
                                                             } else{?>

                                                           <li>no sub_category </li>
                                                   
                                                    <?php  
                                                   }
                                                 ?>
                                                </ul>
                                            </li>
                                     
                                    <?php } ?>
                                
                                        </ul>
                                    </li>
                                    <li class="top-hover"><a href="blog-left-sidebar.php">blog</a>
                                        <ul class="submenu">
                                            <li><a href="blog-masonry.php">Blog Masonry</a></li>
                                            <li><a href="#">Blog Standard <span><i class="ion-ios-arrow-right"></i></span></a>
                                                <ul class="lavel-menu">
                                                    <li><a href="blog-left-sidebar.php">left sidebar</a></li>
                                                    <li><a href="blog-right-sidebar.php">right sidebar</a></li>
                                                    <li><a href="blog-no-sidebar.php">no sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Post Types <span><i class="ion-ios-arrow-right"></i></span> </a>
                                                <ul class="lavel-menu">
                                                    <li><a href="blog-details-standerd.php">Standard post</a></li>
                                                    <li><a href="blog-details-audio.php">audio post</a></li>
                                                    <li><a href="blog-details-video.php">video post</a></li>
                                                    <li><a href="blog-details-gallery.php">gallery post</a></li>
                                                    <li><a href="blog-details-link.php">link post</a></li>
                                                    <li><a href="blog-details-quote.php">quote post</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="top-hover"><a href="#">pages</a>
                                        <ul class="submenu">
                                            <li><a href="about-us.php">about us </a></li>
                                            <li><a href="shop.php">shop Grid</a></li>
                                            <li><a href="shop-list.php">shop list</a></li>
                                            <li><a href="product-details.php">product details</a></li>
                                            <li><a href="cart-page.php">cart page</a></li>
                                            <li><a href="checkout.php">checkout</a></li>
                                            <li><a href="wishlist.php">wishlist</a></li>
                                            <li><a href="my-account.php">my account</a></li>
                                            <li><a href="login-register.php">login / register</a></li>
                                            <li><a href="contact.php">contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about-us.php">about</a></li>
                                    <li><a href="contact.php">contact</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="header-currency">
                            <span class="digit">Welcome <i class="ti-angle-down"></i></span>
                            <div class="dollar-submenu">
                                <ul>
                                    <li><a href="login.php">Login</a></li>
                                    <li><a href="register.php">Register</a></li>
                                   
                                </ul>
                            </div>
                        </div>
                        <div class="header-cart">
                            <a href="#">
                                <div class="cart-icon">
                                    <i class="ti-shopping-cart"></i>
                                </div>
                            </a>
                            <div class="shopping-cart-content">
                                <ul>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h4><a href="#">Phantom Remote </a></h4>
                                            <h6>Qty: 02</h6>
                                            <span>$260.00</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="ion ion-close"></i></a>
                                        </div>
                                    </li>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h4><a href="#">Phantom Remote</a></h4>
                                            <h6>Qty: 02</h6>
                                            <span>$260.00</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="ion ion-close"></i></a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="shopping-cart-total">
                                    <h4>Shipping : <span>$20.00</span></h4>
                                    <h4>Total : <span class="shop-total">$260.00</span></h4>
                                </div>
                                <div class="shopping-cart-btn">
                                    <a href="cart-page.php">view cart</a>
                                    <a href="checkout.php">checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mobile-menu-area">
                <div class="mobile-menu">
                    <nav id="mobile-menu-active">
                        <ul class="menu-overflow">
                            <li><a href="#">HOME</a>
                                <ul>
                                    <li><a href="index.php">home version 1</a></li>
                                    <li><a href="index-2.php">home version 2</a></li>
                                </ul>
                            </li>
                            <li><a href="#">pages</a>
                                <ul>
                                    <li><a href="about-us.php">about us </a></li>
                                    <li><a href="shop.php">shop Grid</a></li>
                                    <li><a href="shop-list.php">shop list</a></li>
                                    <li><a href="product-details.php">product details</a></li>
                                    <li><a href="cart-page.php">cart page</a></li>
                                    <li><a href="checkout.php">checkout</a></li>
                                    <li><a href="wishlist.php">wishlist</a></li>
                                    <li><a href="my-account.php">my account</a></li>
                                    <li><a href="login-register.php">login / register</a></li>
                                    <li><a href="contact.php">contact</a></li>
                                </ul>
                            </li>

                            <li><a href="shop.php"> Shop </a>
                                <ul>
                               <!--loop on category-->
                                    <li><a href="#">Categories 01</a>
                                        <ul>
                                        <!--loop on subcategory--> 
                                            <li><a href="shop.php">Aconite</a></li>
                                            <li><a href="shop.php">Ageratum</a></li>
                                            <li><a href="shop.php">Allium</a></li>
                                            <li><a href="shop.php">Anemone</a></li>
                                            <li><a href="shop.php">Angelica</a></li>
                                            <li><a href="shop.php">Angelonia</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#">BLOG</a>
                                <ul>
                                    <li><a href="blog-masonry.php">Blog Masonry</a></li>
                                    <li><a href="#">Blog Standard</a>
                                        <ul>
                                            <li><a href="blog-left-sidebar.php">left sidebar</a></li>
                                            <li><a href="blog-right-sidebar.php">right sidebar</a></li>
                                            <li><a href="blog-no-sidebar.php">no sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Post Types</a>
                                        <ul>
                                            <li><a href="blog-details-standerd.php">Standard post</a></li>
                                            <li><a href="blog-details-audio.php">audio post</a></li>
                                            <li><a href="blog-details-video.php">video post</a></li>
                                            <li><a href="blog-details-gallery.php">gallery post</a></li>
                                            <li><a href="blog-details-link.php">link post</a></li>
                                            <li><a href="blog-details-quote.php">quote post</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="contact.php"> Contact us </a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>