//
//
//  HouseHunter
//
//
//  Copyright (c) 2015 MandMBadgers. All rights reserved.
//

#import "RealEstateAddViewController.h"
#import "AppDelegate.h"

@interface RealEstateAddViewController ()

@end

@implementation RealEstateAddViewController

@synthesize scrollViewMain;
@synthesize arrayPhotos;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.titleView = [MGUIAppearance createLogo:HEADER_LOGO];
    self.view.backgroundColor = BG_VIEW_COLOR;
    
    [MGUIAppearance enhanceNavBarController:self.navigationController
                               barTintColor:WHITE_TEXT_COLOR
                                  tintColor:WHITE_TEXT_COLOR
                             titleTextColor:WHITE_TEXT_COLOR];
    
    _realEstateView = [[MGRawView alloc] initWithFrame:scrollViewMain.frame nibName:@"RealEstateAddView"];
    
    [scrollViewMain addSubview:_realEstateView];
    scrollViewMain.contentSize = _realEstateView.frame.size;
    
    
    [_realEstateView.buttonNext addTarget:self
                                  action:@selector(didClickNextButton:)
                        forControlEvents:UIControlEventTouchUpInside];
    
    [_realEstateView.buttonPhotos addTarget:self
                                    action:@selector(didClickButtonPhotos:)
                          forControlEvents:UIControlEventTouchUpInside];
    
    _realEstateView.textFieldPrice.delegate = self;
    _realEstateView.textFieldBeds.delegate = self;
    _realEstateView.textFieldBaths.delegate = self;
    _realEstateView.textFieldSqft.delegate = self;
    _realEstateView.textFieldPriceSqft.delegate = self;
    _realEstateView.textFieldRooms.delegate = self;
    _realEstateView.textFieldLotSize.delegate = self;
    _realEstateView.textFieldBuiltIn.delegate = self;
    _realEstateView.textFieldPropertyType.delegate = self;
    _realEstateView.textFieldAddress.delegate = self;
    
    _realEstateView.textFieldZipCode.delegate = self;
    _realEstateView.textFieldCountry.delegate = self;
    
    _realEstateView.textViewDetails.delegate = self;
    
    [_realEstateView.labelStatus setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelPrice setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelBeds setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelBath setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelSqft setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelPriceSqft setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelRooms setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelLotSize setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelBuiltIn setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelPropertyType setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelAddress setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelPhotos setTextColor:THEME_GREEN_TINT_COLOR];
    
    [_realEstateView.labelCountry setTextColor:THEME_GREEN_TINT_COLOR];
    [_realEstateView.labelZipCode setTextColor:THEME_GREEN_TINT_COLOR];
    
    [_realEstateView.labelPrice setText:LOCALIZED(@"PRICE")];
    [_realEstateView.labelBeds setText:LOCALIZED(@"BEDS")];
    [_realEstateView.labelBath setText:LOCALIZED(@"BATHS")];
    [_realEstateView.labelSqft setText:LOCALIZED(@"SQFT")];
    [_realEstateView.labelPriceSqft setText:LOCALIZED(@"PRICE_SQFT")];
    [_realEstateView.labelRooms setText:LOCALIZED(@"ROOMS")];
    [_realEstateView.labelLotSize setText:LOCALIZED(@"LOT_SIZE")];
    [_realEstateView.labelBuiltIn setText:LOCALIZED(@"BUILT_IN")];
    [_realEstateView.labelPropertyType setText:LOCALIZED(@"PROPERTY_TYPE")];
    [_realEstateView.labelAddress setText:LOCALIZED(@"ADDRESS")];
    [_realEstateView.labelPhotos setText:LOCALIZED(@"PHOTOS")];
    [_realEstateView.labelCountry setText:LOCALIZED(@"COUNTRY")];
    [_realEstateView.labelZipCode setText:LOCALIZED(@"ZIPCODE")];
    
    [_realEstateView.textFieldPrice setPlaceholder:LOCALIZED(@"PRICE")];
    [_realEstateView.textFieldBeds setPlaceholder:LOCALIZED(@"BEDS")];
    [_realEstateView.textFieldBaths setPlaceholder:LOCALIZED(@"BATHS")];
    [_realEstateView.textFieldSqft setPlaceholder:LOCALIZED(@"SQFT")];
    [_realEstateView.textFieldPriceSqft setPlaceholder:LOCALIZED(@"PRICE_SQFT")];
    [_realEstateView.textFieldRooms setPlaceholder:LOCALIZED(@"ROOMS")];
    [_realEstateView.textFieldLotSize setPlaceholder:LOCALIZED(@"LOT_SIZE")];
    [_realEstateView.textFieldBuiltIn setPlaceholder:LOCALIZED(@"BUILT_IN")];
    [_realEstateView.textFieldPropertyType setPlaceholder:LOCALIZED(@"PROPERTY_TYPE_VAL")];
    [_realEstateView.textFieldAddress setPlaceholder:LOCALIZED(@"ADDRESS")];
    [_realEstateView.textFieldCountry setPlaceholder:LOCALIZED(@"COUNTRY")];
    [_realEstateView.textFieldZipCode setPlaceholder:LOCALIZED(@"ZIPCODE")];
    
    _realEstateView.textViewDetails.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldPrice.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldBeds.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldBaths.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldSqft.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldPriceSqft.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldRooms.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldLotSize.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldBuiltIn.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldPropertyType.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldAddress.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldCountry.autocorrectionType = UITextAutocorrectionTypeNo;
    _realEstateView.textFieldZipCode.autocorrectionType = UITextAutocorrectionTypeNo;
    
    [_realEstateView.buttonPropertyType setTitle:LOCALIZED_NOT_NULL(@"ALL_TYPE")
                                    forState:UIControlStateNormal];
    
    [_realEstateView.buttonPropertyType setTitle:LOCALIZED_NOT_NULL(@"ALL_TYPE")
                                    forState:UIControlStateSelected];
    
    [_realEstateView.buttonPropertyType addTarget:self
                                       action:@selector(didClickButtonPropertyType:)
                             forControlEvents:UIControlEventTouchUpInside];

    
    [_realEstateView.label1 setText:LOCALIZED(@"CREATE_REALESTATE_HEADER")];
    
    [_realEstateView.segmentStatus setTitle:LOCALIZED(@"FOR_SALE") forSegmentAtIndex:0];
    [_realEstateView.segmentStatus setTitle:LOCALIZED(@"FOR_RENT") forSegmentAtIndex:1];
    [_realEstateView.segmentStatus setTintColor:THEME_GREEN_TINT_COLOR];
    
    
    NSString* photoCount = [NSString stringWithFormat:@"0 %@", LOCALIZED(@"PHOTOS_INFO")];
    [_realEstateView.labelInfo setText:photoCount];
    
    [self createBorderColor:_realEstateView.textViewDetails];
    
    [_realEstateView.buttonNext setTitle:LOCALIZED(@"CREATE_BUTTON_REALESTATE")
                                forState:UIControlStateNormal];
    
    [_realEstateView.buttonNext setTitle:LOCALIZED(@"CREATE_BUTTON_REALESTATE")
                                forState:UIControlStateSelected];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidShow:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidHide:)
                                                 name:UIKeyboardDidHideNotification
                                               object:nil];
    
    
    UIEdgeInsets inset = scrollViewMain.contentInset;
    inset.bottom = NAV_BAR_OFFSET_DEFAULT;
    scrollViewMain.contentInset = inset;
    
    _realEstateView.mapViewDirections.delegate = self;
    [_realEstateView.mapViewDirections baseInit];
    [_realEstateView.mapViewDirections mapView].showsUserLocation = YES;
    
    [self findMyCurrentLocation];
}

