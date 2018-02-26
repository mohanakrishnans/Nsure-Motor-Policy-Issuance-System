<%@taglib uri="/WEB-INF/tlds/spring-form.tld" prefix="form"%>
<%@taglib uri="/WEB-INF/tlds/spring.tld" prefix="s"%>
<%@ taglib uri="/WEB-INF/tlds/jstlc.tld" prefix="c"%>
<!DOCTYPE html>
<html>
<!--[if (lte IE 9)]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<![endif]-->
<script type="text/javascript">
      var CONTEXT_PATH = '<%=request.getContextPath()%>/';
      window.localStorage.clear();
</script>
<head>

<!-- Need to remove this line during Production -->
<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />
<title>Admin login</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- CSS Files -->
<link href="<%=request.getContextPath()%>/login/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/layout/alert/sweet-alert.css" rel="stylesheet"> 
<link href="<%=request.getContextPath()%>/layout/booty-toggle/bootstrap-toggle.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/animate.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/login/css/owl.theme.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/owl.carousel.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/box-css.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/css-index.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/login/css/custom.css" rel="stylesheet" media="screen">
</head>
<body data-spy="scroll" data-target="#navbar-scroll" ng-init="fnloginLoad()">
<!-- /.preloader -->
<div id="preloader"></div>
<div id="top"></div>
<!-- /.parallax full screen background image -->
<div class="fullscreen landing parallax" style="background-color:#FFFFF;" data-img-width="2000" data-img-height="1333" data-diff="100">
	<!-- NAVIGATION -->
	
	<div id="main">
		<div class="overlay" role="banner">
	<div class="section-top ">
    <div class="container">
      <div class="row">
      <div class="col-lg-12">
  
      </div>
      
      </div>
      </div>
      </div>
	<div id="menu">
	<nav class="navbar-wrapper navbar-default " role="navigation">
		<div class="container">
			  <div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-backyard">
				  <span class="sr-only">Toggle navigation</span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand site-name" href="#top"><img src="<%=request.getContextPath()%>/login/images/logo2.png" alt="logo" class="img-responsive"></a>
				 </div>
			  <div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
				<ul class="nav navbar-nav">
                     <li><a href="#top">Home</a></li>
					<li><a href="#intro">About</a></li>
				   <li><a href="#products">Products</a></li>
									<!-- <li><a href="#download">Insurance</a></li> -->
									<li><a href="#package">Become an Agent</a></li>
			<!-- 		<li><a href="#testi">Reviews</a></li> -->
					<li><a href="#contact">Contact</a></li>
				</ul>
			  </div>
		</div>
	</nav>
