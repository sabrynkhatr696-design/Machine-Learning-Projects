# Boston Housing Price Prediction using Regression

# الهدف: التنبؤ بقيمة المنازل MEDV باستخدام بيانات Boston Housing

# 1. تحميل البيانات
df <- read.csv("boston.csv")

# 2. نظرة أولية على البيانات
str(df)
summary(df)

# التحقق من القيم المفقودة
colSums(is.na(df))

# Boxplot لأسعار المنازل
boxplot(df$MEDV,
        main="Boxplot of Median House Value",
        col="lightgreen")

# حساب حدود IQR لإزالة القيم المتطرفة
Q1 <- quantile(df$MEDV, 0.25)
Q3 <- quantile(df$MEDV, 0.75)
IQR <- Q3 - Q1

lower_bound <- Q1 - 1.5 * IQR
upper_bound <- Q3 + 1.5 * IQR

# حذف القيم المتطرفة
df_no_outliers <- df[df$MEDV >= lower_bound & df$MEDV <= upper_bound, ]

# Boxplot بعد حذف القيم المتطرفة
boxplot(df_no_outliers$MEDV,
        main="MEDV After Removing Outliers",
        col="lightgreen")

# Histogram
hist(df$MEDV,
     main="Histogram of Median House Value",
     col="lightgreen",
     xlab="Median Value of Homes")

# تحويل CHAS إلى Factor
df$CHAS <- as.factor(df$CHAS)

# مصفوفة الارتباط
numeric_cols <- c("CRIM","ZN","INDUS","NOX","RM","AGE",
                  "DIS","RAD","TAX","PTRATIO","B","LSTAT","MEDV")

cor_matrix <- cor(df[, numeric_cols], use="complete.obs")
cor_matrix

# اختبار الارتباط
cor.test(df$MEDV, df$RM)
cor.test(df$MEDV, df$LSTAT)

# بناء نموذج الانحدار
model <- lm(MEDV ~ ., data=df)

summary(model)

# تحميل المكتبات
library(car)
library(MASS)

# اختيار أفضل المتغيرات
step_model <- stepAIC(model, direction="both")

# النموذج النهائي
final.model <- lm(MEDV ~ CRIM + ZN + CHAS + NOX + RM + DIS + RAD + TAX + PTRATIO + B + LSTAT, data=df)

summary(final.model)

# اختبار VIF
vif(final.model)

# Diagnostic plots
par(mfrow=c(2,2))
plot(final.model)

# اختبار التوزيع الطبيعي للبقايا
qqnorm(residuals(final.model))
qqline(residuals(final.model), col="red")

# Histogram للبقايا
hist(residuals(final.model), breaks=20, main="Histogram of Residuals")

# اختبار Breusch-Pagan
library(lmtest)
bptest(final.model)

# Robust standard errors
library(sandwich)
coeftest(final.model, vcov = vcovHC(final.model, type="HC1"))