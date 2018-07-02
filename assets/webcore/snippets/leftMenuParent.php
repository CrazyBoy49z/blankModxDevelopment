<?php

$id = $modx->resource->get('id');
$parent = $modx->getParentIds($id);
$parent = array_reverse($parent);
return $parent = (isset($parent[1])) ? $parent[1] : count($modx->getChildIds($id)) > 0 ? $id : 0;
