CREATE PROC Sp_Login4
@Admin_id NVARCHAR(100),
@Password NVARCHAR(100),
@Isvalid BIT OUT
AS
BEGIN
SET @Isvalid = (SELECT COUNT(1) FROM tbl_login1 WHERE Admin_id = @Admin_id AND Ad_Password=@Password)
end