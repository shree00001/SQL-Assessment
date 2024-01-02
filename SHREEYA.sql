create database shreeya;
use shreeya;
CREATE TABLE XXBCM_ORDER_MGT (
    ORDER_REF VARCHAR(50),
    ORDER_DATE DATE,
    SUPPLIER_NAME VARCHAR(100),
    SUPP_CONTACT_NAME VARCHAR(50),
    SUPP_ADDRESS VARCHAR(200),
    SUPP_CONTACT_NUMBER VARCHAR(20),
    SUPP_EMAIL VARCHAR(100),
    ORDER_TOTAL_AMOUNT DECIMAL(10,4),
    ORDER_DESCRIPTION VARCHAR(200),
    ORDER_STATUS VARCHAR(50),
    ORDER_LINE_AMOUNT DECIMAL(10,4),
    INVOICE_REFERENCE VARCHAR(50),
    INVOICE_DATE DATE,
    INVOICE_STATUS VARCHAR(50),
    INVOICE_HOLD_REASON VARCHAR(200),
    INVOICE_AMOUNT DECIMAL(10,4),
    INVOICE_DESCRIPTION VARCHAR(200)
);
INSERT INTO XXBCM_ORDER_MGT (
    ORDER_REF, ORDER_DATE, SUPPLIER_NAME, SUPP_CONTACT_NAME, SUPP_ADDRESS,
    SUPP_CONTACT_NUMBER, SUPP_EMAIL, ORDER_TOTAL_AMOUNT, ORDER_DESCRIPTION,
    ORDER_STATUS, ORDER_LINE_AMOUNT, INVOICE_REFERENCE, INVOICE_DATE,
    INVOICE_STATUS, INVOICE_HOLD_REASON, INVOICE_AMOUNT, INVOICE_DESCRIPTION
) VALUES
    ('PO001', '2023-01-01', 'Supplier A', 'Contact A', 'Address A',
    '1234567890', 'contactA@email.com', 100.00, 'Product A', 'Received',
    50.00, 'INV001', '2023-01-05', 'Paid', 'Complete payment', 50.00, 'Payment for Product A'),
    
    ('PO002', '2023-01-02', 'Supplier B', 'Contact B', 'Address B',
    '9876543210', 'contactB@email.com', 150.00, 'Product B', 'Pending',
    150.00, 'INV002', '2023-01-08', 'Pending', 'Awaiting stock availability', 150.00, 'Pending payment for Product B'),
    
    ('PO003', '2023-01-03', 'Supplier C', 'Contact C', 'Address C',
    '1112223333', 'contactC@email.com', 200.00, 'Product C', 'Received',
    200.00, 'INV003', '2023-01-07', 'Paid', 'Payment successful', 200.00, 'Payment for Product C'),

    ('PO004', '2023-01-04', 'Supplier D', 'Contact D', 'Address D',
    '4445556666', 'contactD@email.com', 75.00, 'Product D', 'Received',
    75.00, 'INV004', '2023-01-10', 'Pending', 'Waiting for additional details', 75.00, 'Payment for Product D'),
    
    ('PO005', '2023-01-05', 'Supplier E', 'Contact E', 'Address E',
    '5556667777', 'contactE@email.com', 120.00, 'Product E', 'Received',
    120.00, 'INV005', '2023-01-12', 'Paid', 'Payment received', 120.00, 'Payment for Product E'),
    
    ('PO006', '2023-01-06', 'Supplier F', 'Contact F', 'Address F',
    '8889990000', 'contactF@email.com', 180.00, 'Product F', 'Pending',
    180.00, 'INV006', '2023-01-15', 'Pending', 'Awaiting confirmation', 180.00, 'Pending payment for Product F'),
    
    ('PO007', '2023-01-07', 'Supplier G', 'Contact G', 'Address G',
    '9990001111', 'contactG@email.com', 220.00, 'Product G', 'Received',
    220.00, 'INV007', '2023-01-15', 'Paid', 'Payment completed', 220.00, 'Payment for Product G'),

    ('PO008', '2023-01-08', 'Supplier H', 'Contact H', 'Address H',
    '2223334444', 'contactH@email.com', 90.00, 'Product H', 'Received',
    90.00, 'INV008', '2023-01-18', 'Pending', 'Waiting for stock availability', 90.00, 'Payment for Product H'),
    
    ('PO009', '2023-01-09', 'Supplier I', 'Contact I', 'Address I',
    '3334445555', 'contactI@email.com', 130.00, 'Product I', 'Received',
    130.00, 'INV009', '2023-01-20', 'Paid', 'Payment processed', 130.00, 'Payment for Product I'),
    
    ('PO010', '2023-01-10', 'Supplier J', 'Contact J', 'Address J',
    '6667778888', 'contactJ@email.com', 160.00, 'Product J', 'Pending',
    160.00, 'INV010', '2023-01-25', 'Pending', 'Awaiting confirmation', 160.00, 'Pending payment for Product J');