</div>


			 <div class="container text-center">
			 <div class="jumbotron">
			<div class=" content-width">
			 <div class="row">
			 <div class="col-md-8"> 
        <div class="landing-text wow fadeInUp">
          				<div class="col-md-12" style="text-align:center; "> 
                       
                        	<img src="<%=request.getContextPath()%>/login/images/agent-banner.png" class="img-responsive"/>
                       
                        	<%-- <img src="<%=request.getContextPath()%>/login/images/banner-logo.png" width="510" height="141" class="" style=" border-bottom: 1px solid #75ABC5;"> --%>
						<!--<p>Insurance agents are faced with increasing challenges and competition with new players entering the field, and demands from customers for high quality services. They need to differentiate and be well equipped in order to remain competitive.</p>-->
					</div>	 
                    </div>
          			
          <!-- /.logo --> 
          <!--<div class="logo wow fadeInDown"> <a href=""><!--<img src="images/logo.png" alt="logo"></a></div>--> 
          
          <!-- /.main title --> 
         <!--<h1 class="wow fadeInLeft">
						Become an Agent
						</h1>-->
          
          <!-- /.header paragraph --> 
        
                    
          
          <!-- /.header button -->
          <%-- <div class="banner-3-elements">
         	 <div class="row " style="margin-top:480px;">
            <div class="col-md-4">
              <div class="core-box"> <span class="article-content" data-content="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." rel="popover" data-placement="top" data-original-title="Featured Agents" data-trigger="hover">
                <div class="heading"> <i class="fa fa-users circle-icon circle-green"></i>
                  <h2>Featured Agents</h2>
                </div>
                </span> 
                <!-- <div style="padding-bottom:25px;"><img src="images/content-img-1.jpg" alt="logo"></div>
								<div class="content">
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
								</div>
								<a class="view-more" href="#">
									View More <i class="fa fa-arrow-circle-o-right"></i>
								</a>--> 
              </div>
            </div>
            <div class="col-md-4">
              <div class="core-box"> <span class="article-content" data-content="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." rel="popover" data-placement="top" data-original-title="SMS Services" data-trigger="hover">
                <div class="heading"> <i class="fa fa-envelope-o circle-icon circle-teal"></i>
                  <h2>SMS Services</h2>
                </div>
                </span> 
                <!-- <div style="padding-bottom:25px;"><img src="images/content-img-2.jpg" alt="logo"></div>
								<div class="content">
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
								</div>
								<a class="view-more" href="#">
									View More <i class="fa fa-arrow-circle-o-right"></i>
								</a>--> 
              </div>
            </div>
            <div class="col-md-4">
              <div class="core-box"> <span class="article-content" data-content="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." rel="popover" data-placement="top" data-original-title="Hotlinks" data-trigger="hover">
                <div class="heading"> <i class="fa fa-external-link circle-icon circle-bricky"></i>
                  <h2>Hotlinks</h2>
                </div>
                </span> 
                <!-- <div style="padding-bottom:25px;"><img src="images/content-new-4.jpg" alt="logo"></div>
								<div class="content">
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
								</div>
								<a class="view-more" href="#">
									View More <i class="fa fa-arrow-circle-o-right"></i>
								</a>--> 
              </div>
            </div>
            
            <!--<div class="col-lg-4">
                                    <div class="view view-fifth">
                        <h2>Featured <br>Agents</h2>
							<i class="fa fa-users"></i>
                        <a href="#" class="info">Read More</a> 
                </div>
                            </div>
                            <div class="col-lg-4">
                                   <div class="view view-fifth">
                        <h2>SMS <br> Services</h2>
							<i class="fa fa-envelope-o"></i>
                        <a href="#" class="info">Read More</a> 
                </div>
                            </div>
                            <div class="col-lg-4">
                                   
                        <div class="view view-fifth">
                        <h2>Hotlinks</h2><br>
							<i class="fa fa-external-link"></i>
                        <a href="#" class="info">Read More</a> 
                </div>
                            </div>--> 
            
          </div>
          </div> --%>
          <!--<div class="row"> 
                    	
                        	<div class="col-lg-4">
                                    <div class="view view-fifth">
                        <h2>Featured <br>Agents</h2>
							<i class="fa fa-users"></i>
                        <a href="#" class="info">Read More</a> 
                </div>
                            </div>
                            <div class="col-lg-4">
                                   <div class="view view-fifth">
                        <h2>SMS <br> Services</h2>
							<i class="fa fa-envelope-o"></i>
                        <a href="#" class="info">Read More</a> 
                </div>
                            </div>
                            <div class="col-lg-4">
                                   
                        <div class="view view-fifth">
                        <h2>Hotlinks</h2><br>
							<i class="fa fa-external-link"></i>
                        <a href="#" class="info">Read More</a> 
                </div>
                            </div>
                           
                        </div>--> 
        </div>
			 	<div class="col-md-4">
					<div class="signup-header wow fadeInUp">
						<h3 class="form-title text-center">Agent Login</h3>
						<form:form id="DB09M06Y16" commandName="loginDO" cssClass="form-header">
							<div class="form-group">
								 <form:input path="userName" cssClass="form-control input-lg" tabindex="1" id="userNameId"/>
							</div>
							<div class="form-group">
								<form:password path="password" cssClass="form-control input-lg" tabindex="2" id="passwordId" />
							</div>
							<div style="color:red;font-family:inherit;font-size:12px;">
								<form:errors path="password" />
								<input type="hidden" value="NA" name="killSessionInd" />
							</div>
							
							<div class="form-group last">
								<input type="submit" class="btn btn-warning btn-block btn-lg" value="Sign in">
							</div>
							 <a href="#" data-toggle="modal" data-backdrop="static"
										onclick="onModelClick();" class="login-footer-text text-center">Release account Lock / Forgot Password</a>
						</form:form>
					</div>			
                   <div class="alert alert-danger">
                   	<div style="text-align:justify;"><strong>Attention : </strong> Kindly do not share your password with anyone to avoid unauthorised access to your account.</div>
                        </div>
				</div>
		
			 	 </div>
			 	 </div>
			 	
			 	 </div>
			</div>
	
		<div class="section-bottom ">
    <div class="container">
      <div class="row">
      <div class="col-lg-12">
     <h4> Our Products</h4>
     <div id="owl-demo">
                  

                <div class="item darkCyan">
                <i class="fa fa-car"></i>
             
                    <h5>Motor</h5>
                </div>
                
                <div class="item orange">
                <i class="fa fa-th-large"></i>
               
                    <h5>Banca Product</h5>
                 
                </div>
                
                  <div class="item yellow">
           <i class="fa fa-street-view"></i>
							
                    <h5>Foreign Worker Insurance</h5>
                  
                </div>
                <div class="item forestGreen">
                <i class="fa fa-fire"></i>
             
                    <h5>Fire</h5>
                </div>
                <div class="item darkCyan">
    			   <i class="fa fa-ship"></i>
            
                    <h5>Marine</h5>
                </div>
                
                  
                 
                <div class="item forestGreen">
                <i class="fa fa-pencil-square-o"></i>
            
                    <h5>Non-Motor</h5>
                </div>
                <div class="item orange">
         <i class="fa fa-user-plus"></i>
                    <h5>Workmen</h5>
                 
                </div>
                
                  <div class="item yellow">
               <i class="fa fa-briefcase"></i>
              
                    <h5>Package Products</h5>
                  
                </div>
                  <div class="item dodgerBlue">
                  <i class="fa fa-users"></i>
               
                    <h5>Personal<br> Accident</h5>
                  
                </div>
                <div class="item dodgerBlue">
                <i class="fa fa-flag-checkered"></i>
               
                    <h5>Campaign Management</h5>
                  
                </div>
      </div>
      
      </div>
      </div>
      </div>
	</div> 
</div>
</div>

 

<!-- /.intro section -->
<div id="intro">
	<div class="container">
		<div class="row">
		<!-- /.intro image -->
					<div class="col-md-7 intro-pic wow slideInLeft">
						<img
							src="<%=request.getContextPath()%>/login/images/intro-image.jpg"
							alt="image" class="img-responsive">
			</div>	
			<!-- /.intro content -->
					<div class="col-md-5 wow slideInRight" style="text-align: justify;">
						<h3>About RHB Insurance</h3>
						<p>This bank operates in all the South-east Asian countries
							and Myanmar as well and has established themselves in financial
							products with much efficiency. They have a wide range of general
							insurance products as well as regular life covers and savings
							plans when it comes to this industry. They are well known for
							motor insurance as well. The product range is comprehensive and
							well-designed. RHB Insurance also has bancassurance products as
							well.</p>
			</div>
					<div class="">
						<h3 style="text-align: justify;">What is RHB Agency Suite?</h3>
						<p style="padding-left: 15px; text-align: justify;">Insurance
							agents are faced with increasing challenges and competition with
							new players entering the field, and demands from customers for
							high quality services. They need to differentiate and be well
							equipped in order to remain competitive. RHB Agency Suite is a
							B2B eCommerce platform that automates and transforms the way RHB
							agents operate by increasing efficiency and productivity in
							service delivery, and hence, enabling them to focus on the most
							important aspect of their business - the CUSTOMERS.</p>
					</div>
					<div class="col-md-12"></div>
		</div>			  
	</div>
