import Route from '@ioc:Adonis/Core/Route'

Route.group(() => {
  Route.get('/', 'UsersController.getUser')
  Route.post('/', 'UsersController.create')
  Route.post('/login', 'UsersController.login')
  Route.post('/logout', 'UsersController.logout')
  Route.delete('/:id', 'UsersController.destroy')
}).prefix('/users')

Route.group(() => {
  Route.get('/:id', 'ProductsController.getById')
  Route.get('/', 'ProductsController.getAll')
  Route.post('/', 'ProductsController.create')
  Route.put('/', 'ProductsController.update')
  Route.delete('/:id', 'ProductsController.destroy')
}).prefix('/products')
Route.group(() => {
  Route.get('/:id', 'OrdersController.getById')
  Route.get('/', 'OrdersController.getAll')
  Route.post('/', 'OrdersController.create')
  Route.put('/', 'OrdersController.update')
  Route.delete('/:id', 'OrdersController.destory')
}).prefix('/orders')

Route.group(() => {
  Route.get('/:id', 'OrderProductsController.getById')
  Route.get('/', 'OrderProductsController.getAll')
  Route.post('/', 'OrderProductsController.create')
  Route.put('/', 'OrderProductsController.update')
  Route.delete('/:id', 'OrderProductsController.destory')
}).prefix('/order_products')
