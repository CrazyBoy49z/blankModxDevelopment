<?php

$pages = array(
    'contacts'=>45,

);

$id = $modx->resource->get('id');
$array_ids = $modx->getChildIds($id);
$parent_ids = $modx->getParentIds($id);

$res = '';

foreach($pages as $k=>$v){
    if($v == $id) {
        if($modx->getChunk($k.'_view'))
        {
            $res = $k.'_view';
        }

    } elseif( (false !== in_array($id,$parent_ids)) && (count($array_ids) > 0) ) {
        if($modx->getChunk($k.'_collection_view'))
        {
            $res = $k.'_collection_view';
        }

    } else {
        if($modx->getChunk($k.'_inner_view'))
        {
            $res = $k.'_inner_view';
        }
    }
}

if($res){
    return $modx->getChunk($res);
}else{
    if(count($array_ids)>0) {
        return $modx->getChunk('default_collection_view');
    }
    else {
        return $modx->getChunk('default_view');
    }
}