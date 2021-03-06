#Stub Data Source - Base URL
#Stub Source: https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/settings-db-stub
#Couch APIs Source: https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis


#Last updated 19 Sept, 2019 (Abhijith C S)


echo 
echo 
echo - - - - - - - - - - - - - - - - - - - 
echo Welcome to the Database Setup Wizard
echo - - - - - - - - - - - - - - - - - - - 
echo
echo 1. Please enter CouchDB Admin Name:
read database_user_name
echo 2. Please enter CouchDB Admin Password:
read database_user_password
echo 3. Please enter CouchDB IP Address [Default is 127.0.0.1]:
read database_ip
echo 4. Please enter CouchDB Port Number [Default is 5984]:
read database_port
echo 
echo Creating the 8 Databases...
echo ...........................
echo 
echo [1/17] Creating accelerate_bills
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_bills
echo 
echo [2/17] Creating accelerate_cancelled_invoices
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_cancelled_invoices
echo 
echo [3/17] Creating accelerate_cancelled_orders
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_cancelled_orders
echo 
echo [4/17] Creating accelerate_invoices
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_invoices
echo 
echo [5/17] Creating accelerate_kot
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_kot
echo 
echo [6/17] Creating accelerate_menu_images
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_menu_images
echo 
echo [7/17] Creating accelerate_online_orders
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_online_orders
echo 
echo [8/17] Creating accelerate_settings
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings
echo 
echo [9/17] Creating accelerate_taps_orders
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_taps_orders
echo 
echo [10/17] Creating accelerate_users
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_users
echo 
echo [11/17] Creating accelerate_tables
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_tables
echo 
echo [12/17] Creating accelerate_wounded
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_wounded
echo 
echo [13/17] Creating accelerate_kot_print_requests
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_kot_print_requests
echo 
echo [14/17] Creating accelerate_other_menu_mappings
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_other_menu_mappings
echo 
echo [15/17] Creating accelerate_action_requests
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_action_requests
echo 
echo [16/17] Creating accelerate_item_cancellations
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_item_cancellations
echo 
echo [17/17] Creating accelerate_third_party_orders
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_third_party_orders




