ALTER PROCEDURE sp_GetProductBestSeller
AS
BEGIN
    -- Tạo truy vấn lấy danh sách sản phẩm bán chạy nhất
    SELECT TOP 7 
        p.Id,
        p.Title AS ProductName,
        p.Price,
        p.Quantity,
        p.ViewCount,  -- Số lượt xem sản phẩm (hoặc có thể là bán hàng nếu bạn có cột liên quan đến số lượng bán)
        p.IsSale,     -- Kiểm tra xem sản phẩm có giảm giá không
        p.IsHot,      -- Kiểm tra xem sản phẩm có "hot" không
        pi.Image AS ProductImage,  -- Lấy ảnh mặc định của sản phẩm từ bảng tb_ProductImage
        p.Description,
        SUM(od.Quantity) AS TotalQuantity  -- Tổng số lượng bán của sản phẩm
    FROM 
        tb_Product p
    LEFT JOIN 
        tb_ProductImage pi ON p.Id = pi.ProductId AND pi.IsDefault = 1  -- Lấy ảnh mặc định (IsDefault = 1)
    LEFT JOIN 
        tb_OrderDetail od ON p.Id = od.ProductId  -- Kết hợp với bảng chi tiết đơn hàng để tính tổng số lượng bán
    GROUP BY
        p.Id, p.Title, p.Price, p.Quantity, p.ViewCount, p.IsSale, p.IsHot, pi.Image, p.Description
    ORDER BY 
        p.ViewCount DESC;  -- Hoặc có thể thay thế bằng số lượng bán hàng nếu có cột liên quan
END;

ALTER PROCEDURE sp_GetCustomerOrderStatistics
    @Searchtext NVARCHAR(100) = NULL
AS
BEGIN
    SELECT TOP 10
        u.UserName AS CustomerName,
        u.Email,
        u.Phone AS Phone,  -- Đảm bảo lấy dữ liệu từ cột Phone thay vì PhoneNumber
        COUNT(o.Id) AS OrderCount
    FROM 
        dbo.AspNetUsers u
    LEFT JOIN 
        dbo.tb_Order o ON u.Id = o.CustomerId
    WHERE 
        (@Searchtext IS NULL OR u.UserName LIKE '%' + @Searchtext + '%')
    GROUP BY 
        u.UserName, u.Email, u.Phone  -- Sử dụng u.Phone ở đây thay vì u.PhoneNumber
    ORDER BY 
        OrderCount DESC;
END;

