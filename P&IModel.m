clear all
% simulation: Example-1
%The number of people : Upper class = NumU , Middle class = NumM,
%Lower class = NumL
NumU = 2
NumM = 30
NumL = 500
%On average the amount of income and wealth of each person :
%Upper class = IncomeWealthU , Middle class = IncomeWealthM,
%Lower class =IncomeWealthL
%IncomeWealthU > IncomeWealthM > IncomeWealthL
IncomeWealthU= 10000
IncomeWealthM= 500
IncomeWealthL= 100
TotalWealthIncome= IncomeWealthU*NumU + IncomeWealthM*NumM +
IncomeWealthL*NumL
%Number of the years
N= 10
%After 10 years the income and wealth of the:
IncomeWealthUNI=IncomeWealthU*NumU*N
IncomeWealthMNI=IncomeWealthM*NumM*N
IncomeWealthLNI=IncomeWealthL*NumL*N
%The percentage of each person’s expenditure : Upper class =
%PercentExpU , Middle class = PercentExpM , Lower class = PercentExpL
%PercentExpU > PercentExpM > PercenrExpL
PercentExpU= 5/100
PercentExpM= 60/100
PercentExpL= 95/100
%Total expenditure:
TotalExp = NumU*IncomeWealthU*PercentExpU + NumM*IncomeWealthM*PercentExpM
+ NumL*IncomeWealthL*PercentExpL
%After N years the total expenditure of the all of the people will be
N= 10
TotalExpN= TotalExp*N
%After N years the fraction of the total expenditure that The people of
7
%the upper class, the middle class and the lower class will get back:
%Upper class = GetBU , Middle class = GetBM, Lower class = GetBL
%GetBU>GetBM>GetBL
%GetBU+GetBM+GetBL=1
GetBU= 60/100
GetBM= 30/100
GetBL= 10/100
if GetBU+GetBM+GetBL >= 1
disp ’error: The sum of GetBU, GetBM and GetBL should be 1’
end
%After N years the Income and Wealth of the every one in the upper, middle
%and the lower class
NU= IncomeWealthU*N - PercentExpU*IncomeWealthU*N+ GetBU*TotalExpN/NumU
NM= IncomeWealthM*N - PercentExpM*IncomeWealthM*N+ GetBM*TotalExpN/NumM
NL= IncomeWealthL*N - PercentExpL*IncomeWealthL*N+ GetBL*TotalExpN/NumL
SavingsUpperClassN = (NumU*IncomeWealthU*N - NumU*IncomeWealthU*PercentExpU*N)
SavingMiddleClassN = (NumM*IncomeWealthM*N - NumM*IncomeWealthM*PercentExpM*N)
SavingLowerClassN = (NumL*IncomeWealthL*N - NumL*IncomeWealthL*PercentExpL*N)
TotalSavingsN = SavingsUpperClassN + SavingMiddleClassN + SavingLow-
erClassN
TotalIncomeWealthN= IncomeWealthU*N*NumU + GetBU*TotalExpN -
NumU*PercentExpU*IncomeWealthU*N +IncomeWealthM*N*NumM + GetBM*TotalExpN
- NumM*PercentExpM*IncomeWealthM*N + IncomeWealthL*N*NumL +
GetBL*TotalExpN - NumL*PercentExpL*IncomeWealthL*N
TotalSavingsAndExpenditureN=TotalSavingsN +(PercentExpU*IncomeWealthU*N*NumU+
PercentExpM*IncomeWealthM*N*NumM +PercentExpL*IncomeWealthL*N*NumL)
subplot(3,0.5,1)
m =[IncomeWealthU,IncomeWealthM,IncomeWealthL];
bar(1:3,m,'m')
legend('Graph-1')
xlabel('1: Upper Class, 2: Middle Class, 3: Lower Class')
ylabel('Income and Wealth')
title('Comparison of the Income and Wealth Distribution at Present Period')
grid on
subplot(3,0.5,2)
k =[IncomeWealthUNI,IncomeWealthMNI,IncomeWealthLNI];
bar(1:3,k,'b')
legend('Graph-2')
xlabel('1: Upper Class, 2: Middle Class, 3: Lower Class')
ylabel('Income and Wealth')
title('Comparison of the Income and Wealth Distribution after 10 years with-
out Inequality')
grid on
subplot(3,0.5,3)
y =[NU,NM,NL];
bar(1:3,y,'r')
legend('Graph-3')
xlabel('1: Upper Class, 2: Middle Class, 3: Lower Class')
ylabel('Income and Wealth')
title('Comparison of the Income and Wealth Distribution after 10 Years with
Inequality')
grid on
