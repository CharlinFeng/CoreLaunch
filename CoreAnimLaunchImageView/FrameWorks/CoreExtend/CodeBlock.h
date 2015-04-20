/* 常用代码块
 
 
1.copy:
@property (nonatomic,copy) NSString *<#string#>;
 
 
2.strong:
@property (nonatomic,strong) <#Class#> *<#object#>;

 
3.weak:
@property (nonatomic,weak) <#Class#> *<#object#>;

 
4.assign:
@property (nonatomic,assign) <#Class#> <#property#>;
 
 
5.delegate:
@property (nonatomic,weak) id<<#protocol#>> <#delegate#>;
 

6.block:
@property (nonatomic,copy) <#Block#> <#block#>;
 
 
7.mark:
#pragma mark <#mark#>

 
8.gmark:
#pragma mark - <#gmark#>
 
 
9.warning:
#warning <#message#>
 


 
10.ReUseCell:
 
 static NSString *rid=<#rid#>;
 
 <#Class#> *cell=[tableView dequeueReusableCellWithIdentifier:rid];
 
 if(cell==nil){
 
 cell=[[<#Class#> alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:rid];
 
 }
 
 return cell;
 
 
11.initObj:
 
 if(self=[super init]){
    <#init#>
 }
 
 return self;
 
12.dataFill:
 -(void)dataFill:(<#ModelClass#> *)<#model#>{
 
    <#code#>

 }
 
13.MainGCD:
 dispatch_async(dispatch_get_main_queue(), ^{
    <#code#>
 });

 
14.GlobalGCD:
 dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    <#code#>
 });

15.AfterGCD:
 dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    <#code to be executed after a specified delay#>
 });
 
16.OnceGCD:
 static dispatch_once_t onceToken;
 dispatch_once(&onceToken, ^{
    <#code to be executed once#>
 });
 
 
17.APPLICATION:
 [UIApplication sharedApplication]

 
18.NOTICENTER:
 [NSNotificationCenter defaultCenter]

 
17.DEFINEIOS6
#define ios6x ([[[UIDevice currentDevice] systemVersion] floatValue] < 7.0f)
 
18.NSLOG:
NSLog(@"<#content#>");
 
 
20.VIEWDIDLOAD
 -(void)viewDidLoad{
 
     [super viewDidLoad];
     
     <#code#>
 }

 
21.VIEWWILLAPPEAR
 -(void)viewWillAppear:(BOOL)animated{
 
     [super viewWillAppear:animated];
     
     <#code#>
 }
 
 
22.VIEWDIDAPPEAR
 -(void)viewDidAppear:(BOOL)animated{
 
     [super viewDidAppear:animated];
     
     <#code#>
 }
 
 
23.VIEWWILLDISAPPEAR
 -(void)viewWillDisappear:(BOOL)animated{
 
     [super viewWillDisappear:animated];
     
     <#code#>
 }
 
 
24.VIEWDIDDISAPPEAR
 -(void)viewDidDisappear:(BOOL)animated{
 
     [super viewDidDisappear:animated];
     
     <#code#>
 }
 
 
24.LAYOUTSUBVIEWS
 -(void)layoutSubviews{
 
     [super layoutSubviews];
     
     <#code#>
 }
 
 
25.AWAKEFROMNIB
 -(void)awakeFromNib{
 
     [super awakeFromNib];
     
     <#code#>
 }
 
26.LOADVIEW
 -(void)loadView{
 
    <#code#>
 }
 
27.INITFRAME
 -(instancetype)initWithFrame:(CGRect)frame{
 
     self = [super initWithFrame:frame];
     
     if(self){
     
     <#code#>
 
     }
 
     return self;
 }
 
 
28.INITCODER
 -(id)initWithCoder:(NSCoder *)aDecoder{
 
 self=[super initWithCoder:aDecoder];
 
     if(self){
     
         <#code#>
     
     }
 
 return self;
 }
 
29.weakSelf
 __weak typeof(self) weakSelf=self;

30.DEBUGSCROLLVIEW
 NSLog(@"\n\n scrollView的Debug信息： \n\n frame=%@,\n bounds=%@,\n contentSize=%@,\n contentOffset=%@,\n contentInset=%@.\n",NSStringFromCGRect(scrollView.frame),NSStringFromCGRect(scrollView.bounds),NSStringFromCGSize(scrollView.contentSize),NSStringFromCGPoint(scrollView.contentOffset),NSStringFromUIEdgeInsets(scrollView.contentInset));

31.CONSTRAINTS
 [<#view#> mas_makeConstraints:^(MASConstraintMaker *make) {
 <#make.#>
 }];
 
 
*/