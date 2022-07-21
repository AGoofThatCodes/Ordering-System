CREATE PROCEDURE [dbo].[sp_InsertOrders]
	@item nvarchar(50),
	@price decimal = 0,
	@senderemail nvarchar(50),
	@sendername nvarchar(50),
	@recipientname nvarchar(50),
	@recipientemail nvarchar(50),
	@voucher integer = 0
AS
DECLARE @id uniqueidentifier = NEWID();
	INSERT INTO
	[dbo].[Orders] ([Item], [Price], [SenderEmail], [SenderName], [RecipientName],
	[RecipientEmail], [Voucher], [Id])
	VALUES
	(@item, @price, @senderemail, @sendername, @recipientname, @recipientemail, @voucher, @id)
RETURN 0