select *  from XXBCM_ORDER_MGT ;
-- Create the SUPPLIER table
CREATE TABLE SUPPLIER (
    SUPPLIER_ID INT PRIMARY KEY AUTO_INCREMENT,
    SUPPLIER_NAME VARCHAR(255) NOT NULL,
    SUPP_CONTACT_NAME VARCHAR(255),
    SUPP_ADDRESS VARCHAR(255),
    SUPP_CONTACT_NUMBER VARCHAR(20),
    SUPP_EMAIL VARCHAR(255)
);
-- Adding 10 meaningful records
INSERT INTO SUPPLIER (SUPPLIER_NAME, SUPP_CONTACT_NAME, SUPP_ADDRESS, SUPP_CONTACT_NUMBER, SUPP_EMAIL) VALUES
    ('Supplier A', 'Contact A', 'Address A', '1234567890', 'contactA@email.com'),
    ('Supplier B', 'Contact B', 'Address B', '9876543210', 'contactB@email.com'),
    ('Supplier C', 'Contact C', 'Address C', '1112223333', 'contactC@email.com'),
    ('Supplier D', 'Contact D', 'Address D', '4445556666', 'contactD@email.com'),
    ('Supplier E', 'Contact E', 'Address E', '5556667777', 'contactE@email.com'),
    ('Supplier F', 'Contact F', 'Address F', '8889990000', 'contactF@email.com'),
    ('Supplier G', 'Contact G', 'Address G', '9990001111', 'contactG@email.com'),
    ('Supplier H', 'Contact H', 'Address H', '2223334444', 'contactH@email.com'),
    ('Supplier I', 'Contact I', 'Address I', '3334445555', 'contactI@email.com'),
    ('Supplier J', 'Contact J', 'Address J', '6667778888', 'contactJ@email.com');


-- Create the ORDER table
CREATE TABLE ORDER_HEADER (
    ORDER_ID INT PRIMARY KEY AUTO_INCREMENT,
    ORDER_REF VARCHAR(20) UNIQUE NOT NULL,
    ORDER_DATE DATE,
    ORDER_TOTAL_AMOUNT DECIMAL(10, 2),
    ORDER_DESCRIPTION VARCHAR(255),
    ORDER_STATUS VARCHAR(20) NOT NULL
);

-- Adding 10 meaningful records
INSERT INTO ORDER_HEADER (ORDER_REF, ORDER_DATE, ORDER_TOTAL_AMOUNT, ORDER_DESCRIPTION, ORDER_STATUS) VALUES
    ('ORD001', '2024-01-01', 1500.00, 'First Order', 'Received'),
    ('ORD002', '2024-01-02', 2500.00, 'Second Order', 'Pending'),
    ('ORD003', '2024-01-03', 1800.00, 'Third Order', 'Paid'),
    ('ORD004', '2024-01-04', 1200.00, 'Fourth Order', 'Pending'),
    ('ORD005', '2024-01-05', 2000.00, 'Fifth Order', 'Received'),
    ('ORD006', '2024-01-06', 3000.00, 'Sixth Order', 'Paid'),
    ('ORD007', '2024-01-07', 2200.00, 'Seventh Order', 'Pending'),
    ('ORD008', '2024-01-08', 1700.00, 'Eighth Order', 'Paid'),
    ('ORD009', '2024-01-09', 1900.00, 'Ninth Order', 'Received'),
    ('ORD010', '2024-01-10', 2800.00, 'Tenth Order', 'Pending');
-- Create the ORDER_LINE table
CREATE TABLE ORDER_LINE (
    ORDER_LINE_ID INT PRIMARY KEY AUTO_INCREMENT,
    ORDER_ID INT,
    ORDER_LINE_AMOUNT DECIMAL(10, 2),
    PRODUCT_DESCRIPTION VARCHAR(255),
    FOREIGN KEY (ORDER_ID) REFERENCES ORDER_HEADER(ORDER_ID)
);

