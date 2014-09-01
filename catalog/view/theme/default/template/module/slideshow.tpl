<section class="slider">
    <div class="flexslider home">
        <ul class="slides">

            <?php foreach ($banners as $banner) { ?>
            <li><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"/> </li>
            <?php } ?>
            </ul>
    </div>
</section>

