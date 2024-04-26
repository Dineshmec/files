CREATE DATABASE  IF NOT EXISTS `models` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `models`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: models
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aiusecase`
--

DROP TABLE IF EXISTS `aiusecase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aiusecase` (
  `Project_ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Notebook_Filename` varchar(255) DEFAULT NULL,
  `Data_Files` varchar(255) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Project_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aiusecase`
--

LOCK TABLES `aiusecase` WRITE;
/*!40000 ALTER TABLE `aiusecase` DISABLE KEYS */;
INSERT INTO `aiusecase` VALUES (1,'Identification of Loan Defaulters','risk-analytics-in-banking-financial-services-1','application_data.csv.zip','Analyze and identify potential loan defaulters in bank data.'),(2,'Analyze Bank Customer Churn','banking-churn-analysis-modeling','Churn_Modelling.csv','Study customer churn rates to understand reasons for departure.'),(3,'Risk-Based Pricing for Loan Interest Rates Prediction','banking-interest-rates-prediction-using-knn-rf','sample_submission_HSqiq1Q.csv.zip','Predict loan interest rates based on risk assessment.'),(4,'Customer Profiling and Targeted Telemarketing','ml-project-bank-telemarketing-analysis','bank-full.csv.zip','Profile customers and target them for telemarketing campaigns.'),(5,'Sentiment Analysis for Online Banking Reviews','online-banking-reviews-classification (1)','reviews_for_classification.csv (1).zip','Classify online banking reviews to gauge customer sentiment.');
/*!40000 ALTER TABLE `aiusecase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasciencetools`
--

DROP TABLE IF EXISTS `datasciencetools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datasciencetools` (
  `ToolID` int NOT NULL AUTO_INCREMENT,
  `ToolName` text NOT NULL,
  `ToolDescription` text NOT NULL,
  PRIMARY KEY (`ToolID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasciencetools`
--

LOCK TABLES `datasciencetools` WRITE;
/*!40000 ALTER TABLE `datasciencetools` DISABLE KEYS */;
INSERT INTO `datasciencetools` VALUES (1,'Tensorflow','TensorFlow is an open-source deep learning framework developed by Google for building and training neural network models, featuring flexibility, scalability, and support for various hardware platforms.'),(2,'PyTorch','PyTorch is an open-source deep learning framework developed by Facebook\'s AI Research lab (FAIR), known for its dynamic computational graph and ease of use.'),(3,'Keras','Keras is a high-level neural networks API written in Python, designed for ease of use and rapid prototyping, capable of running on top of TensorFlow, Theano, or Microsoft Cognitive Toolkit (CNTK).'),(4,'scikit-learn','scikit-learn is a popular machine learning library in Python, offering simple and efficient tools for data mining, data analysis, and machine learning tasks such as classification, regression, clustering, and dimensionality reduction.'),(5,'XGBoost','XGBoost is an open-source gradient boosting library known for its efficiency, scalability, and state-of-the-art performance in supervised learning tasks, especially in classification and regression problems.'),(6,'LightGBM','LightGBM is a gradient boosting framework developed by Microsoft, optimized for speed, memory usage, and large-scale datasets, achieving high-performance results in classification and regression tasks.'),(7,'KNIME','KNIME is an open-source data analytics platform that allows users to visually design data processing pipelines, incorporating machine learning and data mining algorithms for data analysis and exploration.'),(8,'RapidMiner','RapidMiner is a data science platform that enables users to perform end-to-end data preparation, machine learning, and predictive analytics tasks through visual workflows and automated model building.'),(9,'H2O.ai','H2O.ai is an open-source machine learning platform that provides scalable and distributed machine learning algorithms, enabling users to build and deploy predictive models efficiently.');
/*!40000 ALTER TABLE `datasciencetools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machinelearningmodels`
--

DROP TABLE IF EXISTS `machinelearningmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machinelearningmodels` (
  `ModelID` int NOT NULL AUTO_INCREMENT,
  `ModelName` text NOT NULL,
  `ModelDescription` text NOT NULL,
  PRIMARY KEY (`ModelID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machinelearningmodels`
--

LOCK TABLES `machinelearningmodels` WRITE;
/*!40000 ALTER TABLE `machinelearningmodels` DISABLE KEYS */;
INSERT INTO `machinelearningmodels` VALUES (1,'EDA','Exploratory Data Analysis (EDA) is the process of visually and statistically exploring datasets to understand their main characteristics, identify patterns, detect anomalies, and formulate hypotheses before applying machine learning algorithms.'),(2,'Logistic Regression','Logistic regression is a statistical model used for binary classification, estimating the probability of an event occurring based on one or more predictor variables.'),(3,'Decision Trees','Decision trees are a popular machine learning algorithm that recursively splits data based on the values of input features to make predictions in a tree-like structure, enabling both classification and regression tasks.'),(4,'Natural Language Processing (NLP)','Natural Language Processing (NLP) is a field of artificial intelligence that focuses on the interaction between computers and humans through natural language, enabling computers to understand, interpret, and generate human language.'),(5,'Gradient Boosting Machines (GBMs)','Gradient Boosting Machine (GBM) is an ensemble learning technique that sequentially combines multiple weak learners to create a strong predictive model.'),(6,'Neural Networks','A neural network is a computational model inspired by the structure and function of the human brain, consisting of interconnected nodes (neurons) organized into layers, used for tasks such as classification, regression, and pattern recognition in machine learning.'),(7,'Collaborative Filtering','Collaborative filtering is a recommendation technique that predicts a user\'s preferences or interests based on the preferences or behavior of similar users, facilitating personalized recommendations in recommendation systems.'),(8,'Sentiment Analysis','Sentiment analysis is the process of automatically determining the sentiment or emotion expressed in a piece of text, such as positive, negative, or neutral, to understand opinions and attitudes towards a subject or topic.'),(9,'Kth Nearest Neighbors','The kth Nearest Neighbor algorithm is a non-parametric classification or regression technique that predicts the label or value of a new data point based on the majority class or average value of its k nearest neighbors in the feature space.'),(10,'Support Vector Machines (SVM)','Support Vector Machine (SVM) is a supervised machine learning algorithm that finds the optimal hyperplane to separate data points into different classes, maximizing the margin between classes.'),(11,'Deep Learning','Deep learning is a subset of machine learning that utilizes artificial neural networks with multiple layers to automatically learn intricate patterns and representations from data, achieving state-of-the-art performance in various tasks such as image recognition and natural language processing.'),(12,'Random Forest','Random forests are built upon decision trees. Decision trees are simple models that recursively split the dataset into subsets based on the features, creating a tree-like structure where each internal node represents a \"test\" on an attribute (e.g., whether a feature is above or below a certain threshold), each branch represents the outcome of the test, and each leaf node represents a class label (in classification) or a numerical value (in regression). The \"random\" part of random forest comes from the fact that it introduces randomness both in the selection of data points used for training each tree (bootstrapping) and in the selection of features considered for each split in the tree. This randomness helps to decorrelate the individual trees, making the overall model more robust and less prone to overfitting. Once all the trees are trained, for classification tasks, each tree \"votes\" for the class it predicts, and the class with the most votes becomes the prediction of the random forest. For regression tasks, the predictions of all trees are averaged to obtain the final prediction.');
/*!40000 ALTER TABLE `machinelearningmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mlmodelstools`
--

DROP TABLE IF EXISTS `mlmodelstools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mlmodelstools` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ModelName` text NOT NULL,
  `ToolName` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mlmodelstools`
--

LOCK TABLES `mlmodelstools` WRITE;
/*!40000 ALTER TABLE `mlmodelstools` DISABLE KEYS */;
INSERT INTO `mlmodelstools` VALUES (1,'Linear Regression','Scikit-Learn'),(2,'Logistic Regression','Scikit-Learn'),(3,'Support Vector Regression','Scikit-Learn'),(4,'Support Vector Classification','Scikit-Learn'),(5,'Decision trees','Scikit-Learn'),(6,'Random forests','Scikit-Learn'),(7,'Kth nearest Neighbors','Scikit-Learn'),(8,'Naïve Bayes','Scikit-Learn');
/*!40000 ALTER TABLE `mlmodelstools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `Usecase_ID` int DEFAULT NULL,
  `Usecases` text,
  `Objective` text,
  `Model_ID` int DEFAULT NULL,
  `Models` text,
  `Model_Objective` text,
  `Tool_ID` int DEFAULT NULL,
  `Tools` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Smart Response','To streamline the process of investigating flagged individuals associated with Bank clients . It aims to provide case workers with AI-driven insights and draft summaries .',1,'LLM','the objective of a language learning model is to empower learners to develop communicative competence in the target language, enabling them to effectively understand, speak, read, and write in real-world contexts.',1,'Langchain'),(2,'Loan Processing and Validation','To do the background check of the applicant :  assess their earning capacity , what tax slab they fall under , their revenue(salary or business) ,their investments ,liabilities(loans,corp customer-Bought goods and not paid-creditor-accounts payable) and allot a credit score,debt to income ratio,Employment stability,Income status , collateral value,payment history , length of credit history , recent credit inquiries , liquid assets.Then asses whether loan application can be accepted or not',1,'Logistic Regression','To check whether Loan Application is accepted or not',1,'Scikit-learn'),(2,'Loan Processing and Validation','To do the background check of the applicant :  assess their earning capacity , what tax slab they fall under , their revenue(salary or business) ,their investments ,liabilities(loans,corp customer-Bought goods and not paid-creditor-accounts payable) and allot a credit score,debt to income ratio,Employment stability,Income status , collateral value,payment history , length of credit history , recent credit inquiries , liquid assets.Then asses whether loan application can be accepted or not',2,'Multinomial Logistic Regression','To check under which category of credit score does the applicant fall under',1,'Scikit-learn'),(3,'In Contract management ,  flagging non compliant clauses in a contract .','Banks will have clauses that are not compliant with the Regulatory Board and we have to identify these non compliant clauses  and to  ensure the validity of the contract . Thus mitigating the risks and maintain regulatory compliance',1,'Support Vector Classification','To classifyclauses as compliant or non-compliant based on predefined criteria or legal standards.',1,'Scikit-learn'),(3,'In Contract management ,  flagging non compliant clauses in a contract .','Banks will have clauses that are not compliant with the Regulatory Board and we have to identify these non compliant clauses  and to  ensure the validity of the contract . Thus mitigating the risks and maintain regulatory compliance',2,'Data Visualization','to create interactive dashboards or visual representations of contract data, highlighting non-compliant clauses, trends, and patterns.',1,'Scikit-learn'),(3,'In Contract management ,  flagging non compliant clauses in a contract .','Banks will have clauses that are not compliant with the Regulatory Board and we have to identify these non compliant clauses  and to  ensure the validity of the contract . Thus mitigating the risks and maintain regulatory compliance',3,'Anomaly Detection','Anomaly detection algorithms can be applied to identify unusual or unexpected patterns in contract data that may indicate non-compliance or deviations from standard practices.',1,'Scikit-learn'),(4,'Customer Service Chatbot','AI Powered Chatbots to support customers on Holistic customer services',1,'NLP:Sentiment Analysis','help the chatbot understand the user\'s  sentiment, allowing it to tailor responses accordingly.',1,'Scikit-learn'),(4,'Customer Service Chatbot','AI Powered Chatbots to support customers on Holistic customer services',2,'NLP:Intent Recognition','Intent recognition helps route user queries to the appropriate response or action, improving the efficiency of the chatbot.',1,'Scikit-learn'),(4,'Customer Service Chatbot','AI Powered Chatbots to support customers on Holistic customer services',3,'NLP: User Behavior Analysis','User behavior analysis helps optimize the chatbot\'s performance, enhance user satisfaction, and drive continuous improvement.',1,'Scikit-learn'),(5,'Instant Domestic and International Tranfers','Facilitating seamless money transfers, both domestically and internationally, regardless of the circumstances.',1,'Customer Segmentation and Personalization','Customer segmentation allows financial institutions to tailor money transfer services, pricing plans, and promotional offers to meet the diverse needs and preferences of different customer segments.',1,'Scikit-learn');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 22:21:43
CREATE DATABASE  IF NOT EXISTS `test_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: test_db
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bausecase`
--

DROP TABLE IF EXISTS `bausecase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bausecase` (
  `UC_ID` varchar(255) DEFAULT NULL,
  `Use_Case` text,
  `Steps_ID` varchar(255) DEFAULT NULL,
  `Action` text,
  `Source_Actors` text,
  `Target_Actor` text,
  `Action_Details` text,
  `Input` text,
  `Output` text,
  `Model_ID` int DEFAULT NULL,
  `Model_Name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bausecase`
--

LOCK TABLES `bausecase` WRITE;
/*!40000 ALTER TABLE `bausecase` DISABLE KEYS */;
INSERT INTO `bausecase` VALUES ('UC001','Credit underwriting for unsecured line of credit','UC001_ST01','Opening application ','Loan Manager ','Lending Platform ','Opening the Underwriting screen and load the application intended to work with.  ','Application number ','Application ',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST02','Conducting Preliminary eligibility checks ','AI Engine ','AI Engine ','Initial eligibility assessments are performed based on criteria such as the completeness and accuracy of the application, verification of the applicant\'s identity, and verification of income and employment.','Application','Eligibility assessment report/status',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST03','Assessing Credit worthiness ','AI Engine ','AI Engine ','Review the information from the credit bureau report ','Credit report ','Credit worthiness summary',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST03.1','Acquiring Credit Reports ','AI Engine ','Credit Bureau','Obtain the credit reports from the identified credit bureaus','Applicant details ','Credit reports',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST03.2','Reviewing credit histoy ','AI Engine ','AI Engine ','Account details and payment history are examined. ','Types of Credit account, open/ close dates, credit limits, current balances, frequency of late payments','Historical credit behaviour ',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST03.3','Analyzing credit utilization ','AI Engine ','AI Engine ','Analyze credit utilization ratio (ratio of current balances to credit limits).','Credit Utilization Ratio','Credit Stress Level \nCredit Utilization Trends',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST03.4','Examining inquiries','AI Engine ','AI Engine ','Note the number of recent hard inquiries.','No.of hard inquiries','Financial distress level',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST03.5','Analysing the credit score','AI Engine ','AI Engine ','Evaluate the credit score provided in the report. ','Credit Score','Credit risk level \nBorrower profile segmentation ',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST04','Calculating Debt-to-Income ratio','AI Engine ','AI Engine ','Calculate the monthy debt-to-income ratio.','Bank Statements \nTax Returns','Monthly Debt-to-Income Ratio',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST05','Pricing the application ','AI Engine ','AI Engine ','Pricing of the application after thorough market analysi and adopting risk-based pricing model.','Reports from the previous steps ','Interest rates, fees, and other terms of the loan',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST06','Specifying stipulations ','AI Engine ','Loan Manager ','Clearly define any conditions or stipulations that must be met. ','Reports from the previous steps ','Report of the additional conditions or stipulations ',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST07','Specifying itemizations ','AI Engine ','Loan Manager ','Provide a detailed itemization of all associated fees, charges, and costs. ','Reports from the previous steps ','Itemization report ',NULL,NULL),('UC001','Credit underwriting for unsecured line of credit','UC001_ST08','Decision Making ','AI Engine ','Loan Manager ','Make a decision about the application.','Reports from the previous steps ','Status of the application - Accept/Reject/Manual review',NULL,NULL),('UC002','Customer Service bot','UC002_ST01','Client Interaction Start','Client','Application','Client opens the banking mobile app, website, or messaging platform','Client action','Chatbot interface loads on the client’s device',NULL,NULL),('UC002','Customer Service bot','UC002_ST02','Chatbot Greeting','Chatbot','Client','Chatbot greets the client with a welcome message','Detection of client’s presence.','Welcome message displayed to the client.',NULL,NULL),('UC002','Customer Service bot','UC002_ST03','Authentication Prompt','Chatbot','Client','Chatbot prompts the customer for authentication (e.g., username/password, biometrics)','Initial client engagement','Authentication prompt sent to the client.',NULL,NULL),('UC002','Customer Service bot','UC002_ST04','Authentication Credentials Submission','Client','Client','Client provides authentication credentials','Username/password or biometric data from the client','Credentials transmitted to the backend for verification',NULL,NULL),('UC002','Customer Service bot','UC002_ST05','Identity Verification','Chatbot','Client','Chatbot verifies the customer\'s identity with the backend systems','Authentication credentials from the client.','Verification result ',NULL,NULL),('UC002','Customer Service bot','UC002_ST06','Client Request','Client','Client','Client types or speaks a request (e.g., \"Check my account balance\")','Client’s spoken or typed request','Digital recording or text captured by the system',NULL,NULL),('UC002','Customer Service bot','UC002_ST07','Input Processing by NLP Engine','NLP','NLP','The NLP engine processes the Client input, identifying the intent and extracting relevant entities (e.g., account type).','Client’s request in text or speech form.','Intent and entities identified (e.g., intent to check balance, account type).',NULL,NULL),('UC002','Customer Service bot','UC002_ST08','Intent Classification','NLP','NLP','The NLP engine classifies the intent of the Client request (e.g., \"Check Balance\")','Data from the NLP processing','Classified intent',NULL,NULL),('UC002','Customer Service bot','UC002_ST09','Response Determination','Dialog Manager','Dialog Manager','The dialog manager determines the appropriate response or action based on the identified intent and extracted entities','Intent and entities from the NLP engine.','Decision on the next step',NULL,NULL),('UC002','Customer Service bot','UC002_ST10','Information Clarification (if needed)','Dialog Manager','Dialog Manager','If additional information is required, the dialog manager prompts the customer for clarification or missing details.','Incomplete or ambiguous client request','Prompt for more information.',NULL,NULL),('UC002','Customer Service bot','UC002_ST11','Backend Interaction','Dialog Manager','Backend Systems','The dialog manager interacts with the backend systems (core banking, CRM, databases) through APIs to retrieve the \nrequested information or execute transactions.','API request','Data retrieved or transaction status',NULL,NULL),('UC002','Customer Service bot','UC002_ST12','Data Retrieval','Dialog Manager','Client','For example, if the intent is \"Check Balance,\" the dialog manager retrieves the Client account balance from the core banking system.','Request for balance check to the core banking system.','Account balance information',NULL,NULL),('UC002','Customer Service bot','UC002_ST13','Response Formulation','Dialog Manager','Dialog Manager','The dialog manager formulates a natural language response based on the retrieved data or transaction result.','Data or transaction results from the backend.','Formulated response in natural language.',NULL,NULL),('UC002','Customer Service bot','UC002_ST14','Personalization','CRM','Client','The response is personalized using customer information from the CRM system.','Customer data from CRM.','Personalized response content.',NULL,NULL),('UC002','Customer Service bot','UC002_ST15','Response Delivery','Chatbot','Client','The chatbot delivers the response to the customer through the appropriate channel (e.g., mobile app, website, messaging platform).','Prepared response from the dialog manager.','Response delivered to the client via the selected channel',NULL,NULL),('UC002','Customer Service bot','UC002_ST16','Monitoring for Further Input','Chatbot','Chatbot','The chatbot monitors for further customer input or queries','Any follow-up interaction from the client.','System remains active to capture and process additional client input.',NULL,NULL),('UC002','Customer Service bot','UC002_ST17','Conversation Closure','Client','Client','Client indicates the desire to end the conversation (e.g., \"Thank you,\" \"Goodbye\").','Client’s closing remark','Signal to the system to end the session.',NULL,NULL),('UC002','Customer Service bot','UC002_ST18','Closing Interaction','Chatbot','Chatbot','chatbot provides a closing message and prompts for feedback or a satisfaction rating.','End of conversation signal.','losing message and feedback prompt delivered to the client.',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST01','Log in to the banking application ','Client','Bank\'s application','The client accesses the bank\'s application (mobile app or online banking portal)','Client action to log','The application interface is displayed to the client.',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST02','Navigate to the transfer menu ','Client','Bank\'s application','The client selects the option to initiate a transfer','Client selects the “Initiate Transfer”','Transfer options menu is displayed',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST03','Select the type of transfer ','Client','Bank\'s application','The client chooses whether the transfer is domestic (within the same bank) or international.','Client’s selection of transfer type.','Appropriate form or fields displayed for the selected transfer type.',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST04','Input the recipient’s bank details','Client','Bank\'s application','The client enters the recipient\'s account details (account number, bank name,Ifsc code \nfor transfers).','Recipient’s banking ','Details are captured and temporarily stored',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST05','Enter the amount to be transferred','Client','Bank\'s application','The client enters the transfer amount and optional comments or references','Amount to be transferred and any additional comments.','Captured details displayed for review.',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST06','Review all entered details for accuracy and confirm the transaction.','Client','Bank\'s application','The client reviews and confirms the transfer details.','Client’s review and confirmation','Transaction details are locked ',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST07','The application checks the client\'s account balance','Bank\'s Application','Client','The bank\'s application validates the Client account balance and transfer limits','Details of the proposed transfer ','Validation result that confirms',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST08','Process the debit from the client’s account ','Bank\'s Application','Both the Client account and the Recipient account','The bank\'s application debits the Client account and credits the recipient\'s account within the same core banking system','Validated transaction details ','Client’s account is debited and the recipient’s account is credited',NULL,NULL),('UC003','Instant Domestic Transfer','UC002_ST09','Record the transaction in the bank’s system','Bank\'s Application','Client','The transaction is recorded, and a confirmation is displayed to the Client','Confirmation of transaction completion from the core banking system.','Display of transaction confirmation, receipt',NULL,NULL),('UC004','Instant International Transfer','UC002_ST01','Accessing the application','Client','Bank\'s application','The client accesses the bank\'s application (mobile app or online banking portal)','Client\'s action to log ','The bank\'s application interface loads',NULL,NULL),('UC004','Instant International Transfer','UC002_ST02','Selecting the transfer initiation option','Client','Bank\'s application','The client selects the option to initiate a transfer','Client\'s selection from the application menu.','Transfer options are displayed ',NULL,NULL),('UC004','Instant International Transfer','UC002_ST03','Choosing the type of transfer','Client','Bank\'s application','The client chooses whether the transfer is domestic (within the same bank) or international.','Client\'s choice of transfer type.','Appropriate input fields ',NULL,NULL),('UC004','Instant International Transfer','UC002_ST04','Entering recipient’s banking details','Client','Bank\'s application','The client enters the recipient\'s account details (account number, bank name, and routing number/SWIFT code for international transfers)','Recipient’s account details entered by the client.','System captures and displays ',NULL,NULL),('UC004','Instant International Transfer','UC002_ST05','Entering transfer amount and comments','Client','Bank\'s application','The client enters the transfer amount and optional comments or references','Amount of money to transfer ','Details displayed for review.',NULL,NULL),('UC004','Instant International Transfer','UC002_ST06','Reviewing and confirming details','Client','Bank\'s application','The client reviews and confirms the transfer details.','Client\'s review of the entered information','Details are finalized and submitted for processing.',NULL,NULL),('UC004','Instant International Transfer','UC002_ST07','Validating account balance and limits','Bank\'s application','core banking system','The bank\'s application validates the Client account balance and transfer limits','Client’s account information','Validation results; confirmation if the transfer is permissible or denial if not.',NULL,NULL),('UC004','Instant International Transfer','UC002_ST08','Integrating with payment systems','Bank\'s application','Payment gateway','The bank\'s application integrates with a payment gateway or correspondent bank network','Confirmed transaction details ready for external processing.','Transaction details are passed to the payment gateway ',NULL,NULL),('UC004','Instant International Transfer','UC002_ST09','Debiting the account and transferring funds','Bank\'s application','Payment gateway','The Client account is debited, and the funds are transferred to the payment gateway or correspondent bank','Authorization','Client\'s account is debited',NULL,NULL),('UC004','Instant International Transfer','UC002_ST10','Initiating the transfer to recipient’s bank','Payment gateway','Recipient\'s bank','The payment gateway or correspondent bank initiates the transfer to the recipient\'s bank based on the provided SWIFT code \nor routing details.','Funds and transfer instructions received from the originating bank.','Funds are transferred to the recipient\'s bank.',NULL,NULL),('UC004','Instant International Transfer','UC002_ST11','Crediting the recipient\'s account','Recipient\'s bank','Recipient\'s account','Once the funds are received by the recipient\'s bank, the recipient\'s account is credited','Funds arrive at the recipient’s bank.','Recipient\'s account is credited ',NULL,NULL),('UC004','Instant International Transfer','UC002_ST12','Recording the transaction and displaying confirmation','Bank\'s application','Client','The transaction is recorded, and a confirmation is displayed to the Client','Transaction details and completion status','Confirmation message displayed to the client; transaction record updated.',NULL,NULL),('UC005','Smart Responses','UC002_ST01','Initiates','Client (Initiator)','Bank\'s online banking portal or mobile app','Initiates a payment through the originating bank\'s online banking portal or mobile app.','Client initiates the payment transaction ','Transaction request is submitted to the bank\'s system.',NULL,NULL),('UC005','Smart Responses','UC002_ST02','Flags','Bank\'s transaction monitoring system','Transaction record','The transaction is flagged after further review of predefined criteria.','Transaction details are analyzed against predefined criteria.','Transaction is flagged as suspicious or requiring further review.',NULL,NULL),('UC005','Smart Responses','UC002_ST03','Notices','Bank\'s notification system','Client (Initiator)','Initiator Notices the transaction is flagged ','Notification or alert generated by the bank’s system.','Initiator becomes aware that the transaction has been flagged.',NULL,NULL),('UC005','Smart Responses','UC002_ST04','Submits','Client (Initiator)','Bank\'s support portal','Initiator  submits a query through the bank\'s support portal for clarification or resolution.','Query submitted through the support portal','Query is received and logged by the bank\'s support system.',NULL,NULL),('UC005','Smart Responses','UC002_ST05','Generates','Bank\'s support system','Case worker','Automatically generates a ticket for the submitted query and assigns it to an available case worker.','Details from the submitted query.','Support ticket is generated and assigned to a case worker for resolution.',NULL,NULL),('UC005','Smart Responses','UC002_ST06','Drafts','AI Engine','Support ticket','The AI Engine, upon ticket generation, creates a smart response draft tailored to the specific issue. This includes acknowledgment,\n explanation, next steps, assurance, and contact information. ','Ticket details and flagged transaction information.','AI-generated draft response is created',NULL,NULL),('UC005','Smart Responses','UC002_ST07','Reviews','Case worker','AI-generated draft response','Reviews the AI-generated draft, adjusting the content to ensure it is personalized and accurately addresses the client\'s\n specific situation and concerns.','AI-generated draft response.','Finalized response is personalized and tailored to the client\'s situation ',NULL,NULL),('UC005','Smart Responses','UC002_ST08','Sends','Case worker','Client (Initiator)','Sends the finalized response to the client via the bank\'s support portal, email, or preferred communication channel','Finalized response from the case worker.','Response is sent ',NULL,NULL);
/*!40000 ALTER TABLE `bausecase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mermaid`
--

DROP TABLE IF EXISTS `mermaid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mermaid` (
  `UC_ID` varchar(20) DEFAULT NULL,
  `mermaid_diagram` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mermaid`
--

LOCK TABLES `mermaid` WRITE;
/*!40000 ALTER TABLE `mermaid` DISABLE KEYS */;
INSERT INTO `mermaid` VALUES ('UC001','sequenceDiagram\n    participant LM as \"Loan Manager\"\n    participant LPlat as \"Lending Platform\"\n    participant AIE as \"AI Engine\"\n    participant CB as \"Credit Bureau\"\n    LM->>LPlat: Opens Underwriting screen & loads application\n    activate LPlat\n    LPlat-->>LM: Application loaded\n    deactivate LPlat\n    LM->>AIE: Conducts Preliminary eligibility checks\n    activate AIE\n    AIE-->>AIE: Assessing Credit worthiness\n    AIE->>CB: Acquires Credit Reports\n    CB-->>AIE: Credit reports sent\n    AIE->>AIE: Reviews credit history\n    AIE->>AIE: Analyzes credit utilization\n    AIE->>AIE: Examines inquiries\n    AIE->>AIE: Analyses credit score\n    AIE->>AIE: Calculates Debt-to-Income ratio\n    AIE->>AIE: Prices the application\n    AIE-->>LM: Specifies stipulations & itemizations\n    AIE->>LM: Decision Making\n    AIE-->>LM: Application decision Accept/Reject\n    AIE-->>LM: Manual Review (If required)\n    deactivate AIE'),('UC002','sequenceDiagram\n    participant C as Client\n    participant A as Application\n    participant Ch as Chatbot\n    participant NLP as NLP Engine\n    participant DM as Dialog Manager\n    participant BS as Backend Systems\n    participant CRM as CRM System\n\n    C->>A: Client Interaction Start\n    A->>Ch: Chatbot Greeting\n    Ch->>C: Authentication Prompt\n    C->>C: Authentication Credentials Submission\n    Ch->>C: Identity Verification\n    C->>C: Client Request\n    NLP->>NLP: Input Processing by NLP Engine\n    NLP->>NLP: Intent Classification\n    DM->>DM: Response Determination\n    DM->>DM: Information Clarification (if needed)\n    DM->>BS: Backend Interaction\n    DM->>C: Data Retrieval\n    DM->>DM: Response Formulation\n    CRM->>C: Personalization\n    Ch->>C: Response Delivery\n    Ch->>Ch: Monitoring for Further Input\n    C->>C: Conversation Closure\n    Ch->>Ch: Closing Interaction'),('UC004','sequenceDiagram\n    participant C as Client\n    participant BA as Bank\'s Application\n    participant CBS as Core Banking System\n    participant PG as Payment Gateway\n    participant RB as Recipient\'s Bank\n    participant RA as Recipient\'s Account\n\n    C->>BA: Accessing the application\n    C->>BA: Selecting the transfer initiation option\n    C->>BA: Choosing the type of transfer\n    C->>BA: Entering recipient’s banking details\n    C->>BA: Entering transfer amount and comments\n    C->>BA: Reviewing and confirming details\n    BA->>CBS: Validating account balance and limits\n    BA->>PG: Integrating with payment systems\n    BA->>PG: Debiting the account and transferring funds\n    PG->>RB: Initiating the transfer to recipient’s bank\n    RB->>RA: Crediting the recipient\'s account\n    BA->>C: Recording the transaction and displaying confirmation'),('UC005','sequenceDiagram\n    participant CI as Client (Initiator)\n    participant BOP as Bank\'s Online Banking Portal or Mobile App\n    participant BTMS as Bank\'s Transaction Monitoring System\n    participant TR as Transaction Record\n    participant BNS as Bank\'s Notification System\n    participant BSP as Bank\'s Support Portal\n    participant BSS as Bank\'s Support System\n    participant CW as Case Worker\n    participant AIE as AI Engine\n    participant AD as AI-generated Draft Response\n\n    CI->>BOP: Initiates\n    BTMS->>TR: Flags\n    BNS->>CI: Notices\n    CI->>BSP: Submits\n    BSS->>CW: Generates\n    AIE->>AD: Drafts\n    CW->>AD: Reviews\n    CW->>CI: Sends'),('UC003','sequenceDiagram\n    participant C as Client\n    participant BA as Bank\'s Application\n    participant CA as Client Account\n    participant RA as Recipient Account\n\n    C->>BA: Log in to the banking application\n    C->>BA: Navigate to the transfer menu\n    C->>BA: Select the type of transfer\n    C->>BA: Input the recipient’s bank details\n    C->>BA: Enter the amount to be transferred\n    C->>BA: Review all entered details for accuracy and confirm the transaction.\n    BA->>C: Checks the client\'s account balance\n    BA->>CA: Process the debit from the client’s account\n    BA->>RA: Credit the recipient\'s account\n    BA->>C: Record the transaction in the bank’s system');
/*!40000 ALTER TABLE `mermaid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `otp_value` varchar(255) DEFAULT NULL,
  `used` tinyint(1) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES (28,'3337',1,'dineshmec55@gmail.com'),(29,'4100',0,'dineshmec55@gmail.com'),(30,'4453',0,'dineshmec55@gmail.com'),(31,'8458',0,'dineshmec55@gmail.com'),(32,'7942',0,'amizhthansp@gmail.com'),(33,'1150',0,'amizhthansp@gmail.com'),(34,'3333',0,'amizhthansp@gmail.com'),(35,'6894',1,'amizhthansp@gmail.com');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techniques`
--

DROP TABLE IF EXISTS `techniques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `techniques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techniques`
--

LOCK TABLES `techniques` WRITE;
/*!40000 ALTER TABLE `techniques` DISABLE KEYS */;
INSERT INTO `techniques` VALUES (1,'EDA'),(2,'Logistic Regression'),(3,'Decision Trees'),(4,'Natural Language Processing (NLP)'),(5,'Gradient Boosting Machines (GBMs)'),(6,'Neural Networks'),(7,'Collaborative Filtering'),(8,'Sentiment Analysis'),(9,'Kth Nearest Neighbors'),(10,'Support Vector Machines (SVM)'),(11,'Deep Learning');
/*!40000 ALTER TABLE `techniques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcases`
--

DROP TABLE IF EXISTS `testcases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testcases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcases`
--

LOCK TABLES `testcases` WRITE;
/*!40000 ALTER TABLE `testcases` DISABLE KEYS */;
INSERT INTO `testcases` VALUES (1,'Analyze bank customer churn rate to comprehend reasons for customer departure.'),(2,'Risk-Based Pricing for Loan Interest Rates Prediction.'),(3,'Customer Profiling and Targeted Telemarketing for Deposit Acquisition.'),(4,'Personalized Service Recommendation for Enhanced User Experience.'),(5,'Sentiment Analysis for Online Banking Reviews Classification.'),(6,'Personal Loan Conversion Prediction for Liability Customers.');
/*!40000 ALTER TABLE `testcases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `work_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'akashpersonal18@gmail.com','123456',NULL),(8,'dineshmec55@gmail.com','098765',NULL),(10,'amizhthansp@gmail.com','098765',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 22:21:44
CREATE DATABASE  IF NOT EXISTS `techinsurance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `techinsurance`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: techinsurance
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `building` varchar(255) DEFAULT NULL,
  `streetName` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `threeWordAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123','Main Street','New York','NY','USA','10001','circle.square.triangle'),(2,'456','Elm Street','Los Angeles','CA','USA','90001','apple.banana.orange'),(3,'987','Main Street','New York','NY','USA','10001','circle.square.triangle'),(4,'909','Elm Street','Los Angeles','CA','USA','90001','apple.banana.orange'),(5,'909','Elm Street','Los Angeles','CA','USA','90001','apple.banana.orange'),(6,'909','Elm Street','Los Angeles','CA','USA','90001','apple.banana.orange'),(7,'909','Elm Street','Los Angeles','CA','USA','90001','apple.banana.orange');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary`
--

DROP TABLE IF EXISTS `beneficiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  `share` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `beneficiary_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary`
--

LOCK TABLES `beneficiary` WRITE;
/*!40000 ALTER TABLE `beneficiary` DISABLE KEYS */;
INSERT INTO `beneficiary` VALUES (1,'John Smith',1,0.5),(2,'Jane Doe',2,0.3);
/*!40000 ALTER TABLE `beneficiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `claimType` enum('own property damage','third party bodily injury','third party property damage','other') DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lossCause` varchar(255) DEFAULT NULL,
  `description` text,
  `fnol` date DEFAULT NULL,
  `claimNumber` varchar(255) DEFAULT NULL,
  `liabilityShare` float DEFAULT NULL,
  `reserve` float DEFAULT NULL,
  `claimStatus` enum('open','closed','reopened') DEFAULT NULL,
  `lastUpdate` date DEFAULT NULL,
  `reopenDate` date DEFAULT NULL,
  `excessAmount` float DEFAULT NULL,
  `paymentMethod` enum('cash','credit card','cheque','electronic transfer','crypto currency or tokens') DEFAULT NULL,
  `documents` text,
  `lossDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
INSERT INTO `claim` VALUES (1,'own property damage','123 Main St, Cityville','Fire','Fire damage to property','2024-04-05','CLM-001',0.5,5000,'open','2024-04-07',NULL,1000,'credit card','document1.pdf, document2.pdf','2024-04-01'),(2,'third party bodily injury','456 Elm St, Townville','Car accident','Injured pedestrian','2024-03-20','CLM-002',0.3,8000,'closed','2024-03-25',NULL,1500,'cheque','document3.pdf','2024-03-15');
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claimsbordereau`
--

DROP TABLE IF EXISTS `claimsbordereau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claimsbordereau` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatyReference` varchar(255) DEFAULT NULL,
  `policyholder` varchar(255) DEFAULT NULL,
  `policyNumber` varchar(255) DEFAULT NULL,
  `inceptionDate` date DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `indemnityLimitPolicy` int DEFAULT NULL,
  `claimNumber` varchar(255) DEFAULT NULL,
  `fnol` date DEFAULT NULL,
  `dateOfLoss` date DEFAULT NULL,
  `causeOfLoss` varchar(255) DEFAULT NULL,
  `claimant` varchar(255) DEFAULT NULL,
  `GrosslLossReserve` float DEFAULT NULL,
  `excessAmount` float DEFAULT NULL,
  `expenseReserve` float DEFAULT NULL,
  `paid` float DEFAULT NULL,
  `expensesPaid` float DEFAULT NULL,
  `expectedRecovery` float DEFAULT NULL,
  `recoveryReceived` float DEFAULT NULL,
  `claimStatus` enum('open','closed','reopened') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policyNumber` (`policyNumber`),
  CONSTRAINT `claimsbordereau_ibfk_1` FOREIGN KEY (`policyNumber`) REFERENCES `motorcoverage` (`policyNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claimsbordereau`
--

LOCK TABLES `claimsbordereau` WRITE;
/*!40000 ALTER TABLE `claimsbordereau` DISABLE KEYS */;
INSERT INTO `claimsbordereau` VALUES (4,'Treaty123','John Doe','POL-001','2023-01-01','2023-12-31',1000000,'CLAIM001','2023-06-15','2023-06-10','Car accident','Jane Smith',50000,1000,2000,25000,5000,15000,10000,'open'),(5,'Treaty456','Alice Johnson','POL-002','2023-02-15','2023-11-30',800000,'CLAIM002','2023-07-20','2023-07-10','Theft','Robert Brown',40000,1500,1800,20000,3000,12000,8000,'closed');
/*!40000 ALTER TABLE `claimsbordereau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `registeredAddressId` bigint DEFAULT NULL,
  `dateFounded` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `preferredLanguage` varchar(255) DEFAULT NULL,
  `registrationNumber` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `registeredAddressId` (`registeredAddressId`),
  CONSTRAINT `commercial_ibfk_1` FOREIGN KEY (`registeredAddressId`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial`
--

LOCK TABLES `commercial` WRITE;
/*!40000 ALTER TABLE `commercial` DISABLE KEYS */;
INSERT INTO `commercial` VALUES (1,'ABC Company',1,'2000-01-01','abc@example.com','+123456789','Manufacturing','English','ABC12345','VAT123'),(2,'XYZ Corporation',2,'1995-05-10','xyz@example.com','+987654321','Technology','Spanish','XYZ54321','VAT456');
/*!40000 ALTER TABLE `commercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conviction`
--

DROP TABLE IF EXISTS `conviction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conviction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `offenceDate` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `points` int DEFAULT NULL,
  `fine` float DEFAULT NULL,
  `fineCurrency` enum('fiat','cryptocurrency and tokens') DEFAULT NULL,
  `suspension` tinyint(1) DEFAULT NULL,
  `suspensionLength` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conviction`
--

LOCK TABLES `conviction` WRITE;
/*!40000 ALTER TABLE `conviction` DISABLE KEYS */;
INSERT INTO `conviction` VALUES (1,'2023-01-01','2023-02-01',6,500,'fiat',1,3),(2,'2022-11-15','2023-01-10',3,300,'fiat',0,0);
/*!40000 ALTER TABLE `conviction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `driverDOB` date DEFAULT NULL,
  `isPrimaryDriver` tinyint(1) DEFAULT NULL,
  `licence` varchar(255) DEFAULT NULL,
  `noClaimsDiscount` float DEFAULT NULL,
  `conviction` varchar(255) DEFAULT NULL,
  `medicalCondition` varchar(255) DEFAULT NULL,
  `loading` float DEFAULT NULL,
  `isBlueBadge` tinyint(1) DEFAULT NULL,
  `nonMotorConviction` varchar(255) DEFAULT NULL,
  `workStatus` enum('self employed','retired','employed','redundant') DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `drivingLicenceId` bigint DEFAULT NULL,
  `convictionId` bigint DEFAULT NULL,
  `medicalConditionId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drivingLicenceId` (`drivingLicenceId`),
  KEY `convictionId` (`convictionId`),
  KEY `medicalConditionId` (`medicalConditionId`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`drivingLicenceId`) REFERENCES `drivinglicence` (`id`),
  CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`convictionId`) REFERENCES `conviction` (`id`),
  CONSTRAINT `driver_ibfk_3` FOREIGN KEY (`medicalConditionId`) REFERENCES `medicalcondition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (3,'John Doe','male','1990-05-15',1,'DL12345',0.75,'Speeding Offence','Diabetes',0.05,0,'None','employed','Software Engineer',1,1,1);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivinglicence`
--

DROP TABLE IF EXISTS `drivinglicence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivinglicence` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `licenceNumber` varchar(255) DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `licenceCategory` varchar(255) DEFAULT NULL,
  `licenceCodes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivinglicence`
--

LOCK TABLES `drivinglicence` WRITE;
/*!40000 ALTER TABLE `drivinglicence` DISABLE KEYS */;
INSERT INTO `drivinglicence` VALUES (1,'DL123456','2023-01-01','2028-01-01','USA','Category A','ABC123');
/*!40000 ALTER TABLE `drivinglicence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insuranceentity`
--

DROP TABLE IF EXISTS `insuranceentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insuranceentity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tradeName` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `classification` varchar(255) DEFAULT NULL,
  `registrationNumber` varchar(255) DEFAULT NULL,
  `yearEstablished` date DEFAULT NULL,
  `addressId` bigint DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `creditRating` varchar(255) DEFAULT NULL,
  `developerPortal` varchar(255) DEFAULT NULL,
  `productCatalog` enum('property fire insurance','burglary insurance','renters insurance','home and content insurance','property flood insurance','debris removal insurance','motor comprehensive insurance','motor third party liability insurance','land transit insurance','marine cargo insurance','marine hull and machinery insurance','marine protection and indemnity','carriers liability insurance','medical insurance','construction all risks insurance','engineering contractor plant and machinery insurance','electronic equipment insurance','equipment breakdown insurance','decenial liability insurance','deterioration of stock insurance','boiler and machinery insurance','glass insurance','money cash in transit insurance','money cash in safe insurance','fidelity guarantee insurance','workers compensation insurance','pet insurance','bloodstock insurance','livestock insurance','personal accident insurance','term life insurance','whole of life insurance','medical malpractice insurance','professional indemnity insurance','trade credit insurance','purchase protection insurance','travel insurance','legal expense insurance','cyber liability insurance','business interruption insurance','directors and officers insurance','key person insurance','commercial general liability','employers liability insurance','environmental liability insurance','products liability insurance','property terrorism and sabotage insurance','business owners insurance','errors and ommissions insurance','commercial umbrella insurance','event insurance','passenger liability insurance (aviation)','ground risk hull insurance (aviation)','in-flight insurance (aviation)','roadside assistance','crop insurance','drone insurance','gap insurance','green card','orange card','Investment Saving Account (UK market related)','pension','endowment','annuity','wedding ring insurance','other') DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `insuranceentity_ibfk_1` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insuranceentity`
--

LOCK TABLES `insuranceentity` WRITE;
/*!40000 ALTER TABLE `insuranceentity` DISABLE KEYS */;
INSERT INTO `insuranceentity` VALUES (1,'ABC Insurance Company','ABC Insure','Public Limited Company','Property and Casualty Insurer','ABC12345','2000-01-01',1,'https://www.abcinsure.com','+1234567890','AAA','https://developers.abcinsure.com','property fire insurance','VAT12345678');
/*!40000 ALTER TABLE `insuranceentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalcondition`
--

DROP TABLE IF EXISTS `medicalcondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalcondition` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notifiableCondition` enum('diabetes','syncope','heart condition','sleep aponea','epilepsy','strokes','null') DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `medicalDVLArestriction` varchar(255) DEFAULT NULL,
  `medicalTreatment` varchar(255) DEFAULT NULL,
  `bypassOperation` tinyint(1) DEFAULT NULL,
  `insulinInjected` tinyint(1) DEFAULT NULL,
  `dailyInsulinUnits` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalcondition`
--

LOCK TABLES `medicalcondition` WRITE;
/*!40000 ALTER TABLE `medicalcondition` DISABLE KEYS */;
INSERT INTO `medicalcondition` VALUES (1,'diabetes','active','no restrictions','insulin therapy',1,1,30),(2,'syncope','inactive','no restrictions','medication',0,0,NULL);
/*!40000 ALTER TABLE `medicalcondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motorcoverage`
--

DROP TABLE IF EXISTS `motorcoverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motorcoverage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `policyNumber` varchar(255) DEFAULT NULL,
  `inceptionDate` date DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `status` enum('in force','cancelled','lapsed','extended') DEFAULT NULL,
  `discountAmount` float DEFAULT NULL,
  `premiumRate` float DEFAULT NULL,
  `grossWrittenPremium` float DEFAULT NULL,
  `salesTax` float DEFAULT NULL,
  `brokeragePercentage` float DEFAULT NULL,
  `brokerageAmount` float DEFAULT NULL,
  `premiumPaymentFrequency` enum('annual','bi-annual','quarterly','monthly','bi-monthly','weekly','daily','usage based or on demand','subscription (not an annual contract)','other') DEFAULT NULL,
  `indemnityLimitPolicy` int DEFAULT NULL,
  `indemnityLimitAccident` int DEFAULT NULL,
  `isAgreedValue` tinyint(1) DEFAULT NULL,
  `endorsementID` varchar(255) DEFAULT NULL,
  `endorsementDate` date DEFAULT NULL,
  `endorsementType` enum('addition/increase','deletion/decrease','policy cancellation','policy extension','policy declaration','policy transfer','policy renewal') DEFAULT NULL,
  `peril` enum('liability towards third parties','fire','theft','accidental damage','windshield damage','malicious damage','terrorism and sabotage','flood','earthquake','volcanic erruption','tsunami','hail','unknown or hit and run','riots','strikes','civil commotion','war') DEFAULT NULL,
  `voluntaryDeductiblePercentage` float DEFAULT NULL,
  `voluntaryDeductibleAmount` int DEFAULT NULL,
  `compulsoryDeductiblePercentage` float DEFAULT NULL,
  `compulsoryDeductibleAmount` int DEFAULT NULL,
  `windscreenDeductiblePercentage` float DEFAULT NULL,
  `windscreenDeductibleAmount` int DEFAULT NULL,
  `distanceUnit` enum('km','mile') DEFAULT NULL,
  `pleasureDistance` float DEFAULT NULL,
  `businessDistance` float DEFAULT NULL,
  `numberOfVehicles` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_policyNumber` (`policyNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motorcoverage`
--

LOCK TABLES `motorcoverage` WRITE;
/*!40000 ALTER TABLE `motorcoverage` DISABLE KEYS */;
INSERT INTO `motorcoverage` VALUES (1,'POL-001','2023-01-01','2024-01-01','in force',1000,0.05,10000,1000,0.1,100,'annual',100000,50000,1,'END-001','2023-06-01','policy renewal','fire',0.2,5000,0.1,2000,0.05,1000,'km',5000,10000,1),(2,'POL-002','2023-02-01','2024-02-01','cancelled',500,0.03,7500,750,0.08,75,'monthly',80000,40000,0,'END-002','2023-07-01','policy extension','theft',0.15,3000,0.05,1500,0.03,750,'mile',3000,6000,2);
/*!40000 ALTER TABLE `motorcoverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `salutation` enum('Mr.','Mrs.','Ms.') DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addressId` bigint DEFAULT NULL,
  `idType` enum('passport','national id','driving licence','national insurance number','other') DEFAULT NULL,
  `idNumber` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `policyholderPreferredLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premiumbordereau`
--

DROP TABLE IF EXISTS `premiumbordereau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premiumbordereau` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatyReference` varchar(255) DEFAULT NULL,
  `policyholder` varchar(255) DEFAULT NULL,
  `policyNumber` varchar(255) DEFAULT NULL,
  `inceptionDate` date DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `indemnityLimitPolicy` int DEFAULT NULL,
  `grossWrittenPremium` int DEFAULT NULL,
  `netPremium` int DEFAULT NULL,
  `transactionType` enum('new policy','policy renewal','mid term adjustment','claim payment','brokerage payment','profit share payment','other') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policyNumber` (`policyNumber`),
  CONSTRAINT `premiumbordereau_ibfk_1` FOREIGN KEY (`policyNumber`) REFERENCES `motorcoverage` (`policyNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiumbordereau`
--

LOCK TABLES `premiumbordereau` WRITE;
/*!40000 ALTER TABLE `premiumbordereau` DISABLE KEYS */;
INSERT INTO `premiumbordereau` VALUES (5,'TR12345','John Doe','POL-001','2024-04-01','2025-04-01',1000000,5000,4500,'new policy'),(6,'TR67890','Jane Smith','POL-002','2024-01-15','2024-07-15',500000,3000,2800,'policy renewal');
/*!40000 ALTER TABLE `premiumbordereau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lineOfBusiness` varchar(255) DEFAULT NULL,
  `productModel` enum('conventional-annual premium','pay as you drive','pay how you drive','subscription (e.g. monthly fee)','goverment/market tarrif','other') DEFAULT NULL,
  `contractType` enum('not automated','smart contract','parametric','other') DEFAULT NULL,
  `gracePeriod` date DEFAULT NULL,
  `currency` enum('fiat (ISO-4217)','cryptocurrency and tokens (Non-ISO 4217)') DEFAULT NULL,
  `policyWording` varchar(255) DEFAULT NULL,
  `policyFee` float DEFAULT NULL,
  `premiumPaymentFrequency` enum('annual','bi-annual','quarterly','monthly','bi-monthly','weekly','daily','usage based or on demand','subscription (not an annual contract)','other') DEFAULT NULL,
  `profitShare` varchar(255) DEFAULT NULL,
  `intermediary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Property Fire Insurance','conventional-annual premium','not automated','2024-04-15','fiat (ISO-4217)','Standard Policy Wording',100,'annual','50%','XYZ Insurance Brokers'),(2,'Motor Comprehensive Insurance','pay as you drive','smart contract','2024-04-20','fiat (ISO-4217)','Comprehensive Coverage',150,'monthly','30%','ABC Insurance Agents');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `claimId` bigint DEFAULT NULL,
  `receiptType` enum('new policy','policy renewal','mid term adjustment','claim payment','brokerage payment','profit share payment','other') DEFAULT NULL,
  `receiptDate` date DEFAULT NULL,
  `paymentAmount` int DEFAULT NULL,
  `receiptCalculation` enum('pro rata','flat') DEFAULT NULL,
  `premiumPaymentMethod` enum('cash','credit card','cheque','electronic transfer','crypto currency or tokens') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `claimId` (`claimId`),
  CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`claimId`) REFERENCES `claim` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,NULL,'new policy','2024-04-10',1500,'pro rata','credit card'),(2,NULL,'policy renewal','2024-05-05',1200,'flat','cheque');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `HP` float DEFAULT NULL,
  `KW` float DEFAULT NULL,
  `torque` float DEFAULT NULL,
  `evHP` float DEFAULT NULL,
  `evKW` float DEFAULT NULL,
  `evTorque` float DEFAULT NULL,
  `acceleration` float DEFAULT NULL,
  `vehicleTopSpeed` float DEFAULT NULL,
  `engineCapacity` float DEFAULT NULL,
  `modelYear` float DEFAULT NULL,
  `hasTractionEnabled` tinyint(1) DEFAULT NULL,
  `hasImmobilizer` tinyint(1) DEFAULT NULL,
  `hasTheftDetection` tinyint(1) DEFAULT NULL,
  `currentMileageDynamic` float DEFAULT NULL,
  `yearlyMilageDynamic` float DEFAULT NULL,
  `highwayYearlyMilageDynamic` float DEFAULT NULL,
  `dailyMilageDynamic` float DEFAULT NULL,
  `serviceHistory` float DEFAULT NULL,
  `serviceDue` float DEFAULT NULL,
  `timeToService` float DEFAULT NULL,
  `recallHistory` float DEFAULT NULL,
  `tractionControlEngaged` tinyint(1) DEFAULT NULL,
  `accelerationLongitudinal` float DEFAULT NULL,
  `accelerationLateral` float DEFAULT NULL,
  `accelerationVertical` float DEFAULT NULL,
  `brakingFrequency` float DEFAULT NULL,
  `brakePedalForce` float DEFAULT NULL,
  `brakePedalSpeed` float DEFAULT NULL,
  `performanceMode` float DEFAULT NULL,
  `emergencyBraking` float DEFAULT NULL,
  `engnitionOn` tinyint(1) DEFAULT NULL,
  `engnitionOff` tinyint(1) DEFAULT NULL,
  `ignitionOnTime` float DEFAULT NULL,
  `ignitionOffTime` float DEFAULT NULL,
  `logitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `altitude` float DEFAULT NULL,
  `heading` float DEFAULT NULL,
  `isMoving` tinyint(1) DEFAULT NULL,
  `hornIsActive` tinyint(1) DEFAULT NULL,
  `drivingSpeed` float DEFAULT NULL,
  `wheelSpin` float DEFAULT NULL,
  `decelrationRate` float DEFAULT NULL,
  `steeringSpeedTurn` float DEFAULT NULL,
  `laneDepartureWarnning` float DEFAULT NULL,
  `adasAbsIsActive` tinyint(1) DEFAULT NULL,
  `obstacleDetectionIsActive` tinyint(1) DEFAULT NULL,
  `driverIntervention` tinyint(1) DEFAULT NULL,
  `obstacleDetectionWarning` text,
  `speedSet` float DEFAULT NULL,
  `yaw` float DEFAULT NULL,
  `pitch` float DEFAULT NULL,
  `roll` float DEFAULT NULL,
  `gForce` float DEFAULT NULL,
  `trailerIncluded` tinyint(1) DEFAULT NULL,
  `row1Pos1Isbelted` tinyint(1) DEFAULT NULL,
  `row1Pos2Isbelted` tinyint(1) DEFAULT NULL,
  `row2Pos1Isbelted` tinyint(1) DEFAULT NULL,
  `row2Pos2Isbelted` tinyint(1) DEFAULT NULL,
  `cabinTemp` float DEFAULT NULL,
  `cabinHumidity` float DEFAULT NULL,
  `tireConditionRow1Left` text,
  `tireConditionRow1Right` text,
  `tireConditionRow2Left` text,
  `tireConditionRow2Right` text,
  `tirePressureRow1Left` text,
  `tirePressureRow1Right` text,
  `tirePressureRow2Left` text,
  `tirePressureRow2Right` text,
  `brakePadWearRow1Left` text,
  `brakePadWearRow1Right` text,
  `brakePadWearRow2Left` text,
  `brakePadWearRow2Right` text,
  `brakesWearRow1Right` text,
  `brakesWearRow1Left` text,
  `brakeWearRow2Left` text,
  `brakeWearRow2Right` text,
  `clutchWear` float DEFAULT NULL,
  `dashboardWarnning` text,
  `hasAirbagDeployed` tinyint(1) DEFAULT NULL,
  `hasBrakesError` tinyint(1) DEFAULT NULL,
  `engineWarning` text,
  `KnownVehicleDamage` text,
  `damagedParts` text,
  `damagedPartsCost` float DEFAULT NULL,
  `upcomingService` text,
  `occupiedSeats` int DEFAULT NULL,
  `childSeatOccupiesSeat` int DEFAULT NULL,
  `consentGranted` tinyint(1) DEFAULT NULL,
  `plateNumber` varchar(255) DEFAULT NULL,
  `registrationDate` date DEFAULT NULL,
  `countryOfRegistration` varchar(255) DEFAULT NULL,
  `chassisNumber` varchar(255) DEFAULT NULL,
  `vin` varchar(255) DEFAULT NULL,
  `engineNumber` varchar(255) DEFAULT NULL,
  `vehicleWeight` float DEFAULT NULL,
  `agencyRepair` tinyint(1) DEFAULT NULL,
  `bodyType` enum('motor car','motorcycle','motorized tricycle','electric scooter','quadcycle','trailer head','van','bus','tracktor','pod','motor home','construction equipment') DEFAULT NULL,
  `fuelType` enum('petrol','diesel','electric','petrol/electric hybrid','gas','hydrogen') DEFAULT NULL,
  `aiClassification` enum('level 0 autonomous vehicle (SAE standard)','level 1 autonomous vehicle (SAE standard)','level 2 autonomous vehicle (SAE standard)','level 3 autonomous vehicle (SAE standard)','level 4 autonomous vehicle (SAE standard)','level 5 autonomous vehicle (SAE standard)') DEFAULT NULL,
  `vehicleUse` enum('businees','business and leisure','commercial','vehicle sharing','vehicle subscription') DEFAULT NULL,
  `vehicleGarage` tinyint(1) DEFAULT NULL,
  `vehicleBrand` varchar(255) DEFAULT NULL,
  `vehicleModel` varchar(255) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `colour` varchar(255) DEFAULT NULL,
  `sumInsured` float DEFAULT NULL,
  `accessories` text,
  `accessoryValue` text,
  `co2Emissions` tinyint(1) DEFAULT NULL,
  `automaticTransmission` tinyint(1) DEFAULT NULL,
  `lefthandDrive` tinyint(1) DEFAULT NULL,
  `doors` int DEFAULT NULL,
  `securityDevice` tinyint(1) DEFAULT NULL,
  `modification` tinyint(1) DEFAULT NULL,
  `digitalKeyUsed` tinyint(1) DEFAULT NULL,
  `blueBadgeAdapted` tinyint(1) DEFAULT NULL,
  `distanceUnit` varchar(255) DEFAULT NULL,
  `pleasureDistance` float DEFAULT NULL,
  `businessDistance` float DEFAULT NULL,
  `currentMileage` int DEFAULT NULL,
  `yearlyMilage` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,200,147.1,400,250,184.4,420,5.5,300,2.5,2023,1,1,1,10000,20000,15000,100,90,20,30,45,1,5.5,4.5,2,200,250,300,1.5,2,1,0,12.5,14,45.2,90,180,170.2,1,1,12.5,9.8,8.6,6.7,4.2,1,0,1,'high',3.9,2.5,1.8,7.3,5.6,1,1,1,1,1,4.9,3.2,'a','b','c','d','e','f','g,','h','i','j','k','l','m','n','o','p',15,'good',1,0,'No issues','None','None',0,'2023-01-15',5,10,1,'ABC123','2023-01-15','USA','CH123456','12345678901234567','12345678',1500,0,'motor car','petrol','level 2 autonomous vehicle (SAE standard)','businees',1,'Toyota','Corolla',5,'Black',25000,'GPS, Stereo system','1000',0,1,0,4,1,0,0,0,'km',10000,15000,30000,2000);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 22:21:46