echo
echo
echo Uploading stub data to the Settings Database...
echo ...............................................
echo 
echo [1/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_BILLING_MODES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_BILLING_MODES -d "$stub_data_received"
echo
echo [2/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_BILLING_PARAMETERS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_BILLING_PARAMETERS -d "$stub_data_received"
echo
echo [3/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_BILL_INDEX.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_BILL_INDEX -d "$stub_data_received"
echo
echo [4/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_BILL_LAYOUT.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_BILL_LAYOUT -d "$stub_data_received"
echo
echo [5/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_CANCELLATION_REASONS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_CANCELLATION_REASONS -d "$stub_data_received"
echo
echo [6/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_CONFIGURED_MACHINES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_CONFIGURED_MACHINES -d "$stub_data_received"
echo
echo [7/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_CONFIGURED_PRINTERS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_CONFIGURED_PRINTERS -d "$stub_data_received"
echo
echo [8/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_COOKING_INGREDIENTS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_COOKING_INGREDIENTS -d "$stub_data_received"
echo
echo [9/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_DINE_SESSIONS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_DINE_SESSIONS -d "$stub_data_received"
echo
echo [10/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_DISCOUNT_TYPES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_DISCOUNT_TYPES -d "$stub_data_received"
echo
echo [11/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_KOT_INDEX.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_KOT_INDEX -d "$stub_data_received"
echo
echo [12/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_KOT_RELAYING.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_KOT_RELAYING -d "$stub_data_received"
echo
echo [13/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_MASTER_MENU.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_MASTER_MENU -d "$stub_data_received"
echo
echo [14/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_MENU_CATALOG.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_MENU_CATALOG -d "$stub_data_received"
echo
echo [15/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_MENU_CATEGORIES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_MENU_CATEGORIES -d "$stub_data_received"
echo
echo [16/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_ORDER_SOURCES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_ORDER_SOURCES -d "$stub_data_received"
echo
echo [17/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_PAYMENT_MODES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_PAYMENT_MODES -d "$stub_data_received"
echo
echo [18/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_PERSONALISATIONS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_PERSONALISATIONS -d "$stub_data_received"
echo
echo [19/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_SAVED_COMMENTS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_SAVED_COMMENTS -d "$stub_data_received"
echo
echo [20/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_SAVED_ORDERS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_SAVED_ORDERS -d "$stub_data_received"
echo
echo [21/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_SHORTCUT_KEYS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_SHORTCUT_KEYS -d "$stub_data_received"
echo
echo [22/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_STAFF_PROFILES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_STAFF_PROFILES -d "$stub_data_received"
echo
echo [23/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_SYSTEM_OPTIONS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_SYSTEM_OPTIONS -d "$stub_data_received"
echo
echo [24/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_TABLE_SECTIONS.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_TABLE_SECTIONS -d "$stub_data_received"
echo
echo [25/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_TEXT_TO_KITCHEN_LOG.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_TEXT_TO_KITCHEN_LOG -d "$stub_data_received"
echo
echo [26/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_TOKEN_INDEX.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_TOKEN_INDEX -d "$stub_data_received"
echo
echo [27/27]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/stub-data/ACCELERATE_REGISTERED_DEVICES.json)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_settings/ACCELERATE_REGISTERED_DEVICES -d "$stub_data_received"



echo
echo Uploading JavaScript APIs
echo .........................

#BILL
echo
echo [1/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_bill.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_bills/_design/bills -d "$stub_data_received"
echo
echo [2/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_bill_filters.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_bills/_design/bill-filters -d "$stub_data_received"
echo
echo [3/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_bill_summary.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_bills/_design/bill-summary -d "$stub_data_received"


#CANCELLED INVOICES
echo
echo [4/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_cancelled_invoice_filters.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_cancelled_invoices/_design/invoice-filters -d "$stub_data_received"
echo
echo [5/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_cancelled_invoice_summary.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_cancelled_invoices/_design/invoice-summary -d "$stub_data_received"
echo
echo [6/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_cancelled_invoices.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_cancelled_invoices/_design/invoices -d "$stub_data_received"


#CANCELLED ORDERS
echo
echo [7/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_cancelled_order_filters.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_cancelled_orders/_design/order-filters -d "$stub_data_received"
echo
echo [8/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_cancelled_orders.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_cancelled_orders/_design/orders -d "$stub_data_received"


#INVOICES
echo
echo [9/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_invoice.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_invoices/_design/invoices -d "$stub_data_received"
echo
echo [10/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_invoice_filters.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_invoices/_design/invoice-filters -d "$stub_data_received"
echo
echo [11/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_invoice_refund_summary.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_invoices/_design/refund-summary -d "$stub_data_received"
echo
echo [12/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_invoice_summary.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_invoices/_design/invoice-summary -d "$stub_data_received"
echo
echo [13/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_invoice_order_summary.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_invoices/_design/order-summary -d "$stub_data_received"


#KOT
echo
echo [14/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_kot_summary.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_kot/_design/kot-summary -d "$stub_data_received"
echo
echo [15/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_kot_fetch.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_kot/_design/kot-fetch -d "$stub_data_received"
echo
echo [16/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_kot_table_mapping.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_kot/_design/table-mapping -d "$stub_data_received"


#ONLINE ORDERS
echo
echo [17/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_online_orders_filter.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_online_orders/_design/filter-by -d "$stub_data_received"


#USERS
echo
echo [18/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_users_names.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_users/_design/names -d "$stub_data_received"
echo
echo [19/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_users_search.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_users/_design/search -d "$stub_data_received"


#TABLES
echo
echo [20/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_table_filters.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_tables/_design/filter-tables -d "$stub_data_received"


#TAPS ORDERS
echo
echo [21/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_taps_orders.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_taps_orders/_design/orders -d "$stub_data_received"


#ACTION REQUESTS
echo
echo [22/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_action_requests.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_action_requests/_design/requests -d "$stub_data_received"


#PRINT REQUESTS
echo
echo [23/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_print_requests.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_kot_print_requests/_design/print-requests -d "$stub_data_received"


#ITEM CANCELLATIONS
echo
echo [24/24]
stub_data_received=$(curl https://raw.githubusercontent.com/Accelerate-net/vegaPOS/master/tools/couchdb-apis/couchdb_item_cancellations.js)
curl -X PUT http://$database_user_name:$database_user_password@$database_ip:$database_port/accelerate_item_cancellations/_design/cancellation-summary -d "$stub_data_received"


echo
echo
echo Finished.
echo
echo

















