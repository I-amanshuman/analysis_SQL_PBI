-- Cleansed DIM_Customers Table -- 
SELECT [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[firstname] as [First_Name]
      --,[MiddleName]
      ,c.[LastName] as [Last_Name]
	  ,c.[firstname] + ' ' + c.[lastname] as [Full_Name] --Combined firstname and last name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.[Gender] when 'M' then 'Male' when 'F' then 'Female' END as Gender
      ,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] as Date_First_Purchase
      --,[CommuteDistance]
	  ,g.city as Customer_City -- Left join with geography table to bring in the city per customer key
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  left join dbo.DimGeography as g on c.GeographyKey = g.GeographyKey
  order by CustomerKey asc