-(void) createBorderColor:(UIView*) view {
    
    [MGUtilities createBordersInView:view
                         borderColor:THEME_GREEN_TINT_COLOR
                         shadowColor:[UIColor clearColor]
                         borderWidth:2.0f
                        borderRadius:0.0];
}


-(void)keyboardDidShow:(id)sender {
    
    UIEdgeInsets inset = scrollViewMain.contentInset;
    inset.bottom = 216;
    scrollViewMain.contentInset = inset;
    
    inset = scrollViewMain.scrollIndicatorInsets;
    inset.bottom = 216;
    scrollViewMain.scrollIndicatorInsets = inset;
}

-(void)keyboardDidHide:(id)sender {
    
    UIEdgeInsets inset = scrollViewMain.contentInset;
    inset.bottom = NAV_BAR_OFFSET;
    scrollViewMain.contentInset = inset;
    
    inset = scrollViewMain.scrollIndicatorInsets;
    inset.bottom = NAV_BAR_OFFSET;
    scrollViewMain.scrollIndicatorInsets = inset;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == _realEstateView.textFieldPrice) {
		[_realEstateView.textFieldPrice resignFirstResponder];
		[_realEstateView.textFieldBeds becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldBeds) {
		[_realEstateView.textFieldBeds resignFirstResponder];
        [_realEstateView.textFieldBaths becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldBaths) {
		[_realEstateView.textFieldBaths resignFirstResponder];
        [_realEstateView.textFieldSqft becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldSqft) {
		[_realEstateView.textFieldSqft resignFirstResponder];
        [_realEstateView.textFieldPriceSqft becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldPriceSqft) {
		[_realEstateView.textFieldPriceSqft resignFirstResponder];
        [_realEstateView.textFieldRooms becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldRooms) {
		[_realEstateView.textFieldRooms resignFirstResponder];
        [_realEstateView.textFieldLotSize becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldLotSize) {
		[_realEstateView.textFieldLotSize resignFirstResponder];
        [_realEstateView.textFieldBuiltIn becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldBuiltIn) {
		[_realEstateView.textFieldBuiltIn resignFirstResponder];
        [_realEstateView.textFieldZipCode becomeFirstResponder];
	}
    else if (textField == _realEstateView.textFieldZipCode) {
		[_realEstateView.textFieldZipCode resignFirstResponder];
        [_realEstateView.textFieldCountry becomeFirstResponder];
        
	}
    else if (textField == _realEstateView.textFieldCountry) {
		[_realEstateView.textFieldCountry resignFirstResponder];
        [_realEstateView.textFieldAddress becomeFirstResponder];
        
	}
    else if (textField == _realEstateView.textFieldAddress) {
		[_realEstateView.textFieldAddress resignFirstResponder];
        [_realEstateView.textViewDetails becomeFirstResponder];
	}
    
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    
    [textField resignFirstResponder];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    return (newLength > MAX_CHARS_INPUT) ? NO : YES;
}

-(void)textViewDidEndEditing:(UITextView *)textView {
    
    [textView resignFirstResponder];
}

-(BOOL)textViewShouldEndEditing:(UITextView *)textView {
    [textView resignFirstResponder];
    return YES;
}

- (BOOL) textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if([text isEqualToString:@"\n"]){
        [textView resignFirstResponder];
        return NO;
    }else{
        return YES;
    }
}

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    
    [scrollViewMain scrollRectToVisible:_realEstateView.textViewDetails.frame animated:YES];
    
    return YES;
}

-(void) textViewDidChangeSelection:(UITextView *)textView {
    
    NSString* notes = [[textView text] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    if([notes isEqualToString:TEXT_VIEW_PLACEHOLDER_TEXT])
        notes = [notes stringByReplacingOccurrencesOfString:TEXT_VIEW_PLACEHOLDER_TEXT withString:@""];
    
    [_realEstateView.textViewDetails setText:notes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didClickButtonPhotos:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Extra_iPhone" bundle:nil];
    RealEstateImagesViewController* vc;
    vc = [storyboard instantiateViewControllerWithIdentifier:@"storyboardImagesRealEstate"];
    vc.realEstatePhotosDelegate = self;
    vc.arrayPhotos = arrayPhotos;
    [self.navigationController pushViewController:vc animated:YES];
}

-(void) returnPhotoArrays:(NSMutableArray *)photos {
    
    arrayPhotos = [NSMutableArray arrayWithArray:photos];
    NSString* photoCount = [NSString stringWithFormat:@"%d %@", (int)arrayPhotos.count, LOCALIZED(@"PHOTOS_INFO")];
    [_realEstateView.labelInfo setText:photoCount];
}

-(void)returnPhotoArrayFromFile:(NSMutableArray *)photos {
    
}

#pragma mark - Selector

-(void) didClickNextButton:(id)sender {
    
    if(![MGUtilities hasInternetConnection]) {
        
        [MGUtilities showAlertTitle:LOCALIZED(@"NETWORK_ERROR")
                            message:LOCALIZED(@"NETWORK_ERROR_DETAILS")];
        return;
    }
    
    AppDelegate* delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext* context = delegate.managedObjectContext;
    
    NSString* className = NSStringFromClass([RealEstate class]);
    NSEntityDescription *entity = [NSEntityDescription entityForName:className inManagedObjectContext:context];
    RealEstate* realEstate = (RealEstate*)[[NSManagedObject alloc] initWithEntity:entity insertIntoManagedObjectContext:nil];
    
    realEstate.status = LOCALIZED(@"FOR_RENT");
    
    if([_realEstateView.segmentStatus selectedSegmentIndex] == 0) {
        realEstate.status = LOCALIZED(@"FOR_SALE");
    }
    
    realEstate.price = [_realEstateView.textFieldPrice text];
    realEstate.beds = [_realEstateView.textFieldBeds text];
    realEstate.baths = [_realEstateView.textFieldBaths text];
    realEstate.sqft = [_realEstateView.textFieldSqft text];
    realEstate.price_per_sqft = [_realEstateView.textFieldPriceSqft text];
    realEstate.rooms = [_realEstateView.textFieldRooms text];
    realEstate.lot_size = [_realEstateView.textFieldLotSize text];
    realEstate.built_in = [_realEstateView.textFieldBuiltIn text];
    realEstate.property_type = [[_realEstateView.buttonPropertyType titleLabel] text];
    realEstate.address = [_realEstateView.textFieldAddress text];
    realEstate.desc = [_realEstateView.textViewDetails text];
    realEstate.zipcode = [_realEstateView.textFieldZipCode text];
    realEstate.country = [_realEstateView.textFieldCountry text];
    realEstate.lat = @"";
    realEstate.lon = @"";
    
    if(CLLocationCoordinate2DIsValid(_dropAtCoords)) {
        realEstate.lat = [NSString stringWithFormat:@"%f", _dropAtCoords.latitude];
        realEstate.lon = [NSString stringWithFormat:@"%f", _dropAtCoords.longitude];
    }

    if([realEstate.price length] == 0 ||
       [realEstate.address length] == 0 ||
       [realEstate.property_type length] == 0 ||
       [realEstate.price_per_sqft length] == 0 ||
       [realEstate.sqft length] == 0) {
        
        [MGUtilities showAlertTitle:LOCALIZED(@"FIELD_REQUIRED_ERROR")
                            message:LOCALIZED(@"FIELD_REQUIRED_ERROR_DETAILS_REALESTATE")];
        return;
    }
    
    [self startSync:realEstate];
}


-(void) startSync:(id)sender {
    
    [self.navigationItem setHidesBackButton:YES];
    
    RealEstate* realEstate = (RealEstate*)sender;
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.detailsLabelText = LOCALIZED(@"CREATING_REALESTATE");
    
    [self.view addSubview:hud];
    [self.view setUserInteractionEnabled:NO];
    
    NSURL *url = [NSURL URLWithString:REAL_ESTATE_URL];
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:url];
    
    AgentSession* agentSession = [UserAccessSession getAgentSession];
    UserSession* session = [UserAccessSession getUserSession];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:
                            
                            session.userId, @"user_id",
                            session.loginHash, @"login_hash",
                            realEstate.status, @"status",
                            realEstate.price, @"price",
                            realEstate.beds, @"beds",
                            realEstate.baths, @"baths",
                            realEstate.sqft, @"sqft",
                            realEstate.price_per_sqft, @"price_per_sqft",
                            realEstate.rooms, @"rooms",
                            realEstate.lot_size, @"lot_size",
                            realEstate.built_in, @"built_in",
                            realEstate.property_type, @"property_type",
                            realEstate.address, @"address",
                            
                            realEstate.desc, @"desc1",
                            realEstate.zipcode, @"zipcode",
                            realEstate.country, @"country",
                            agentSession.agent_id, @"agent_id",
                            realEstate.lat, @"lat",
                            realEstate.lon, @"lon",
                            nil];
    
    [httpClient postPath:@"" parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSError* error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseObject
                                                             options:kNilOptions
                                                               error:&error];
        
        NSString *responseStr = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"REAL_ESTATE_SYNC = %@", responseStr);
        
        NSDictionary* dictRealEstate = [json objectForKey:@"realestate_info"];
        NSDictionary* dictStatus = [json objectForKey:@"status"];
        
        if([[dictStatus valueForKey:@"status_code"] isEqualToString:STATUS_SUCCESS]) {
            
            if(![dictRealEstate isEqual:[NSNull null]]) {
                
                [CoreDataController insertRealEstateFromDictionary:dictRealEstate];
                _realestate_id = [dictRealEstate objectForKey:@"realestate_id"];
            }
            
            if(arrayPhotos.count > 0) {
                [self syncPhotos];
            }
            else {
                [self.navigationItem setHidesBackButton:NO];
                [self.navigationController popViewControllerAnimated:YES];
            }
            
        }
        else {
            
            [MGUtilities showAlertTitle:LOCALIZED(@"UNSYNC_CONNECTION_ERROR")
                                message:[dictStatus valueForKey:@"status_text"]];
            
            [self.navigationItem setHidesBackButton:NO];
        }
        
        [hud removeFromSuperview];
        [self.view setUserInteractionEnabled:YES];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"[HTTPClient Error]: %@", error.localizedDescription);
        
        [hud removeFromSuperview];
        [self.view setUserInteractionEnabled:YES];
        
        [MGUtilities showAlertTitle:LOCALIZED(@"UNSYNC_CONNECTION_ERROR")
                            message:LOCALIZED(@"UNSYNC_CONNECTION_ERROR_DETAILS")];
        
        [self.navigationItem setHidesBackButton:NO];
        
    }];
}

