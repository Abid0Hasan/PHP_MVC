<?php


/**
 * 
 */
class UserModel extends DModel{
	
	function __construct(){
		parent::__construct();  
	}

	 public function userList($table){
         $sql = "SELECT * FROM $table ORDER BY id DESC";
         return $this->db->select($sql);	 
	}
	
	public function addUser($table, $data)
	{
		return $this->db->insert($table, $data);
	}


	public function delUserById($table, $cond)
	{
		return $this->db->delete($table, $cond);
	}
}


?>