</div>

<!-- /.products section -->

<div id="products">
  <div class="container">
    <div class="row">
					<div
						class="col-md-10 col-md-offset-1 col-sm-12 text-center feature-title">
        <!-- /.feature title -->
						<h2>Our Insurance Product</h2>
      </div>
					<div class="col-lg-12" style="">
						<div class="col-md-12" style="text-align: justify;">
							<b>What is Insurance?</b><br>Insurance can be defined as a
							form of risk management. Through insurance people pay a specific
							amount and transfer the risk associated with something to another
							entity. Insurance is used as a hedge against the risk of an
							unforeseen and uncertain loss. An insurance provider sells
							insurance which is bought by a person who becomes the
							policyholder. The amount of money that a customer pays for a
							certain amount of risk coverage is known as premium. This
							insurance premium can be payable monthly, quarterly or yearly. <br>
							<br> The insured person receives an insurance document as a
							promise that the insurance provider will compensate the insured
							in case of any calamity that results in personal or financial
							loss.
    </div>
						<div class="col-md-12">
							<b>Insurance Types</b><br> Insurance is a universal set that
							contains several types of insurance that are offered by service
							providers to customers. Some of the most prominent and popular
							insurance types in Malaysia are listed below.<br>
							<div>1. Life Insurance</div>
							<div>2. General Insurance</div>
      </div>
						<div class="row col-lg-12">
							<div class="col-md-12">
								<b>What is this product?</b><br> This policy provides
								insurance against liabilities to other parties for injury or
								death, damage to other parties' prope rty and accidental or fire
								damage to your vehicle or theft of your vehicle.The products are
								comes under the Insurance types.<br>Here are the some of
								our products.,
          </div>
							<div class="col-md-12">
								<h3>General Insurance Products</h3>
								<div>General insurance refers to the insurance taken for
									all insurance needs related not essentially to life.</div>
								<div class="row">
									<div style="padding: 15px; text-align: justify;"
										class="col-md-6">
										<b>1. Motor Insurance</b><br>
										<div>
											Motor insurance refers to insurance that is offered as
											financial assistance when your vehicle meets an accident or
											undergoes a major overhaul.<br> There are 4 types of
											motor insurances available from RHB insurance which includes
											<span style="font-style: italic;">Motorcycle
												Insurance, Private Car Insurance, motor Multi-shield Plus
												and Motorist Personal Accidental Insurance.</span>
        </div>
          </div>
									<div style="padding: 15px; text-align: justify;"
										class="col-md-6">
										<b>2. Personal Accident Insurance</b><br>
										<div>
											Personal accident insurance is offered for safeguarding
											insured persona against financial trouble resulting from
											death or disability due to accident.<br> There are 45
											plans bespoked to the requirement of people in Malaysia that
											includes Essental Personal Accident Insurance, SmartCare
											Personal Accident Insurance, Family Personal Accident
											Insurance, Preferred Personal Accident Insuranceand MAX
											Personal Accident Insurance plans.
        </div>
          </div>
        </div>
								<div class="row">
									<div style="padding: 15px; text-align: justify;"
										class="col-md-6">
										<b>3. Travel Insurance</b><br>
										<div>
											Travel insurance is insurance policy that is availed by
											customer when they go on a tour or while they are traveling.
											This insurance policy pays financial sum to the insured or
											his/her beneficiaries in case death or disability befall the
											insured during travel.<br> There are variety of travel
											insurance policies to meet the needs of the travel insurance
											bespoked to the region that includes Travel Lite Insurance,
											Travel Protector Plus Insurance and Annual Travel Protector
											Insurance.
          </div>
        </div>
									<div style="padding: 15px; text-align: justify;"
										class="col-md-6">
										<b>4. Fire insurance Policy</b><br>
										<div>As the name itself suggests, fire insurance is
											offered by insurance companies to provide customers with
											protection against the unforeseen event of fire. Other
											insurance products such as house owners policy and house
											holders policy are aimed at fulfilling the insurance needs of
											customers who own a house or stay in a rented one.</div>
      </div>
    </div>
								<div class="row">
									<div style="padding: 15px; text-align: justify;"
										class="col-md-6">
										<b>5. Medical Insurance</b><br>
										<div>There are 3 comprehensive schemes available under
											medical insurances, that include MediSure, Critical Guard and
											POS Malaysia hospital Cash Income Plan.</div>
  </div>
									<div style="padding: 15px; text-align: justify;"
										class="col-md-6">
										<b>6. Property Isnurance Policies</b><br>
										<div>A variety of insurance schemes are available under
											this type of insurance that includes Fire Insurance,
											Houseowner/householder insurance and Home Smart Insurance.</div>