-- Adding 10 meaningful records
INSERT INTO ORDER_LINE (ORDER_ID, ORDER_LINE_AMOUNT, PRODUCT_DESCRIPTION) VALUES
    (1, 500.00, 'Product A'),
    (1, 700.00, 'Product B'),
    (2, 1000.00, 'Product C'),
    (3, 800.00, 'Product D'),
    (3, 1200.00, 'Product E'),
    (4, 600.00, 'Product F'),
    (5, 900.00, 'Product G'),
    (6, 1500.00, 'Product H'),
    (8, 800.00, 'Product I'),
    (10, 1200.00, 'Product J');

-- Create the INVOICE table
CREATE TABLE INVOICE (
    INVOICE_ID INT PRIMARY KEY AUTO_INCREMENT,
    ORDER_ID INT,
    INVOICE_REFERENCE VARCHAR(20) UNIQUE,
    INVOICE_DATE DATE,
    INVOICE_STATUS VARCHAR(20) NOT NULL,
    INVOICE_HOLD_REASON VARCHAR(255),
    INVOICE_AMOUNT DECIMAL(10, 2),
    INVOICE_DESCRIPTION VARCHAR(255),
    FOREIGN KEY (ORDER_ID) REFERENCES ORDER_HEADER(ORDER_ID)
);

-- Adding 10 meaningful records
INSERT INTO INVOICE (ORDER_ID, INVOICE_REFERENCE, INVOICE_DATE, INVOICE_STATUS, INVOICE_HOLD_REASON, INVOICE_AMOUNT, INVOICE_DESCRIPTION) VALUES
    (1, 'INV001', '2024-01-15', 'Pending', 'Waiting for approval', 1200.00, 'Invoice for Order 1'),
    (2, 'INV002', '2024-01-20', 'Paid', '', 1500.00, 'Invoice for Order 2'),
    (3, 'INV003', '2024-01-25', 'Pending', 'Out of stock', 1800.00, 'Invoice for Order 3'),
    (4, 'INV004', '2024-02-01', 'Paid', '', 900.00, 'Invoice for Order 4'),
    (5, 'INV005', '2024-02-10', 'Pending', 'Quality issue', 1200.00, 'Invoice for Order 5'),
    (6, 'INV006', '2024-02-15', 'Paid', '', 2000.00, 'Invoice for Order 6'),
    (7, 'INV007', '2024-02-20', 'Pending', 'Incomplete order', 1600.00, 'Invoice for Order 7'),
    (8, 'INV008', '2024-03-01', 'Paid', '', 800.00, 'Invoice for Order 8'),
    (9, 'INV009', '2024-03-10', 'Pending', 'Shipping delay', 1200.00, 'Invoice for Order 9'),
    (10, 'INV010', '2024-03-15', 'Paid', '', 1400.00, 'Invoice for Order 10');

-- Create the ORDER_SUPPLIER_RELATION table
CREATE TABLE ORDER_SUPPLIER_RELATION (
    ORDER_ID INT,
    SUPPLIER_ID INT,
    PRIMARY KEY (ORDER_ID, SUPPLIER_ID),
    FOREIGN KEY (ORDER_ID) REFERENCES ORDER_HEADER(ORDER_ID),
    FOREIGN KEY (SUPPLIER_ID) REFERENCES SUPPLIER(SUPPLIER_ID)
);

-- Adding 10 meaningful records
INSERT INTO ORDER_SUPPLIER_RELATION (ORDER_ID, SUPPLIER_ID) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
    -- Create a stored procedure for data migration
DELIMITER //

