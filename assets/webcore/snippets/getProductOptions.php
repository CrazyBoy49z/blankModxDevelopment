<?php
$productId = $modx->getOption('product', $scriptProperties);
$options = $modx->getOption('options', $scriptProperties);

$id =   isset($productId) ? $productId : $modx->resource->get('id');
$parent = $modx->getParentIds($id,1)[0];
empty($tplInner)?$tplInner = 'defaultProductsOptionTplInner':$tplInner = $tplInner;
empty($tplOuter)?$tplOuter = 0:$tplOuter = $tplOuter;

$q = $modx->newQuery('msProductOption');
$q->innerJoin('msOption','msOption','msOption.key=msProductOption.key');
$q->innerJoin('msCategoryOption','msCategoryOption','msCategoryOption.option_id=msOption.id');
$q->select('msOption.caption,msProductOption.value,msOption.key');
$q->where(array(
    array(
        'msCategoryOption.category_id' => $parent,
        'msCategoryOption.active' => 1,
        'msProductOption.value:!=' => '',
        'msProductOption.product_id' => $id,
    ),

));

$q->sortby('msCategoryOption.rank');
$result = '';
$outer = '';
$inner = '';
if(isset($options)) {
    $optionsArray = explode(',', $options);
}
if ($q->prepare() && $q->stmt->execute()) {

    while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {
        if ($optionsArray) {
            if (false !== in_array($row['key'],$optionsArray)) {
                $inner .= $modx->getChunk($tplInner,array('name'=>$row['caption'],'value'=>$row['value']));
            }
        } else {
            $inner .= $modx->getChunk($tplInner,array('name'=>$row['caption'],'value'=>$row['value']));
        }
    }
}
if($tplOuter && $tplOuter != 0){
    $outer = $modx->getChunk($tplOuter,array('rows'=>$inner));
    $result = $outer;
}else{
    $result = $inner;
}
return $result;