</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="row">
								<div class="col-md-12" style="text-align: justify;">
									<h3>Insurance Glossary</h3>
									Insurance policies vary depending on the type of cover one is
									looking for. Each policy will target a particular coverage be
									it life, health, critical illness, personal accident and so on.
									When one goes through a particular policy it is easy to get
									flustered looking at a few technical terms and rightly so.
									After all you are paying hard earned money to acquire these
									policies and it is in your best interest to know what these
									terms mean so that you can take an informed decision on which
									policy best suits your needs. Below is a glossary of terms that
									will help you to truly understand the meaning of various
									technical terms that are often used in describing these
									insurance products.
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Annual Limit:</h4>
										<div>It is the maximum pay-out given to settle a claim
											in one policy year. The higher this limit is set, the higher
											will be the premium paid.</div>
									</div>
									<div class="col-md-4">
										<h4>Face Amount:</h4>
										<div>it is the amount received by the policyholder in
											the form of a lump sum by an insurer in case of occurrence of
											an insured event.</div>
									</div>
									<div class="col-md-4">
										<h4>Lapse:</h4>
										<div>It is when the insurance policy terminates due to
											failure of policyholder to pay the premiums.</div>
									</div>

								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Deductible:</h4>
										<div>A deductible is an agreement between a policyholder
											and the insurance provider wherein the policyholder will
											contribute a given amount towards the cost of medical
											treatment. For example if the deductible option of the
											policyholder is RM 200 and the medical expenses amount to a
											total of RM 700, then the policyholder will pay RM 200 and
											the balance amount is paid by the insurance provider</div>
									</div>
									<div class="col-md-4">
										<h4>Disability:</h4>
										<div>It is a condition that arises as a result of a
											particular accident or a certain illness that renders the
											person unable to resume their normal day to day activities.
											Based on the severity of the condition, a disability might be
											partial, temporary, total or permanent.</div>
									</div>
									<div class="col-md-4">
										<h4>Exclusion:</h4>
										<div>it is that condition or situation that is mentioned
											in the contract which voids coverage for a particular event.
											Exclusions may be the occurrence of certain events, for
											certain locations or properties or even certain people</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Betterment:</h4>
										<div>A term often used in vehicular insurance,
											betterment is the amount of money the policyholder will have
											to pay over and above what the insurer pays for the
											replacement of parts when a vehicle is sent for repair. An
											insurer will only pay for a portion of repair costs while the
											policyholder will have to pay the difference which has a
											standard scale ranging from 0% to 40%</div>
									</div>
									<div class="col-md-4">
										<h4>Free-Look Period:</h4>
										<div>this period usually lasts 15 days from date of
											acquiring a policy and is that period wherein a policyholder
											may go through a newly acquired individual policy and can
											return it if they are unhappy with the policy for any reason.
											The return of the policy will fetch a full refund minus any
											claims that have been made.</div>
									</div>
									<div class="col-md-4">
										<h4>Grace Period:</h4>
										<div>It is a provision in an insurance policy that
											grants a specific duration of time to the policyholder to
											make the full premium payment and keep the policy in effect
											if they miss their premium due date. The grace period is
											usually 30 days from date of missed premium payment.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Guaranteed Level Premiums:</h4>
										<div>it is an insurance policy in which the premiums
											paid is guaranteed to remain fixed for a particular number of
											years.</div>
									</div>
									<div class="col-md-4">
										<h4>Indemnity:</h4>
										<div>The process of restoring the policyholder to the
											same financial condition after any loss or damage by means of
											making payments, repairs or replacements.</div>
									</div>

									<div class="col-md-4">
										<h4>Lifetime Limit:</h4>
										<div>Typically limited to health insurance policies, it
											is the maximum claims a policyholder can make from the
											insurance company during their lifetime.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Co-Insurance/Co-Takaful:</h4>
										<div>More commonly used in health insurance, it means
											that the policyholder and insurer both pay for the medical
											fees with varying contributions. Usually, the policyholder
											will pay 10% to 20% of the medical fees with the balance
											being covered by the insurer.</div>
									</div>
									<div class="col-md-4">
										<h4>Life Insurance:</h4>
										<div>An insurance policy that provides the beneficiary
											of the policy a guaranteed lump sum or periodic payments in
											case the policyholder dies while the policy is in effect or
											any other circumstances as stated in the contract.</div>
									</div>
									<div class="col-md-4">
										<h4>Investment-Linked Insurance:</h4>
										<div>It is that insurance policy which allocates a
											portion of the premiums paid towards a particular investment
											fund or a combination of funds as chosen by the policyholder.
											The benefits of the policy depends on how these
											investment-linked funds perform.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Maturity Date:</h4>
										<div>It is that date where the policy has completed its
											specified term the face amount becomes payable to the
											policyholder provided they survive to that date.</div>
									</div>
									<div class="col-md-4">
										<h4>Maturity Value:</h4>
										<div>It is the amount payable to the policyholder if
											they survive the term of the policy.</div>
									</div>
									<div class="col-md-4">
										<h4>Nomination:</h4>
										<div>Process by which a policyholder assigns a person as
											a beneficiary of the insurance policy.</div>
									</div>

								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Mortgage Reducing Term Assurance:</h4>
										<div>It is an insurance policy that provides a lump sum
											payment used to repay outstanding loans in case of death,
											total permanent disability or critical illness of the
											policyholder that renders them incapable of repaying the
											loan.</div>
									</div>
									<div class="col-md-4">
										<h4>No-Claim Bonus:</h4>
										<div>An incentive or reward scheme commonly employed in
											insurance policies which provides incentives to the
											policyholder either through increased cover or reduced
											premiums if the policyholder does not make a claim for a
											specified duration of time. The rewards depend on the type of
											insurance policy acquired and the insurance provider as well.</div>
									</div>
									<div class="col-md-4">
										<h4>Mortgage Level Term Assurance:</h4>
										<div>It is an insurance policy that is transferable and
											has savings and a cash value. This policy is used to repay
											outstanding loans of the policyholder in the unfortunate case
											of demise, critical illness or total permanent disability of
											the policyholder rendering them incapable of repaying the
											loan.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Paid-up policy:</h4>
										<div>An insurance policy that does not require the
											policyholder to make future premium payments completed but is
											still in effect and hasn't been terminated by death or by
											attaining maturity period.</div>
									</div>
									<div class="col-md-4">
										<h4>Payer Benefit:</h4>
										<div>That condition in a policy which waives the premium
											in case the person insured is a minor while the person paying
											the premiums passes away or is rendered totally and
											permanently disabled.</div>
									</div>
									<div class="col-md-4">
										<h4>Policy:</h4>
										<div>It is the document that states the terms and
											conditions of a particular insurance contract.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Policyholder:</h4>
										<div>The individual or the organisation under whose name
											the insurance policy is registered to.</div>
									</div>
									<div class="col-md-4">
										<h4>Premium:</h4>
										<div>The amount of money a policyholder has to pay
											either in form of lump sum or periodic payments to keep the
											policy in effect.</div>
									</div>
									<div class="col-md-4">
										<h4>Reinstatement:</h4>
										<div>The act of restoring a lapsed policy by paying all
											due premiums. Depending on the duration of premiums that were
											outstanding, the policyholder may be charged an interest on
											the due amount.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Pre-existing condition:</h4>
										<div>It is an exclusion clause in a health insurance
											policy which states that any pre-existing medical condition
											that exists for which the policyholder may be undergoing
											treatment for or showing symptoms of prior to policy taking
											effect will not be insured. This applies even if policyholder
											may or may not be aware of the particular condition or
											injury.</div>
									</div>
									<div class="col-md-4">
										<h4>Rider:</h4>
										<div>An addition to an insurance policy that supplements
											the benefits of the insurance policy by providing additional
											areas of cover such as a critical illness rider that provides
											cover for 36 major health conditions that would otherwise not
											be covered in a conventional life insurance policy.</div>
									</div>
									<div class="col-md-4">
										<h4>Sum Assured:</h4>
										<div>It is a fixed lump sum promised by an insurance
											provider and paid to the policyholder in case of occurrence
											of an insured event.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Sum Insured:</h4>
										<div>It is the limit of money an insurance provider is
											willing to pay if circumstances covered by the policy takes
											place.</div>
									</div>
									<div class="col-md-4">
										<h4>Surrender:</h4>
										<div>It is the act of giving up an insurance policy and
											in such cases the insurance provider will pay the cash value
											or surrender value of the policy to the policyholder.</div>
									</div>
									<div class="col-md-4">
										<h4>Surrender value:</h4>
										<div>Surrender value or cash value of a policy is the
											amount of money received upon voluntarily cancelling the
											policy prior to death or permanent disability or policy
											reaching maturity date.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Term Life Insurance:</h4>
										<div>A type of life insurance policy where the cover
											provided by the policy is set for a defined period of time
											and the premiums to be pad can be fixed accordingly to the
											period of cover.</div>
									</div>
									<div class="col-md-4">
										<h4>Under-insurance:</h4>
										<div>It is a condition where the insurance purchased is
											not enough to cover the market value of the insured asset.</div>
									</div>
									<div class="col-md-4">
										<h4>Waiting Period:</h4>
										<div>It is a specific period of time that should pass
											for an insurance policy for its outlined coverage to take
											effect. It is usually 30 days from the date of activation of
											the policy.</div>
									</div>
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<div class="col-md-4">
										<h4>Whole life insurance:</h4>
										<div>It is a type of insurance plan that is active as
											long as the premiums are paid. It is a life-long protection
											that has a combination of features and can be used as
											instruments of investment, savings and to build a retirement
											corpus.</div>
									</div>
									<div class="col-md-4">
										<h4>Wakalah:</h4>
										<div>It is an agreement wherein the takaful operator
											acts like an agent representing the policyholder. For its
											services rendered, it earns a fee that is determined based on
											an agreed profit ratio.</div>
									</div>
									<div class="col-md-4">
										<h4>Over-insurance:</h4>
										<div>Often used in vehicular insurance, it is the
											condition where a policyholder purchases a cover that is
											greater than the market value of the insured asset.</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<h3>Motor Insurance Cover Types</h3>
							<div class="row">
								<div class="col-md-12">There are 3 main categories of car
									insurance in Malaysia, available to its citizens or
									expatriates. The different types of car insurance are based on
									the level of the coverage and it also indicated the amount that
									can be claimed by the insurance holder if the vehicle sustains
									loss or damages.</div>
								<div class="col-md-12" style="text-align: justify;">
									<h5>1. Third party coverage:</h5>
									The policyholder is insured against claims in the occurrence of
									physical injuries or deaths that is caused to other persons/
									the third party. The policyholder also can claim for damage or
									loss to third party property that has been caused by the
									insured's vehicle. This is the minimal coverage policy for any
									car holder, enough for being allowed to drive their car on
									road, legally. Note that under this insurance only third party
									affected by the insured's car can claim for the loss, damage
									injury or death caused by the policyholder, without any claims
									accepted from the insurance holder's end. With little coverage
									and minimalistic requirements the insurance is cheap at the
									same time. This car insurance in Malaysia is often referred as
									a Act Only car insurance.
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<h5>2. Third party, Fire and Theft Cover:</h5>
									A Third Party, Fire and Theft policy is slightly more expensive
									as compared the third party cover, but more affordable than the
									comprehensive cover. The coverage include the driver of the car
									which generally is the policyholder against claims made by the
									third party, for both physical injuries or death, loss or
									damage of third party property that has been caused by the
									insurance holder's vehicle. This is generally the same as a
									Third Party Cover, but added coverage of damages from fire and
									theft to the insured's vehicle is the difference. Generally, in
									a Third Party, Fire and Theft Cover, the amount insured for
									third party damages is higher and at times unrestricted however
									the amount insured by this policy for fire and theft is lower.
								</div>
								<div class="col-md-12" style="text-align: justify;">
									<h5>3. Comprehensive Cover:</h5>
									This type of insurance policy for a vehicle, as the name
									suggest has got wider range of coverage in terms of protection,
									for both first and third parties (first party is the insurance
									holder/owner of car, the driver, and the third party is
									everyone else affected by the accident, fire or theft). This
									policy allows the insured to get the same coverage benefits as
									in the Third Party, Fire and Theft policy, but claims can be
									made against damages to the insured's own vehicle also not
									restricting it fire and theft. In the motor insurance industry
									in Malaysia, the standard procedure for claims against stolen
									vehicles or total loss lead to compensation to the policyholder
									based on the vehicle's market value at the time of damage or
									loss. It could also be the amount agreed in the policy,
									whichever is lower. Some car insurance companies also reimburse
									the policyholder based on an agreement of the vehicle value
									specified earlier with the policyholder, instead of the current
									market or resale value. But it is important to note, not
									everyone is eligible for a vehicles not exceeding a particular
									age. It is suggested to apply for a Comprehensive Cover if the
									car is relatively expensive car, as the policy package and its
									entitlements for the driver and vehicle owner is based on it.
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<h3>Factors that affect the car insurance premium
								calculation</h3>
							<div class="row">
								<div class="col-md-12">Here are some of the factors that
									are considered by insurance providing companies to calculate
									the premium for your car insurance policy.</div>
								<div class="col-md-12">
									<div class="col-md-3">1. Type of coverage</div>
									<div class="col-md-3">2. Use of vehicle</div>
									<div class="col-md-3">3. Carrying capacity of the vehicle</div>
									<div class="col-md-3">4. Age of the car</div>
								</div>
								<div class="col-md-12">
									<div class="col-md-3">5. NCD allowed</div>
									<div class="col-md-3">6. Sum Assured</div>
									<div class="col-md-3">7. No. of authorized drivers
										registered</div>
									<div class="col-md-3">8. Extended coverage feature</div>
								</div>
							</div>
						</div>
				</div>	
			</div>	
		</div>
	</div>
