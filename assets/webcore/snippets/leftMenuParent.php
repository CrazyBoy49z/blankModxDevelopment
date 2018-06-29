<?php
$id = $modx->resource->get('id');
$parent = $modx->getParentIds($id);
$parent = array_reverse($parent);
$parent = $parent[1];
return $parent;
