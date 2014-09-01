<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta charset="UTF-8"/>
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <!-- Ridwan's Code Start Here -------------------->
    <!-- For Mobiles  -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="http://fonts.googleapis.com/css?family=Carrois+Gothic" rel="stylesheet" type="text/css">

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/ridwan/CSS/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/ridwan/CSS/fancybox.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/ridwan/CSS/style.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/ridwan/CSS/wide.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/ridwan/CSS/stylesheet.css" />

    <!-- Java Script  -->
    <script async="" src="../../../www.google-analytics.com/analytics.js"></script>
    <script src="catalog/view/theme/ridwan/js/jquery.js"></script>
    <script src="catalog/view/theme/ridwan/js/custom.js"></script>
    <script src="catalog/view/theme/ridwan/js/selectnav.js"></script>
    <script src="catalog/view/theme/ridwan/js/flexslider.js"></script>
    <script src="catalog/view/theme/ridwan/js/twitter.js"></script>
    <script src="catalog/view/theme/ridwan/js/fancybox.js"></script>
    <script src="catalog/view/theme/ridwan/js/isotope.js"></script>
    <script src="catalog/view/theme/ridwan/js/bootstrap.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
        })
        (window, document, 'script', '../../../www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-40566302-4', 'uexel.us');
        ga('send', 'pageview');

    </script>

    <!-- Ridwan's Code End Here -------------------->

    <script type="text/javascript" src="catalog/view/javascript/common.js"></script>


    <?php if ($stores) { ?>
    <script type="text/javascript"><!--
        $(document).ready(function () {
            <
            ? php foreach($stores
            as
            $store
            )
            {
                ?
            >
                $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
            <
                ? php
            }
            ?
            >
        });
        //--></script>
    <?php } ?>
    <?php echo $google_analytics; ?>
</head>
<body>
<!-- Header -->

<!-- Wrapper Start -->
<div id="wrapper" class="container-fluid">

<div class="ie-dropdown-fix">

    <!-- Header -->
    <div class="row-fluid" id="header">

        <!-- Logo -->
        <div class="span4">

            <?php if ($logo) { ?>
            <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                               alt="<?php echo $name; ?>"/></a></div>
            <?php } ?>
        </div>
        <div class = "span5">
            <br>
            <p align ="center">
               <h3> *cash on delivery / *delivery free in Kandy</h3>
            </p>
        </div>

        <div class="span3 pull-right">
            <?php echo $language; ?>
            <?php echo $cart; ?>


            <div id="welcome">
                <?php if (!$logged) { ?>
                <?php echo $text_welcome; ?>
                <?php } else { ?>
                <?php echo $text_logged; ?>
                <?php } ?>
            </div>
            <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a
                        href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a
                        href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a
                        href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a
                        href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
        </div>
    </div>
    <?php if ($categories) { ?>
    <!-- Navigation -->
    <div id="navigation" class="margintop">
        <ul id="nav">
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?>&nbsp;&nbsp;&nbsp;<img src="catalog/view/theme/ridwan/img/support-icon.png"  alt="" /></a>
                <?php if ($category['children']) { ?>
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <ul>
                    <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                    <?php for (; $i < $j; $i++) { ?>
                    <?php if (isset($category['children'][$i])) { ?>
                    <li>
                        <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                    </li>
                    <?php } ?>
                    <?php } ?>
                </ul>
                <?php } ?>

                <?php } ?>
            </li>
            <?php } ?>
        </ul>
    </div>
    <div class="nav-shadow"></div>
    <div class="clear"></div>

</div>
<!-- Navigation / End -->
<?php } ?>
<?php if ($error) { ?>

<div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close"/>
</div>

<?php } ?>


<div id="notification"></div>
