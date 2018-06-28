<?php
$output = array();

$pagetitle = $modx->resource->getTVValue('meta_title');
$desc = $modx->resource->getTVValue('meta_description');
$kw = $modx->resource->getTVValue('meta_keywords');

$uri = explode('?',$_SERVER['REQUEST_URI']);
if($uri[1]){
    preg_match('/[?|&]page=([0-9]+)/',$_SERVER['REQUEST_URI'], $match);
    if($match[1]){
        $canon = '<link rel="canonical" href="http://salon2.ardmedia.ru'.$uri[0].'"/>';
    }
}elseif($uri[0] == '/'){
    $canon = '<link rel="canonical" href="http://salon2.ardmedia.ru"/>';
}else{
    $canon = '<link rel="canonical" href="http://salon2.ardmedia.ru'.$uri[0].'"/>';
}

if (!$pagetitle) {
    $output['pagetitle'] = $modx->resource->pagetitle.' - '.$modx->getOption('site_name');
} else {
    $output['pagetitle'] = $pagetitle;
}
if ($desc) {
    $output['description'] = $desc;
}
if ($kw) {
    $output['keywords'] = $kw;
}
if($canon){
    $output['canonical'] = $canon;
}
return $modx->getChunk('metaTags', $output);