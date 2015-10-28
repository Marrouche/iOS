//
//  Config.h
//  HouseHunter
//
//  
//  Copyright (c) 2015 MandMBadgers. All rights reserved.
//

#ifndef RealEstateFinder_Config_h
#define RealEstateFinder_Config_h


// SETTING TO NO WILL DISPLAY TEST ADS
// SETTING TO YES WILL REMOVE ALL TEST ADS
#define REMOVE_TEST_ADS NO

// Specify test ads id here
// To add another id follow this format
// [NSArray arrayWithObjects:GAD_SIMULATOR_ID, @"DEVICE_ID", nil]
#define TEST_ADS_ID [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil]

// Change this on your own consumer key
#define TWITTER_CONSUMER_KEY @"15ooS5bXc3vSK3tmwEMC3Cbtv"

// Change this on your own consumer secret
#define TWITTER_CONSUMER_SECRET @"LGctMNKYCUHL1gw1PlSuhTCQvhrbhhJlt31PbQr2VZDy49SJKu"

// You AdMob Banner Unit ID
#define BANNER_UNIT_ID @"ca-app-pub-2715300260198944/9530294111"

// About Us Email
#define ABOUT_US_EMAIL @"mandmbadgers@gmail.com"



// Root url of your webserver (must change this)

#define BASE_URL @"http://www.madicoestate.com/app/"

// SHOW ADS ONLY IN MAIN VIEW (MAP)
#define SHOW_ADS_MAIN_VIEW NO

// SHOW ADS ON FAVORITES VIEW
#define SHOW_ADS_FAVORITES_VIEW NO

// SHOW ADS ON FEATURED VIEW
#define SHOW_ADS_FEATURED_VIEW NO

// SHOW ADS ON FOR RENT VIEW
#define SHOW_ADS_FOR_RENT_VIEW NO

// SHOW ADS ON FOR SALE VIEW
#define SHOW_ADS_FOR_SALE_VIEW NO

// SHOW ADS ON REAL ESTATE DETAILS VIEW
#define SHOW_ADS_REAL_ESTATE_DETAIL_VIEW NO

// SHOW ADS ON AGENT LISTING VIEW
#define SHOW_ADS_AGENT_LISTING_VIEW NO

// SHOW ADS ON AGENT DETAIL VIEW
#define SHOW_ADS_AGENT_DETAIL_VIEW NO

// SHOW ADS ON SEARCH VIEW
#define SHOW_ADS_SEARCH_VIEW NO

// DEFAULT STATUS INDEX FOR SEARCHING
#define STATUS_INDEX_DEFAULT 0

// MIN PRICE FOR SEARCHING
#define PRICE_RANGE_MIN_DEFAULT 0

// MAX PRICE FOR SEARCHING
#define PRICE_RANGE_MAX_DEFAULT 4000000

// MINIMUM PRICE RANGE
#define PRICE_RANGE_MIN_RANGE 500000

// PRICE RANGE STEP VALUE
#define PRICE_RANGE_STEP_VALUE 50000


// DEFAULT PROPERTY TYPE INDEX FOR SEARCHING
#define PROPERTY_TYPE_DEFAULT LOCALIZED_NOT_NULL(@"ALL_TYPE")

// DEFAULT BEDS INDEX FOR SEARCHING
#define BEDS_INDEX_DEFAULT 0

// DEFAULT BATHS INDEX FOR SEARCHING
#define BATHS_INDEX_DEFAULT 0


// MIN SQUARE FEET FOR SEARCHING
#define SQUARE_FEET_MIN_DEFAULT 0

// MAX SQUARE FEET FOR SEARCHING
#define SQUARE_FEET_MAX_DEFAULT 4000

// MAX SQUARE RANGE
#define SQUARE_FEET_MIN_RANGE 500

// SQUARE FEET RANGE STEP VALUE
#define SQUARE_FEET_STEP_VALUE 50


// MIN YEAR BUILT IN FOR SEARCHING
#define YEARS_BUILT_IN_MIN_DEFAULT 1900

// MAX YEAR BUILT IN FOR SEARCHING
#define YEARS_BUILT_IN_MAX_DEFAULT 2025

// YEARS BUILT IN RANGE
#define YEARS_BUILT_IN_MIN_RANGE 13

// YEARS BUILT IN STEP VALUE
#define YEARS_BUILT_IN_STEP_VALUE 1


// MIN LOT SIZE FOR SEARCHING
#define LOT_SIZE_MIN_DEFAULT 0

// MAX LOT SIZE FOR SEARCHING
#define LOT_SIZE_MAX_DEFAULT 50000

// LOT SIZE RANGE
#define LOT_SIZE_MIN_RANGE 5000

// LOT SIZE STEP VALUE
#define LOT_SIZE_STEP_VALUE 1000


// AdMob background color
#define AD_BG_COLOR [UIColor clearColor]

// AdMob banner height
#define BANNER_HEIGHT 50

// MAX PHOTOS UPLOADED TO AGENT ENTRIES (SET THIS ALWAYS TO 1)
#define MAX_PHOTOS_UPLOAD_AGENT 1

// MAX PHOTOS UPLOADED TO REAL ESTATE ENTRIES
#define MAX_PHOTOS_UPLOAD_REALESTATE 5


// MAX RADIUS TO DETERMINE MAP PINS NEARBY
#define MAX_RADIUS_NEARBY_IN_METERS 1000

#define SIDE_VIEW_FRAME_WIDTH 280


#define WILL_DOWNLOAD_DATA YES

#define STATUS_SUCCESS @"-1"
#define STATUS_ERROR_LOGIN @"1"
#define STATUS_ERROR_CREDENTIALS @"2"
#define STATUS_ERROR_INVALID_ACCESS @"3"
#define STATUS_ERROR_USERNAME_EXIST @"4"
#define STATUS_ERROR_OUT_OF_SYNC @"5"

#define LOCALIZED(str) NSLocalizedString(str, nil)

#define LOCALIZED_NOT_NULL(str) NSLocalizedString(str, @"")


// YES - If you choose JSON Format
// NO - If you choose XML Format
#define WILL_USE_JSON_FORMAT YES


// URL of the XML File
#define DATA_JSON_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/data_json.php"]

// URL of the XML File
#define DATA_JSON_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/data_json.php"]

// URL of the XML File
#define DATA_XML_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/data_xml.php"]


// LOG IN URL
#define LOGIN_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/login.php"]

// REGISTER URL
#define REGISTER_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/register.php"]

// AGENT URL
#define AGENT_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/agent_api.php"]

// FILE UPLOAD AGENT URL
#define FILE_UPLOADER_AGENT_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/file_uploader_agent_photo.php"]

// REAL ESTATE URL
#define REAL_ESTATE_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/realestate_api.php"]

// FILE UPLOAD REAL ESTATE URL
#define FILE_UPLOADER_REALESTATE_URL [NSString stringWithFormat:@"%@%@", BASE_URL, @"rest/file_uploader_realestate_photo.php"]

#endif
