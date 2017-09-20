USE ONLINE_SHOP
GO
if OBJECT_ID('USP1','P') is not null
DROP PROC USP1

Create PROC USP1
	@a float =	0,@b float =0,@tong float out
AS
	--return(@a	+	@b)
	set @tong=	@a+	@b
GO

DECLARE @x float =1.5 , @y float =13.4 ,@tong float =0
exec   USP1 @x,@y ,@tong out
print cast(@x AS varchar)  +		'  +  '		+
		cast(@y AS varchar)   +	 ' =  '	  +
		cast(@tong AS varchar)

