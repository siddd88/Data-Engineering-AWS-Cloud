
CREATE TABLE `customers` (
  `customer_id` varchar(32) NOT NULL,
  `customer_unique_id` varchar(32) NOT NULL,
  `customer_zip_code_prefix` decimal(10,0) NOT NULL,
  `customer_city` varchar(27) NOT NULL,
  `customer_state` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `geolocation` (
  `geolocation_zip_code_prefix` decimal(10,0) NOT NULL,
  `geolocation_lat` decimal(10,0) NOT NULL,
  `geolocation_lng` decimal(10,0) NOT NULL,
  `geolocation_city` varchar(9) NOT NULL,
  `geolocation_state` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `order_items` (
  `order_id` varchar(32) NOT NULL,
  `order_item_id` decimal(10,0) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `seller_id` varchar(32) NOT NULL,
  `shipping_limit_date` timestamp NULL DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `freight_value` decimal(10,0) NOT NULL,
  `order_purchase_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `order_payments` (
  `order_id` varchar(32) NOT NULL,
  `payment_sequential` decimal(10,0) NOT NULL,
  `payment_type` varchar(11) NOT NULL,
  `payment_installments` decimal(10,0) NOT NULL,
  `payment_value` decimal(10,0) NOT NULL,
  `order_purchase_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `order_reviews` (
  `review_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `review_score` decimal(10,0) NOT NULL,
  `review_comment_title` varchar(25) DEFAULT NULL,
  `review_comment_message` varchar(208) DEFAULT NULL,
  `review_creation_date` timestamp NULL DEFAULT NULL,
  `review_answer_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `orders` (
  `order_id` varchar(32) NOT NULL,
  `customer_id` varchar(32) NOT NULL,
  `order_status` varchar(11) NOT NULL,
  `order_purchase_timestamp` timestamp NULL DEFAULT NULL,
  `order_approved_at` timestamp NULL DEFAULT NULL,
  `order_delivered_carrier_date` timestamp NULL DEFAULT NULL,
  `order_delivered_customer_date` timestamp NULL DEFAULT NULL,
  `order_estimated_delivery_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `product_category_name_translation` (
  `﻿product_category_name` varchar(46) NOT NULL,
  `product_category_name_english` varchar(39) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1


CREATE TABLE `products` (
  `product_id` varchar(32) NOT NULL,
  `product_category_name` varchar(46) DEFAULT NULL,
  `product_name_lenght` decimal(10,0) DEFAULT NULL,
  `product_description_lenght` decimal(10,0) DEFAULT NULL,
  `product_photos_qty` decimal(10,0) DEFAULT NULL,
  `product_weight_g` decimal(10,0) DEFAULT NULL,
  `product_length_cm` decimal(10,0) DEFAULT NULL,
  `product_height_cm` decimal(10,0) DEFAULT NULL,
  `product_width_cm` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `sellers` (
  `seller_id` varchar(32) NOT NULL,
  `seller_zip_code_prefix` decimal(10,0) NOT NULL,
  `seller_city` varchar(40) NOT NULL,
  `seller_state` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1