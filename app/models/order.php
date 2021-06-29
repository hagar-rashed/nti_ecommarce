<?php

include_once "db/operations.php";
include_once "db/database.php";
class order extends database implements operations{
    private $id;
    private $code;
    private $paymentmethode;
    private $lat;
    private $long;
    private $status;
    private $date;
    private $location;
    private $totalcash;
    private $copoun_id;
    private $user_id;
    private $created_at;
    private $updated_at;


    /**
     * Get the value of id
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of code
     */
    public function getCode()
    {
        return $this->code;
    }

    /**
     * Set the value of code
     *
     * @return  self
     */
    public function setCode($code)
    {
        $this->code = $code;

        return $this;
    }

    /**
     * Get the value of paymentmethode
     */
    public function getPaymentmethode()
    {
        return $this->paymentmethode;
    }

    /**
     * Set the value of paymentmethode
     *
     * @return  self
     */
    public function setPaymentmethode($paymentmethode)
    {
        $this->paymentmethode = $paymentmethode;

        return $this;
    }

    /**
     * Get the value of user_id
     */
    public function getUserId()
    {
        return $this->user_id;
    }

    /**
     * Set the value of user_id
     *
     * @return  self
     */
    public function setUserId($user_id)
    {
        $this->user_id = $user_id;

        return $this;
    }

    /**
     * Get the value of status
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Set the value of status
     *
     * @return  self
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get the value of totalcash
     */
    public function getTotalcash()
    {
        return $this->totalcash;
    }

    /**
     * Set the value of totalcash
     *
     * @return  self
     */
    public function setTotalcash($totalcash)
    {
        $this->totalcash = $totalcash;

        return $this;
    }

    /**
     * Get the value of location
     */
    public function getLocation()
    {
        return $this->location;
    }

    /**
     * Set the value of location
     *
     * @return  self
     */
    public function setLocation($location)
    {
        $this->location = $location;

        return $this;
    }
        /**
     * Get the value of created_at
     */
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    /**
     * Set the value of created_at
     *
     * @return  self
     */
    public function setCreatedAt($created_at)
    {
        $this->created_at = $created_at;

        return $this;
    }

    /**
     * Get the value of updated_at
     */
    public function getUpdatedAt()
    {
        return $this->updated_at;
    }

    /**
     * Set the value of updated_at
     *
     * @return  self
     */
    public function setUpdatedAt($updated_at)
    {
        $this->updated_at = $updated_at;

        return $this;
    }

    ///////////////////////
    public function insertData(){
      
    }
    public function updateData(){
       
    } 
    public function deleteData(){

    }
    public function selectAllData(){
    }  

}