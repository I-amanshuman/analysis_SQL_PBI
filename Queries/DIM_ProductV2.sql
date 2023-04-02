--Cleansing and joining the product with category and subcategory--
SELECT [ProductKey]
      ,[ProductAlternateKey] AS [Product_Item_Code]
      ,p.[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS [Product_Name]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as [Product_Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as [Product_Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] as [Product_Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] as [Product_Model_Name]
      --,[LargePhoto]
      --,[EnglishDescription] as [Product_Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
	  ,pc.EnglishProductCategoryName as [Product_Category]
	  ,ps.EnglishProductSubcategoryName as [Sub_Category]
      ,isnull(Status, 'Outdated') AS  [Product_Status]
FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
left join [dbo].DimProductSubcategory AS ps ON ps.ProductSubcategoryKey=p.ProductSubcategoryKey
left join [dbo].DimProductCategory as pc on ps.ProductCategoryKey=pc.ProductCategoryKey
order by 
p.ProductKey asc