</div>

<!-- /.pricing section -->
<div id="package">
	<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center feature-title">
					<h2>Become an Agent</h2>
				</div>
				<div class="col-md-12">
					<h3>How to become a RHB Insurance Berhard's General Insurance
						Agent?</h3>
			</div>
				<div class="col-md-12">
					The basic requirements of becoming a general insurance agent is
					that the applicant must be at least 21 years old. <br>
					Applicant must pass and hold a Pre-Contract Examination for
					Insurance Agents (PCEIA) certificate from the Malaysian Insurance
					Institute. The examination is available in English and Chinese
					languages and may be taken via written exam or electronically.
					Study of a textbook on basic insurance knowledge is necessary. <br>
					Interested candidates can request his prospective insurers to
					assist in arranging the examination. If you wish to know more about
					PCEIA or would like to take this examination, click here to find
					out more. <br> Candidates who does not wish to sit for the
					examination but possesses any of the following qualifications may
					be exempted and can register as an agent.
		</div>	
				<div class="col-md-12">
					<br> List of Qualifications for Exemption under Regulation 7
					of GIARR:<br>
					<div class="col-md-12" style="margin-left: 50px;">
						<li>Associate Malaysian Insurance Institute (AMII)</li>
						<li>Diploma of the Malaysian Insurance Institute</li>
						<li>Associate Australian Insurance Institute (AAII)</li>
						<li>Associate Chartered Insurance Institute (ACII)</li>
						<li>Foundation Course in General Insurance (Malaysian
							Insurance Institute)</li>
						<li>Compact General Insurance Agent Course (Malaysian
							Insurance Institute)</li>
						<li>Intermediate Course in General Insurance (Malaysian
							Insurance Institute)</li>
						<li>Insurance Executive Development (IED)</li>
						<li>Institute Teknologi MARA (ITM) Course in Insurance</li>
						<li>Universiti Kebangsaan Malaysia (UKM) Course in Insurance</li>
						<li>Universiti Malaya (UM) Course in Insurance</li>
						<li>General Insurance Training Course for Agents (Malaysian
							Insurance Institute)</li>
						<li>Intensive Course for General Insurance Agents (Malaysian
							Insurance Institute)</li>
						<li>First Course in General Insurance (Malaysian Insurance
							Institute)</li>
						<li>Certificate of 3rd General Insurance Training Course for
							Agents (Institut Teknologi MARA)</li>
						<li>Diploma in Life / General Insurance (Australian Insurance
							Institute)</li>
						<li>Chartered Insurance Institute Certificate of Proficiency
							(London School of Insurance)</li>
						<li>Associate Insurance Institute of Canada (AIIC)</li>
						<li>Diploma in Business Studies - Major in Insurance
							(Institute Teknologi MARA)</li>
						<li>Certificate of Insurance (Bombay College of Insurance)</li>
						<li>General Course in Insurance (28/4/80 to 6/6/80)
							(Chartered Insurance Institute College of Insurance, United
							Kingdom)</li>
						<li>Kursus Pengurusan Risiko dan Insuran (Universiti Malaya)</li>
						<li>Basic Course in General Insurance (Swiss Insurance
							Training Center, Zurich)</li>
						<li>Certificate in General Insurance Examination (Singapore
							Insurance Institute)</li>
						<li>Diploma in Actuarial Science in MARA</li>
						<li>Degree or Master of Science by University of Connecticut</li>
