employees.df <-read.csv(paste("WA_Fn-UseC_-HR-Employee-Attrition.csv",sep=""))
View(employees.df)
attach(employees.df)
nrow(employees.df)
ncol(employees.df)

x <-employees.df[,c("ï..Age","DailyRate","DistanceFromHome","Education","EmployeeCount","EnvironmentSatisfaction","HourlyRate","JobInvolvement","JobLevel","JobSatisfaction","MonthlyIncome","MonthlyRate","NumCompaniesWorked","PercentSalaryHike","PerformanceRating","RelationshipSatisfaction","StandardHours","StockOptionLevel","TotalWorkingYears","TrainingTimesLastYear","WorkLifeBalance","YearsAtCompany","YearsInCurrentRole","YearsSinceLastPromotion","YearsWithCurrManager")]
i <- 1
while(i<=2){
  j <- 1
  while(j<=2){
    if(i!=j){
      xtabs(~x[[i]]+x[[j]],data = employees.df)
    }
    j <-j+1
  }
  i <- i+1
}

colnames(employees.df)