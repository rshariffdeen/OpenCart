<br><br><br>
<div class="box span4">
    <div id="page-title">
        <h2>Your Account</h2>

    </div>

    <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="input-block-level" placeholder="Email address">
        <input type="password" class="input-block-level" placeholder="Password">
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn  btn-inverse" type="submit">Sign in</button>

        <button class="btn  btn-mini pull-right" type="submit">Forget Password</button>
    </form>

</div>

<div class="box span8">
    <div id="page-title">
        <h2><?php echo $heading_title; ?></h2>

    </div>
    <div class="box-content">


        <?php foreach ($products as $product) { ?>
        <div class="featurette">
            <?php if ($product['thumb']) { ?>
            <a href="#myModal" url="<?php echo $product['href']; ?>&iframe=1" data-toggle="modal"><img class="featurette-image pull-right"
                                                           src="<?php echo $product['thumb']; ?>"
                                                           alt="<?php echo $product['name']; ?>"/></a>

            <?php } ?>
            <h2 class="featurette-heading"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                <span class="muted"></span></h2><br>
            <?php if ($product['price']) { ?>
            <h1>
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span
                        class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
            </h1>
            <?php } ?>
            <?php if ($product['rating']) { ?>
            <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png"
                                     alt="<?php echo $product['reviews']; ?>"/></div>
            <?php } ?>
        </div>
        <div class="cart pull-right">
            <input type="button" value="<?php echo $button_cart; ?>"
                                            onclick="addToCart('<?php echo $product['product_id']; ?>');"
                                            class="btn btn-info"/>
            <input type="button" value="Buy Now"
                   onclick="addToCart('<?php echo $product['product_id']; ?>');"
                   class="btn btn-success"/>
        </div><br>
        <hr/>
        <?php } ?>
    </div>
</div>
</div>