</div>
				</div>
			</div>
		</div>
	</div>
<!-- /.contact section -->
<div id="contact">
		<div class="contact fullscreen parallax"
			style="background-image:url('<%=request.getContextPath()%>/login/images/bg.jpg');"
			data-img-width="2000" data-img-height="1334" data-diff="100">
		<div class="overlay">
			<div class="container">
				<div class="row contact-row">
				
					<!-- /.address and contact -->
						<div class="col-sm-12 contact-left wow fadeInUp">
							<h3>
								<span class="highlight">Contact</span> Us
							</h3>
							<ul class="ul-address">
								<li>
									<!-- <i class="pe-7s-map-marker"></i> 	 --> At RHB Insurance
									Berhad, we would like to make it easy for you to receive help
									or information that you need. If you require any assistance,
									please feel free to contact us in the way most convenient to
									you.<br>
							</li>
								<li>
									<div style="background-color: rgb(225, 225, 225);">
										<div
											style="background-color: rgb(108, 110, 129); color: white; padding: 5px;">Customer
											Relationship Center (CRC)</div>
										<div style="margin-top: 5px; padding-left: 10px;">
											You can call or visit us if you would like to speak to our
											Customer Service Staffs.<br> Level 12, West Wing, The
											Icon, No. 1, Jalan 1/68F, Jalan Tun Razak, 55000 Kuala
											Lumpur. <br>
											<div style="margin-left: 0px;">
												<div>
													Email: <a href="mailto:custcare@rhbinsurance.com.my">custcare@rhbinsurance.com.my</a>
												</div>
												<div>Tel: 1800889698</div>
												<div>Facsimile: +(603) 21631211</div>
											</div>
											<div>
												<p class=""
													style="padding-top: 20px; line-height: 16px; font-style: italic; font-size: 14px;">**
													Internet Email is not secure unlike RHBI EIMS system which
													uses SSL Encryption. Therefore, please do not include
													sensitive information such as your User ID and Password in
													your email to us.</p>
											</div>
										</div>
									</div>
							</li>
								<li>
									<div style="background-color: rgb(225, 225, 225);">
										<div
											style="background-color: rgb(108, 110, 129); color: white; padding: 5px;">Operational
											Offices</div>
										<div style="margin-top: 5px; padding-left: 10px;">
											<div class="row">
												<div class="col-md-12">
													<div class="col-md-6">
														<div style="margin-left: 0px;">
															<div style="border-bottom: 1px solid;">Head Office</div>
															Level 12, West Wing, The Icon, No. 1, Jalan 1/68F, Jalan
															Tun Razak, 55000 Kuala Lumpur.<br>
															<div>Tel: +(603) 2180 3000</div>
															<div>Fax: +(603) 9281 2729</div>
														</div>
													</div>
													<div class="col-md-6">
														<div style="margin-left: 0px;">
															<div style="border-bottom: 1px solid;">Penang
																Branch</div>
															2nd Floor, RHB Bank, 44, Lebuh Pantai, 10300 Penang.<br>
															<div>Tel: +(604) 261 0115/ 261 5639/ 262 5649/ 262
																1206</div>
															<div>Fax: +(604) 261 6310</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>	
								
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
  