-(void)syncPhotos {
    
    _index = 0;
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.labelText = LOCALIZED(@"SYNCING_PHOTOS");
    
    [self.view addSubview:hud];
    [self.view setUserInteractionEnabled:NO];
    [self startSyncPhoto:hud index:_index];
}

-(void) startSyncPhoto:(MBProgressHUD*)hud index:(int)index {
    
    hud.labelText = [NSString stringWithFormat:@"%@ (%d/%lu)",
                     LOCALIZED(@"SYNCING_PHOTOS"),
                     index + 1,
                     (unsigned long)arrayPhotos.count];
    
    Photo* photo = [arrayPhotos objectAtIndex:index];
    
    NSURL *url = [NSURL URLWithString:FILE_UPLOADER_REALESTATE_URL];
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:url];
    
    UserSession* session = [UserAccessSession getUserSession];
    NSDictionary *params = nil;
    
    
    if(photo.isImagePicked) {
        params = [NSDictionary dictionaryWithObjectsAndKeys:
                  session.userId, @"user_id",
                  session.loginHash, @"login_hash",
                  _realestate_id, @"realestate_id",
                  nil];
    }
    else {
        params = [NSDictionary dictionaryWithObjectsAndKeys:
                  session.userId, @"user_id",
                  session.loginHash, @"login_hash",
                  photo.thumb_url, @"thumb_url",
                  photo.photo_url, @"photo_url",
                  _realestate_id, @"realestate_id",
                  nil];
    }
    
    NSMutableURLRequest *request = [httpClient multipartFormRequestWithMethod:@"POST" path:@"" parameters:params constructingBodyWithBlock: ^(id <AFMultipartFormData>formData) {
        
        if(photo.isImagePicked) {
            NSData* dataThumb = [[NSData alloc] initWithContentsOfURL:[NSURL fileURLWithPath:photo.thumb_url]];
            NSData* dataPhoto = [[NSData alloc] initWithContentsOfURL:[NSURL fileURLWithPath:photo.photo_url]];
            
            NSString* fullNameThumb = [photo.thumb_url lastPathComponent];
            NSString* fullNamePhoto = [photo.photo_url lastPathComponent];
            
            [formData appendPartWithFileData:dataThumb
                                        name:@"thumb_file"
                                    fileName:fullNameThumb
                                    mimeType:@"image/jpeg"];
            
            [formData appendPartWithFileData:dataPhoto
                                        name:@"photo_file"
                                    fileName:fullNamePhoto
                                    mimeType:@"image/jpeg"];
        }
    }];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSError* error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseObject
                                                             options:kNilOptions
                                                               error:&error];
        
        NSString *responseStr = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"PHOTO_REALESTATE_SYNC = %@", responseStr);
        
        NSDictionary* dictStatus = [json objectForKey:@"status"];
        NSDictionary* dictPhoto = [json objectForKey:@"photo_realestate_info"];
        
        if([[dictStatus valueForKey:@"status_code"] isEqualToString:STATUS_SUCCESS]) {
            
            if(photo.isImagePicked) {
                [MGFileManager deleteImageAtFilePath:photo.thumb_url];
                [MGFileManager deleteImageAtFilePath:photo.photo_url];
            }
            
            [CoreDataController insertPhotoFromDictionary:dictPhoto];
            
            if(index < arrayPhotos.count - 1) {
                ++_index;
                [self startSyncPhoto:hud index:_index];
            }
            else {
                [hud removeFromSuperview];
                [self.view setUserInteractionEnabled:YES];
                [self.navigationController popViewControllerAnimated:YES];
            }
        }
        else {
            
            [MGUtilities showAlertTitle:LOCALIZED(@"UNSYNC_CONNECTION_ERROR")
                                message:[dictStatus valueForKey:@"status_text"]];
            
            [self.navigationItem setHidesBackButton:NO];
            
            [hud removeFromSuperview];
            [self.view setUserInteractionEnabled:YES];
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"[HTTPClient Error]: %@", error.localizedDescription);
        
        [MGUtilities showAlertTitle:LOCALIZED(@"UNSYNC_CONNECTION_ERROR")
                            message:LOCALIZED(@"UNSYNC_CONNECTION_ERROR_DETAILS")];
        
        [self.navigationItem setHidesBackButton:NO];
        
        [hud removeFromSuperview];
        [self.view setUserInteractionEnabled:YES];
        
    }];
    [operation start];
}


