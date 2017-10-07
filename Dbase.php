<?php

    class DbConnect{
        private $user = "root";
        private $pass = "";
        private $db = "innerve";
        private $host = "localhost";
        private $dbCon;
        private $_insert_keys = array();
        private $_insert_values = array();
        function __construct(){
            $this->dbCon = mysqli_connect($this->host, $this->user, $this->pass) or die("Couldn't connect to database!");
            mysqli_select_db($this->dbCon, $this->db) or die("Couldn't select a database!");

        }
        public function  run_query($sql){
            if (empty($sql)){
                return false;
            }
            else{
                return mysqli_query($this->dbCon,$sql);
            }
    }
        public function fetchAll($query = null){

            if(empty($query)){
                die("No query given!");
            }

            $result = mysqli_query($this->dbCon,$query);

            return $result;
        }
        public function prepare_Insert($arr=null){
            if(empty($arr)){
                return false;
            }
            $this->reset_array($this->_insert_keys);
            $this->reset_array($this->_insert_values);
            foreach($arr as $keys=>$values){
                $this->_insert_keys[] = $keys;
                $this->_insert_values[] = $values;
            }
        }

        public function insert($table=null){
            if(empty($table)){
                return false;
            }
            $query = "insert into `{$table}` (`";
            $query.= implode("`,`",$this->_insert_keys);
            $query.= "`) VALUES ('";
            $query.= implode("','",$this->_insert_values);
            $query.= "')";

            if($this->run_query($query)){
                return true;
            }
        }

        private function reset_array($arr){
            unset($arr);
            $arr = array();
        }
    }
?>