<!-- /.footer -->
<footer id="footer">
	<div class="container">
		<div class="col-sm-4 col-sm-offset-4">
			<!-- /.social links -->
				<div class="social text-center">
					<ul>
						<li><a class="wow fadeInUp" href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
						<li><a class="wow fadeInUp" href="https://www.facebook.com/" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
						<li><a class="wow fadeInUp" href="https://plus.google.com/" data-wow-delay="0.4s"><i class="fa fa-google-plus"></i></a></li>
						<li><a class="wow fadeInUp" href="https://instagram.com/" data-wow-delay="0.6s"><i class="fa fa-instagram"></i></a></li>
					</ul>
				</div>	
			<div class="text-center wow fadeInUp" style="font-size: 14px;">Copyright RHB 2015 - </div>
			<a href="#" class="scrollToTop"><i class="pe-7s-up-arrow pe-va"></i></a>
		</div>	
	</div>	
</footer>
</div>



	
	<!-- /.javascript files -->
    <script src="<%=request.getContextPath()%>/login/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/login/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/login/js/custom.js"></script>
    <script src="<%=request.getContextPath()%>/login/js/jquery.sticky.js"></script>
	<script src="<%=request.getContextPath()%>/login/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/login/js/modernizr.custom.js"></script>
	<script src="<%=request.getContextPath()%>/login/js/jquery.fittext.js"></script>
	<script src="<%=request.getContextPath()%>/login/js/boxgrid.js"></script>
	
        	<!-- AccountLock validation JS -->
	<script src="<%=request.getContextPath()%>/app/accountlock.js"></script>
		 <!-- Sweet Alert JS CSS -->
	<script src="<%=request.getContextPath()%>/layout/alert/sweet-alert.min.js"></script>
		 <!-- bootstrap-toggle  JS-->
	<script src="<%=request.getContextPath()%>/layout/booty-toggle/bootstrap-toggle.min.js"></script>
		
    <!-- /.javascript files for hover -->
    <script>
    localStorage.skin = 'skin-blue-light';
    $('.article-content').popover();
    $("#userNameId").attr('placeholder', 'Enter your user name');
    $("#passwordId").attr('placeholder', 'Enter your password');
    $(function() {
    	function disableBack() { 
    		window.history.forward();
    	}
        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
	});
   
    </script>
     <script>
    $(function() {

		Boxgrid.init();
		

	});
	$(document).ready(function() {

$("#owl-demo").owlCarousel({

autoPlay: 3000, //Set AutoPlay to 3 seconds

items : 4,
itemsDesktop : [1199,3],
itemsDesktopSmall : [979,3]

});

});
	</script>
	
	
    
  </body>
