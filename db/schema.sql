CREATE TABLE IF NOT EXISTS activity_logs(
    activity_log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(255),
    user_email VARCHAR(255),
    activity_log_action VARCHAR(50) NOT NULL,
    activity_log_status ENUM('success','failed') DEFAULT 'success',

    -- Client Parameters
    activity_log_ip_address VARCHAR(45),
    activity_log_user_agent VARCHAR(255),
    
    -- Timestamp
    activity_log_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table #3 users tables
CREATE TABLE IF NOT EXISTS users(
    -- PRIMARY KEY FOR USERS TABLE
    user_id INT AUTO_INCREMENT PRIMARY KEY,

    -- INITIAL USER DETAILS
    user_email VARCHAR(50) UNIQUE NOT NULL,
    user_username VARCHAR(20) UNIQUE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_role ENUM('admin','manager','user') NOT NULL DEFAULT 'user',

    --USER CREATED TIMESTAMP DEFAULT NOT NULL   
    user_created_at TIMESTAMP 
    DEFAULT CURRENT_TIMESTAMP,

    --USER UPDATED TIMESTAMP
    user_updated_at TIMESTAMP
    DEFAULT CURRENT_TIMESTAMP 
    ON UPDATE CURRENT_TIMESTAMP

)