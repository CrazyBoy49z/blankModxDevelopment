<?php
$id = $modx->resource->get('id');
$parent = $modx->getParentIds($id);
$parent = array_reverse($parent);
if(isset($parent[1])){
    return $parent[1];
}else{
    if(count($modx->getChildIds($id)) > 0){
        return $id;
    }else{
        return 0;
    }
}
//return $parent = (isset($parent[1])) ?  $parent[1] : count($modx->getChildIds($id)) > 0 ? $id : 0;