-(void) MGMapView:(MGMapView*)mapView didSelectMapAnnotation:(MGMapAnnotation*)mapAnnotation { }

-(void) MGMapView:(MGMapView*)mapView didAccessoryTapped:(MGMapAnnotation*)mapAnnotation { }

-(void) MGMapView:(MGMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation { }

-(void) MGMapView:(MGMapView *)mapView
   annotationView:(MKAnnotationView *)annotationView
didChangeDragState:(MKAnnotationViewDragState)newState
     fromOldState:(MKAnnotationViewDragState)oldState {
    
    if (newState == MKAnnotationViewDragStateEnding) {
        
        _dropAtCoords = annotationView.annotation.coordinate;
        NSLog(@"Pin dropped at %f, %f", _dropAtCoords.latitude, _dropAtCoords.longitude);
        
        CLLocation* loc = [[CLLocation alloc] initWithLatitude:_dropAtCoords.latitude
                                                     longitude:_dropAtCoords.longitude];
        
        [_realEstateView.mapViewDirections getAddressFromLatLon:loc];
    }
}

-(void) MGMapView:(MGMapView*)mapView
didCreateMKPinAnnotationView:(MKPinAnnotationView*)mKPinAnnotationView
viewForAnnotation:(id<MKAnnotation>)annotation {
    
    UIImageView *imageView = [[UIImageView alloc] init];
    UIImage* imageAnnotation = [UIImage imageNamed:MAP_ARROW_RIGHT];
    [imageView setImage:imageAnnotation];
    
    mKPinAnnotationView.pinColor = MKPinAnnotationColorGreen;
    mKPinAnnotationView.draggable = YES;
    
    imageView.frame = CGRectMake (0, 0, imageAnnotation.size.width, imageAnnotation.size.height);
    mKPinAnnotationView.rightCalloutAccessoryView = imageView;
}

-(void) MGMapView:(MGMapView *)mapView geoCodePlaceMark:(CLPlacemark *)placemarks addressDictionary:(NSDictionary *)dic {
    
    NSString* city = @"";
    NSString* country = @"";
    NSString* street = @"";
    NSString* zipCode = @"";
    
    if([dic valueForKey:@"City"] != nil)
        city = [[dic valueForKey:@"City"] stringByAppendingString:@", "];
    
    if([dic valueForKey:@"Country"] != nil)
        country = [dic valueForKey:@"Country"];
    
    if([dic valueForKey:@"Street"] != nil)
        street = [[dic valueForKey:@"Street"] stringByAppendingString:@", "];
    
    if([dic valueForKey:@"Country"] != nil)
        zipCode = [dic valueForKey:@"ZIP"];
    
    NSString* fullAddress = [NSString stringWithFormat:@"%@%@%@", street, city, country];
    [_realEstateView.textFieldAddress setText:fullAddress];
    
    [_realEstateView.textFieldCountry setText:country];
    [_realEstateView.textFieldZipCode setText:zipCode];
}

-(void)findMyCurrentLocation {
    
    if(_myLocationManager == nil) {
        
        _myLocationManager = [[CLLocationManager alloc] init];
        _myLocationManager.delegate = self;
        
        if(IS_OS_8_OR_LATER) {
            [_myLocationManager requestWhenInUseAuthorization];
            [_myLocationManager requestAlwaysAuthorization];
        }
        
        [_realEstateView.mapViewDirections.mapView setShowsUserLocation:YES];
        [_myLocationManager startUpdatingLocation];
        
        if( [CLLocationManager locationServicesEnabled] ) {
            NSLog(@"Location Services Enabled....");
        }
        else {
            [MGUtilities showAlertTitle:LOCALIZED(@"LOCATION_SERVICE_ERROR")
                                message:LOCALIZED(@"LOCATION_SERVICE_NOT_ENABLED")];
        }
    }
    else {
        [_myLocationManager startUpdatingLocation];
    }
    
    
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation: (CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
    
    _myLocation = newLocation;
    
    if(newLocation.coordinate.latitude != oldLocation.coordinate.latitude &&
       newLocation.coordinate.longitude != oldLocation.coordinate.longitude) {
        
        [_realEstateView.mapViewDirections getAddressFromLatLon:_myLocation];
        
    }
    
    MGMapAnnotation* ann = [[MGMapAnnotation alloc] initWithCoordinate:_myLocation.coordinate
                                                                  name:LOCALIZED(@"CURRENT_LOCATION")
                                                           description:LOCALIZED(@"DRAG_ME")];
    
    [_realEstateView.mapViewDirections setMapData:[NSMutableArray arrayWithObjects:ann, nil]];
    
    if(_dropAtCoords.latitude == 0 && _dropAtCoords.longitude == 0)
        _dropAtCoords =_myLocation.coordinate;
    
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(_myLocation.coordinate,
                                                                       0.5*METES_PER_MILE,
                                                                       0.5*METES_PER_MILE);
    
    MKCoordinateRegion adjustedRegion = [_realEstateView.mapViewDirections regionThatFits:viewRegion];
    [_realEstateView.mapViewDirections setRegion:adjustedRegion animated:YES];
    
    [manager stopUpdatingLocation];
}

- (void)locationManager: (CLLocationManager *)manager didFailWithError: (NSError *)error {
    
}

-(void)didClickButtonPropertyType:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    PTypeViewController* pTypeViewController = [storyboard instantiateViewControllerWithIdentifier:@"storyboardPropertyType"];
    pTypeViewController.propertyTypeDelegate = self;
    
    NSMutableArray* array = [NSMutableArray new];
    [array insertObject:LOCALIZED_NOT_NULL(@"ALL_TYPE") atIndex:0];
    
    NSArray* arrayPropertyType = [CoreDataController getPropertyTypes];
    
    for(PropertyType* type in arrayPropertyType)
        [array addObject:type.property_type];
    
    pTypeViewController.arrayData = array;
    
    [self.navigationController pushViewController:pTypeViewController animated:YES];
    
}

-(void)didSelectPropertyType:(NSString *)propertyType {
    
    [_realEstateView.buttonPropertyType setTitle:propertyType
                                    forState:UIControlStateNormal];
    
    [_realEstateView.buttonPropertyType setTitle:propertyType
                                    forState:UIControlStateSelected];
}

@end
