<?php
(!empty($parent))?$parent = $parent:$parent = 1;
$q = $modx->newQuery('galAlbum');
$q->where(array('galAlbum.parent' => $parent,'galAlbum.active' => 1));
$q->select('`galAlbum`.`id`,`galAlbum`.`name`');
if ($q->prepare() && $q->stmt->execute()) {
    $tmp = $q->stmt->fetchAll(PDO::FETCH_ASSOC);
}
$res = array();
foreach($tmp as $value){
    $res[] = $value['name'].'=='.$value['id'];
}
$result = implode('||',$res);
return $result;