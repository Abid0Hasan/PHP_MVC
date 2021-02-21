<?php


/**
 * 
 */
class UiModel extends DModel{
	
	function __construct(){
		parent::__construct();  
	}

	 public function getColor($table){
         $sql = "SELECT * FROM $table";
         return $this->db->select($sql);	 
	}

	public function updateBackground($table, $data, $cond)
	{
		return $this->db->update($table, $data, $cond);
	}
}

?>