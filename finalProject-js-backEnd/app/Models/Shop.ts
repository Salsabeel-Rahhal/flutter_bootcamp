import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column, HasMany, hasMany } from '@ioc:Adonis/Lucid/Orm'
import User from './User'
import ShopMenu from './ShopMenu'
import Reservation from './Reservation'
import Admin from './Admin'
import OrderDetaile from './OrderDetaile'
import Review from './Review'

export default class Shop extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'shop_name' })
  public shopName: string

  @column({ serializeAs: 'shop_location' })
  public shopLocation: string

  @column({ serializeAs: 'review_id' })
  public reviewId: number

  @column({ serializeAs: 'contact_number' })
  public contactNumber: string

  @column({ serializeAs: 'service_type' })
  public serviceType: string

  @column({ serializeAs: 'food_type' })
  public foodType: string

  @column({ serializeAs: 'work_time' })
  public workTime: DateTime

  @column({ serializeAs: 'price_range' })
  public priceRange: number

  @column({ serializeAs: 'shop_menu_id' })
  public menuId: number

  @column({ serializeAs: 'reservation_id' })
  public reservationId: number

  @column({ serializeAs: 'admin_id' })
  public adminId: number

  @column({ serializeAs: 'order_id' })
  public orderId: number

  @column({ serializeAs: 'user_id' })
  public userId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => ShopMenu, {
    foreignKey: 'menuId',
  })
  public MenuId: BelongsTo<typeof ShopMenu>

  @hasMany(() => Reservation, {
    foreignKey: 'reservationId',
  })
  public ReservationId: HasMany<typeof Reservation>

  @hasMany(() => Admin, {
    foreignKey: 'adminId',
  })
  public AdminId: HasMany<typeof Admin>

  @hasMany(() => OrderDetaile, {
    foreignKey: 'orderId',
  })
  public OrderId: HasMany<typeof OrderDetaile>

  @hasMany(() => User, {
    foreignKey: 'userId',
  })
  public UserId: HasMany<typeof User>

  @hasMany(() => Review, {
    foreignKey: 'reviewId',
  })
  public ReviewId: HasMany<typeof Review>
}