CREATE PROCEDURE MigrateData()
BEGIN
    -- Declare variables for data retrieval
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE orderRefVar VARCHAR(50);
    DECLARE orderDateVar DATE;
    DECLARE supplierNameVar VARCHAR(100);
    DECLARE suppContactNameVar VARCHAR(50);
    DECLARE suppAddressVar VARCHAR(200);
    DECLARE suppContactNumberVar VARCHAR(20);
    DECLARE suppEmailVar VARCHAR(100);
    DECLARE orderTotalAmountVar DECIMAL(10, 4);
    DECLARE orderDescriptionVar VARCHAR(200);
    DECLARE orderStatusVar VARCHAR(50);
    DECLARE orderLineAmountVar DECIMAL(10, 4);
    DECLARE invoiceReferenceVar VARCHAR(50);
    DECLARE invoiceDateVar DATE;
    DECLARE invoiceStatusVar VARCHAR(50);
    DECLARE invoiceHoldReasonVar VARCHAR(200);
    DECLARE invoiceAmountVar DECIMAL(10, 4);
    DECLARE invoiceDescriptionVar VARCHAR(200);

    -- Declare variable for order ID
    DECLARE orderIdVar INT;

    -- Declare variable for supplier ID
    DECLARE supplierIdVar INT;

    -- Cursor to iterate over XXBCM_ORDER_MGT
    DECLARE cur CURSOR FOR SELECT * FROM XXBCM_ORDER_MGT;

    -- Declare handlers for exceptions
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Open cursor
    OPEN cur;

    -- Loop through the records in XXBCM_ORDER_MGT
    read_loop: LOOP
        -- Fetch data into variables
        FETCH cur INTO
            orderRefVar, orderDateVar, supplierNameVar, suppContactNameVar, suppAddressVar,
            suppContactNumberVar, suppEmailVar, orderTotalAmountVar, orderDescriptionVar,
            orderStatusVar, orderLineAmountVar, invoiceReferenceVar, invoiceDateVar,
            invoiceStatusVar, invoiceHoldReasonVar, invoiceAmountVar, invoiceDescriptionVar;

        -- Exit loop if no more records
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Check if supplier exists, insert if not
        INSERT INTO SUPPLIER (SUPPLIER_NAME, SUPP_CONTACT_NAME, SUPP_ADDRESS, SUPP_CONTACT_NUMBER, SUPP_EMAIL)
        VALUES (supplierNameVar, suppContactNameVar, suppAddressVar, suppContactNumberVar, suppEmailVar)
        ON DUPLICATE KEY UPDATE SUPPLIER_ID = LAST_INSERT_ID(SUPPLIER_ID);

        -- Get the supplier ID
        SET supplierIdVar = LAST_INSERT_ID();

        -- Insert or update the ORDER_HEADER table
        INSERT INTO ORDER_HEADER (ORDER_REF, ORDER_DATE, ORDER_TOTAL_AMOUNT, ORDER_DESCRIPTION, ORDER_STATUS)
        VALUES (orderRefVar, orderDateVar, orderTotalAmountVar, orderDescriptionVar, orderStatusVar)
        ON DUPLICATE KEY UPDATE
            ORDER_DATE = orderDateVar,
            ORDER_TOTAL_AMOUNT = orderTotalAmountVar,
            ORDER_DESCRIPTION = orderDescriptionVar,
            ORDER_STATUS = orderStatusVar;

        -- Get the order ID
        SET orderIdVar = LAST_INSERT_ID();

        -- Insert or update the ORDER_LINE table
        INSERT INTO ORDER_LINE (ORDER_ID, ORDER_LINE_AMOUNT, PRODUCT_DESCRIPTION)
        VALUES (orderIdVar, orderLineAmountVar, orderDescriptionVar)
        ON DUPLICATE KEY UPDATE
            ORDER_LINE_AMOUNT = orderLineAmountVar,
            PRODUCT_DESCRIPTION = orderDescriptionVar;

        -- Insert or update the INVOICE table
        INSERT INTO INVOICE (ORDER_ID, INVOICE_REFERENCE, INVOICE_DATE, INVOICE_STATUS, INVOICE_HOLD_REASON, INVOICE_AMOUNT, INVOICE_DESCRIPTION)
        VALUES (orderIdVar, invoiceReferenceVar, invoiceDateVar, invoiceStatusVar, invoiceHoldReasonVar, invoiceAmountVar, invoiceDescriptionVar)
        ON DUPLICATE KEY UPDATE
            INVOICE_REFERENCE = invoiceReferenceVar,
            INVOICE_DATE = invoiceDateVar,
            INVOICE_STATUS = invoiceStatusVar,
            INVOICE_HOLD_REASON = invoiceHoldReasonVar,
            INVOICE_AMOUNT = invoiceAmountVar,
            INVOICE_DESCRIPTION = invoiceDescriptionVar;

        -- Insert or update the ORDER_SUPPLIER_RELATION table
        INSERT INTO ORDER_SUPPLIER_RELATION (ORDER_ID, SUPPLIER_ID)
        VALUES (orderIdVar, supplierIdVar)
        ON DUPLICATE KEY UPDATE SUPPLIER_ID = supplierIdVar;

    END LOOP;

    -- Close cursor
    CLOSE cur;

