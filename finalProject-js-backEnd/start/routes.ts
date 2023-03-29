import Route from '@ioc:Adonis/Core/Route'
import AdminsController from 'App/Controllers/Http/AdminsController'
import MenuItemCategoriesController from 'App/Controllers/Http/MenuItemCategoriesController'
import OrderDetailesController from 'App/Controllers/Http/OrderDetailesController'
import ReservationsController from 'App/Controllers/Http/ReservationsController'
import ReservationNumbersController from 'App/Controllers/Http/ReservationNumbersController'
import ReviewsController from 'App/Controllers/Http/ReviewsController'
import ShopMenusController from 'App/Controllers/Http/ShopMenusController'
import ShopsController from 'App/Controllers/Http/ShopsController'
import TableDetailesController from 'App/Controllers/Http/TableDetailesController'
import TableStatusesController from 'App/Controllers/Http/TableStatusesController'
import UsersController from 'App/Controllers/Http/UsersController'
Route.group(() => {
  Route.get('/', 'AdminsController.getAdmins')
  Route.get('/:id', 'AdminsController.getId')
  Route.post('/', 'AdminsController.create')
  Route.put('/:id', 'AdminsController.update')
  Route.delete('/:id', 'AdminsController.destroy')
}).prefix('/admins')

Route.group(() => {
  Route.get('/', 'MenuItemCategoriesController.getMenuCategory')
  Route.get('/:id', 'MenuItemCategoriesController.getId')
  Route.post('/', 'MenuItemCategoriesController.create')
  Route.put('/:id', 'MenuItemCategoriesController.update')
  Route.delete('/:id', 'MenuItemCategoriesController.destroy')
}).prefix('/Categories')

Route.group(() => {
  Route.get('/', 'OrderDetailesController.getOrderDetailes')
  Route.get('/:id', 'OrderDetailesController.getId')
  Route.post('/', 'OrderDetailesController.create')
  Route.put('/:id', 'OrderDetailesController.update')
  Route.delete('/:id', 'OrderDetailesController.destroy')
}).prefix('/orders')

Route.group(() => {
  Route.get('/', 'ReservationsController.getReservationsController')
  Route.get('/:id', 'ReservationsController.getId')
  Route.post('/', 'ReservationsController.create')
  Route.put('/:id', 'ReservationsController.update')
  Route.delete('/:id', 'ReservationsController.destroy')
}).prefix('/reservations')

Route.group(() => {
  Route.get('/', 'ReservationNumbersController.getReservationNumbers')
  Route.get('/:id', 'ReservationNumbersController.getId')
  Route.post('/', 'ReservationNumbersController.create')
  Route.put('/:id', 'ReservationNumbersController.update')
  Route.delete('/:id', 'ReservationNumbersController.destroy')
}).prefix('/reservationNumbers')

Route.group(() => {
  Route.get('/', 'ReviewsController.getReviews')
  Route.get('/:id', 'ReviewsController.getId')
  Route.post('/', 'ReviewsController.create')
  Route.put('/:id', 'ReviewsController.update')
  Route.delete('/:id', 'ReviewsController.destroy')
}).prefix('/reviews')

Route.group(() => {
  Route.get('/', 'ShopsController.getShops')
  Route.get('/:id', 'ShopsController.getId')
  Route.post('/', 'ShopsController.create')
  Route.put('/:id', 'ShopsController.update')
  Route.delete('/:id', 'ShopsController.destroy')
}).prefix('/shop')

Route.group(() => {
  Route.get('/', 'ShopMenusController.getShopMenus')
  Route.get('/:id', 'ShopMenusController.getId')
  Route.post('/', 'ShopMenusController.create')
  Route.put('/:id', 'ShopMenusController.update')
  Route.delete('/:id', 'ShopMenusController.destroy')
}).prefix('/shopMenu')

Route.group(() => {
  Route.get('/', 'TableDetailesController.getTableDetailes')
  Route.get('/:id', 'TableDetailesController.getId')
  Route.post('/', 'TableDetailesController.create')
  Route.put('/:id', 'TableDetailesController.update')
  Route.delete('/:id', 'TableDetailesController.destroy')
}).prefix('/tableDetailes')

Route.group(() => {
  Route.get('/', 'TableStatusesController.getTableStatuses')
  Route.get('/:id', 'TableStatusesController.getId')
  Route.post('/', 'TableStatusesController.create')
  Route.put('/:id', 'TableStatusesController.update')
  Route.delete('/:id', 'TableStatusesController.destroy')
}).prefix('/tableStatus')

Route.group(() => {
  Route.get('/', 'UsersController.getUsers')
  Route.get('/:id', 'UsersController.getId')
  Route.post('/', 'UsersController.create')
  Route.put('/:id', 'UsersController.update')
  Route.delete('/:id', 'UsersController.destroy')
}).prefix('/users')
