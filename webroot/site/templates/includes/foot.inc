    <footer>
        <p>Copyright 2012 ThoughtVine</p>
    </footer>
    <? foreach($config->scripts->unique() as $file) : ?>
    <script type='text/javascript' src='<?=$file?>'></script> 
    <? endforeach; ?>
    <?if($page->editable()) : ?>
    <a class="nav" id="editpage" href="<?=$config->urls->admin?>page/edit/?id=<?=$page->id?>">Edit</a>
    <? endif; ?>
</body>
</html>
