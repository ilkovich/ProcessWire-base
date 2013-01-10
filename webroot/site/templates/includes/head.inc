<?
    $homepage = $pages->get("/"); 
    $children = $homepage->children;
    $children->prepend($homepage); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <!--META-->

	<title><?= $page->get("headline|title"); ?></title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="<?= $page->summary; ?>" />
    <meta name="keywords" content="<?= $page->keywords; ?>" />
	<meta name="generator" content="ProcssWire <?= $config->version; ?>" />

    <!--END META-->

    <!--STYLES-->

    <? foreach($config->styles->unique() as $file) : ?> 
    <link type="text/css" href="<?=$file?>" rel="stylesheet" />
    <? endforeach; ?>
	<link rel="stylesheet" type="text/css" href="/css/screen.css" />
	<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/ie.css" />
	<![endif]-->	

    <!--END STYLES-->
</head>
<body>
    <header>
        <nav>
            <ul id='topnav'>
                <?  foreach($children as $child) :
                    $class = $child === $page->rootParent ? " class='on'" : '';
                ?>
                <li><a<?=$class?> href="<?=$child->url?>"><?=$child->title?></a></li>
                <? endforeach; ?>
            </ul>
            <h1 id='title'><?= $page->get("headline|title"); ?></h1>
        </nav>
    </header>
