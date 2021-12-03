SELECT menu_category.NAME AS catename, menu.NAME AS drinkname, menu.price, order_detail.quantity
FROM order_detail
INNER JOIN menu ON order_detail.menuId = menu.menuId
INNER JOIN menu_category ON menu_category.menuCategoryId = menu.menuCategoryId
WHERE order_detail.orderId=1