<?php

include_once "db/operations.php";
include_once "db/database.php";
class product extends database implements operations{
    private $id;
    private $name;
    private $details;
    private $code;
    private $price;
    private $image;
    private $quantity;
    private $status;
    private $brand_id;
    private $subcategory_id;
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
     * Get the value of name
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set the value of name
     *
     * @return  self
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }
    /**
     * Get the value of details
     */
    public function getDetails()
    {
        return $this->details;
    }

    /**
     * Set the value of details
     *
     * @return  self
     */
    public function setDetails($details)
    {
        $this->details = $details;

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
     * Get the value of price
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set the value of price
     *
     * @return  self
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }
        /**
     * Get the value of image
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * Set the value of image
     *
     * @return  self
     */
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get the value of quantity
     */
    public function getQuantity()
    {
        return $this->quantity;
    }

    /**
     * Set the value of quantity
     *
     * @return  self
     */
    public function setQuantity($quantity)
    {
        $this->quantity = $quantity;

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
     * Get the value of category_id
     */
    public function getCategoryId()
    {
        return $this->category_id;
    }

    /**
     * Set the value of category_id
     *
     * @return  self
     */
    public function setCategoryId($category_id)
    {
        $this->category_id = $category_id;

        return $this;
    }




    /**
     * Get the value of subcategory_id
     */
    public function getSubcategoryId()
    {
        return $this->subcategory_id;
    }

    /**
     * Set the value of subcategory_id
     *
     * @return  self
     */
    public function setSubcategoryId($subcategory_id)
    {
        $this->subcategory_id = $subcategory_id;

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
          $query ="SELECT `products`.* FROM `products` ";
          return $this->runDQL($query);
      }

     public function productInSub(){
        $query ="SELECT `products`.* FROM `products`  WHERE `products`.`subcategory_id` = $this->subcategory_id ";
         return $this->runDQL($query);
     }
     public function singleProduct(){
         $query="SELECT `products_rating`.* FROM `products_rating` WHERE `products_rating`.`id` = $this->id ";
         return $this->runDQL($query);
     }
     public function ProductReview(){
         $query="SELECT `reviews`.* , `users`.`name` FROM `reviews` JOIN `users` ON `users`.`id` = `reviews`.`user_id` WHERE `reviews`.`product_id` = $this->id ";
         return $this->runDQL($query);
     }
     public function newProd(){
      
        $query = "SELECT `products`.* FROM `products` AS `products`  ORDER BY `products`.created_at desc LIMIT 4";
        
        return $this->runDQL($query);
     }
     public function mostRated(){
        $query = "SELECT * FROM `products_rating` ORDER BY `products_rating`.`productAvg` DESC
        
        , `products_rating`.`reveiwCount` DESC
        
        LIMIT 4 ";
        
        return $this->runDQL($query);
     }
   
    public function mostOrder(){
        $query = "SELECT  `products`.*, COUNT(`order_product`.`product_id`)  AS `mostOrder` FROM `products` 
        JOIN `order_product` 
        ON `products`.`id` = `order_product`.`product_id`    GROUP BY `order_product`.`product_id`
        ORDER BY `mostOrder` DESC 
        LIMIT 4
        
         ";

        
        return $this->runDQL($query);

    } 


}