</html>

<%@ taglib uri="/WEB-INF/tlds/jstlfmt.tld" prefix="fmt"%>
<style>
.modal-header,.close {
	background-color: #0076bc;
	color: white !important;
	text-align: left;
	font-size: 17px;
	text-rendering: optimizeLegibility !important;
	-webkit-font-smoothing: antialiased !important;	
}
</style>
<fmt:setLocale value='en_US' />
<fmt:bundle basename="applicationresources">
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-lg" style="padding-top: 150px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" onclick="fnCloseModel();" id="BTN_MODEL_CLOSE">
						<span aria-hidden="true">&times;</span>
					</button>
					<h6 class="modal-title">Account Locked / Forgot Password</h6>
				</div>
				<div class="modal-body">
					<form 	method="post">
						<section class="content">
							<!-----------------------Account Lock/Forget Password Section----------------------------->
							<div class="row" id="DIV_ACCOUNTLOCK">
								<div class="col-lg-12">									
									<fieldset class="group-filedset-form">
										<div class="row">
											<div class="col-md-12">
												<div class="box-body">
													<div class="form-group">
														<label class="col-md-5 control-label"><fmt:message
																key="label.loginname" /></label>
														<div class="col-md-7">
															<div class="input-group input-group-sm">
																<input type="text" class="form-control" 
																	id="TXT_LOCK_USERNAME" maxlength="25"/>
															</div>
														</div>
													</div>
													<br>
													<div class="form-group" id="RESET_PASSWORD">
														<label class="col-md-5 control-label"></label>

														<div class="col-md-7">
															<div class="col-md-7">
																<input type="radio" name="rdoAccountLock"
																	id="RDO_ACCOUNT_LOCK" value="L" class="text-right"
																	onclick="onRadioSelect(this.value)">&nbsp;&nbsp;
																<fmt:message key="label.acclock" />
															</div>

															<div class="col-md-7">
																<input type="radio" name="rdoForgetPassword"
																	id="RDO_FORGET_PASSWORD" value="R" class="text-right"
																	onclick="onRadioSelect(this.value)">&nbsp;&nbsp;
																<fmt:message key="label.forgetpass" />
															</div>
															<div class="col-md-7">
																<input type="radio" name="rdogeneratePwd" value="G"
																	onclick="onRadioSelect(this.value)"
																	id="RDO_GEN_PASSWORD" class="text-right">
																&nbsp;&nbsp;Generate Password
															</div>

														</div>
													</div>
													
												</div>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
							<!-----------------------Account Lock/Forget Password Section Ends---------------------------->
							<!-----------------------Security Question Section----------------------------->
							<div class="row" id="DIV_SECURITYQSTN" style="display: none">
								<div class="col-lg-12">
									<div class="callout callout-warning"></div>
									<div class="col-md-12">
											<fieldset class="edit-fieldset">
												<div class="box-body">
													<div class="form-group">
														<label class="col-md-10 control-label"><h6><fmt:message
																key="label.loginname" /></h6></label>
														<div class="col-md-2">
															<div class="input-group input-group-sm">
															<input type="hidden" id="HDN_REL_OR_RESET_IND"/>
															<input type="text" class="form-control"  id="TXT_LOCK_USERNAME1"
																	 readonly="true" />
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-12 control-label"><h6><fmt:message
																key="label.pleaseansqstn" /></h6></label>
													</div>
													<div class="form-group">
														<label class="col-md-10 control-label"
															id="TXT_SECURITY_QSTN"><h6></h6></label>
														<div class="col-md-2">
															<div class="input-group input-group-sm">
																<input type="text" class="form-control"
																	id="TXT_SECURITY_ANSWER" style="text-transform: uppercase" maxlength="50"/>
															</div>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-10">
															<input type="button" name="btn_pwdhint"
																value="<fmt:message key="label.pwdhintbtn" />"
																class="btn  btn-icon-left btn-sm"
																onclick="viewPasswordHint()"></input>
														</div>
														<label class="col-md-2 control-label"
															id="TXT_SECURITY_ANS_HINT" style="display: none; word-break: break-word;"></label>

													</div>
													<div class="row">
														<div class="box-body text-right">
															<div class="col-lg-12">
																<input type="button" name="btn_changePwd" value="Submit" id="SUBMIT_BTN"
																	class="btn  btn-icon-left btn-sm" onclick="return submitForm();" /> <input
																	type="button" name="btn_cancel" value="Cancel"
																	class="btn  btn-icon-left btn-sm" data-dismiss="modal"  id="btn_cancel"
																	onclick="fnCloseModel()" />
															</div>

														</div>
													</div>
												</div>
												<!-- /.box-body -->
									
									<!-----------------------Security Question Section Ends----------------------------->
									</fieldset>
									</div>
								</div>
							</div>
						</section>
						<!-- /.content -->
					</form>
					<!-- /.content-wrapper -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>
</fmt:bundle>
<script type="text/javascript">
document.cookie = "";
var c = document.cookie.split("; ");
for (i in c) 
document.cookie =/^[^=]+/.exec(c[i])[0]+"=;expires=Thu, 01 Jan 1970 00:00:00 GMT"; 
</script>