END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE GenerateOrderSummaryReport()
BEGIN
    -- Temporary table to store the report data
    CREATE TEMPORARY TABLE OrderSummaryReport (
        OrderReference INT,
        OrderPeriod VARCHAR(7),
        SupplierName VARCHAR(100),
        OrderTotalAmountFormatted VARCHAR(15),
        OrderStatus VARCHAR(50),
        InvoiceReference VARCHAR(50),
        InvoiceTotalAmountFormatted VARCHAR(15),
        Action VARCHAR(20)
    );

    -- Populate the temporary table with required data
    INSERT INTO OrderSummaryReport (
        OrderReference,
        OrderPeriod,
        SupplierName,
        OrderTotalAmountFormatted,
        OrderStatus,
        InvoiceReference,
        InvoiceTotalAmountFormatted,
        Action
    )
    SELECT
        CAST(SUBSTRING(ORDER_REF, 3) AS SIGNED) AS OrderReference,
        DATE_FORMAT(ORDER_DATE, '%b-%y') AS OrderPeriod,
        CONCAT(UCASE(SUBSTRING_INDEX(SUPPLIER_NAME, ' ', 1)), ' ', LCASE(SUBSTRING(SUPPLIER_NAME FROM LOCATE(' ', SUPPLIER_NAME) + 1))) AS SupplierName,
        FORMAT(ORDER_TOTAL_AMOUNT, 2) AS OrderTotalAmountFormatted,
        ORDER_STATUS,
        INVOICE_REFERENCE,
        FORMAT(INVOICE_AMOUNT, 2) AS InvoiceTotalAmountFormatted,
        CASE
            WHEN COUNT(DISTINCT INVOICE_STATUS) = 1 AND MAX(INVOICE_STATUS) = 'Paid' THEN 'OK'
            WHEN COUNT(DISTINCT INVOICE_STATUS) = 1 AND MAX(INVOICE_STATUS) = 'Pending' THEN 'To follow up'
            ELSE 'To verify'
        END AS Action
    FROM
        XXBCM_ORDER_MGT
    GROUP BY
        OrderReference, OrderPeriod, SupplierName, OrderTotalAmountFormatted, OrderStatus, InvoiceReference, InvoiceTotalAmountFormatted;

    -- Return the report data
    SELECT * FROM OrderSummaryReport ORDER BY STR_TO_DATE(OrderPeriod, '%b-%y') DESC;

    -- Drop the temporary table
    DROP TEMPORARY TABLE IF EXISTS OrderSummaryReport;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE GetThirdHighestOrder()
BEGIN
    SELECT 
        ORDER_REF,
        ORDER_DATE,
        SUPPLIER_NAME,
        SUPP_CONTACT_NAME,
        SUPP_ADDRESS,
        SUPP_CONTACT_NUMBER,
        SUPP_EMAIL,
        ORDER_TOTAL_AMOUNT,
        ORDER_DESCRIPTION,
        ORDER_STATUS,
        ORDER_LINE_AMOUNT,
        INVOICE_REFERENCE,
        INVOICE_DATE,
        INVOICE_STATUS,
        INVOICE_HOLD_REASON,
        INVOICE_AMOUNT,
        INVOICE_DESCRIPTION
    FROM
        XXBCM_ORDER_MGT
    ORDER BY
        ORDER_TOTAL_AMOUNT DESC
    LIMIT 1 OFFSET 2;
END //

DELIMITER ;
CALL GetThirdHighestOrder();

DELIMITER //

CREATE PROCEDURE SupplierOrderSummary()
BEGIN
    SELECT 
        s.SUPPLIER_NAME,
        COUNT(o.ORDER_ID) AS NumOfOrders,
        SUM(o.ORDER_TOTAL_AMOUNT) AS TotalAmountOrdered
    FROM 
        SUPPLIER s
    JOIN 
        ORDER_SUPPLIER_RELATION osr ON s.SUPPLIER_ID = osr.SUPPLIER_ID
    JOIN 
        ORDER_HEADER o ON osr.ORDER_ID = o.ORDER_ID
    WHERE 
        o.ORDER_DATE BETWEEN '2017-01-01' AND '2017-08-31'
    GROUP BY 
        s.SUPPLIER_ID;
END //

DELIMITER ;
CALL SupplierOrderSummary();


