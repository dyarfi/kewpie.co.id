<?php 
header ("Content-Type:text/xml");
echo'<?xml version="1.0" encoding="UTF-8" ?>' ?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc><?php echo base_url();?></loc>
        <priority>1.0</priority>
    </url> 
    <?php foreach($urlslist as $url) { ?>
    <url>
        <loc><?php echo $url;?></loc>
        <priority>0.5</priority>
    </url>
    <?php } ?>
</urlset>