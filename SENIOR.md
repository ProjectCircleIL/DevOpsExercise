### **Home Assignment for Senior DevOps Engineer**

#### **Objective**
Demonstrate expertise in Infrastructure as Code (IaC), environment setup, testing, and observability by designing, implementing, and documenting a deployment solution for a mock application.

---

### **Part 1: Infrastructure as Code (IaC)**
1. **Task:**  
   Using **Terraform**, provision the following resources in **AWS**:  
   - A Lambda function (Node.js runtime) integrated with: (mock implementation is fine)
     - API Gateway (as a public REST endpoint).
     - An SQS queue for message processing.
   - A MongoDB Atlas cluster (free tier or sandbox).
   - A CloudFront distribution to serve static assets from an S3 bucket.
   - A Cognito user pool with one test user.
   
2. **Deliverables:**  
   - Terraform code in a GitHub repository, structured with best practices (modules, variables, outputs).
   - A `README.md` explaining how to:
     - Deploy the infrastructure.
     - Validate the setup.

---

### **Part 2: Deployment Pipeline**
1. **Task:**  
   - Create a CI/CD pipeline using **GitHub Actions** to:
     - Lint Terraform code using `terraform fmt` and `terraform validate`.
     - Terraform security scan to ensure terraform code is secure.
     - Deploy the infrastructure (to a sandbox account) only after the tests pass.

2. **Deliverables:**  
   - github actions workflow file
   - Instructions for triggering the pipeline.

---

### **Part 3: Bonus Task (Optional)**
1. **Task:**  
   - Set up an alerting mechanism using Cloudwatch or another tool for the following:
     - Lambda function errors exceed a certain threshold.
     - SQS message queue backlog exceeds a specified limit.
   - Describe how you would integrate this with your current observability stack.

2. **Deliverables:**  
   - Terraform code for setting up the alerts.

---

### **Evaluation Criteria**
- **Code Quality:** Clean, modular, and follows best practices.
- **Documentation:** Clear and easy-to-follow instructions.
- **Completeness:** All deliverables are provided and functional.
- **Problem-Solving:** Creativity and effectiveness in meeting the requirements.


