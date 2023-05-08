import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column, HasMany, hasMany } from '@ioc:Adonis/Lucid/Orm'
import Review from './Review'
import OrderDetaile from './OrderDetaile'
import TableDetile from './TableDetaile'
import Reservation from './Reservation'
import Shop from './Shop'

export default class User extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'first_name' })
  public firstName: string

  @column({ serializeAs: 'last_name' })
  public lastName: string

  @column({ serializeAs: 'email' })
  public email: string

  @column({ serializeAs: 'phone_number' })
  public phoneNumber: string

  @column({ serializeAs: 'address' })
  public address: string

  @column({ serializeAs: 'city' })
  public city: string

  @column({ serializeAs: 'password' })
  public password: string

  @column({ serializeAs: 'points' })
  public points: number

  @column({ serializeAs: 'gender' })
  public gender: boolean

  @column({ serializeAs: 'review_id' })
  public reviewId: number

  @column({ serializeAs: 'order_id' })
  public orderId: number

  @column({ serializeAs: 'table_id' })
  public tableId: number

  @column({ serializeAs: 'reservation_id' })
  public reservationId: number

  @column({ serializeAs: 'shop_id' })
  public shopId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @hasMany(() => Review, {
    foreignKey: 'reviewId',
  })
  public ReviewId: HasMany<typeof Review>

  @belongsTo(() => OrderDetaile, {
    foreignKey: 'orderId',
  })
  public OrderId: BelongsTo<typeof OrderDetaile>

  @belongsTo(() => TableDetile, {
    foreignKey: 'tableId',
  })
  public TableId: BelongsTo<typeof TableDetile>

  @belongsTo(() => Reservation, {
    foreignKey: 'reservationId',
  })
  public ReservationId: BelongsTo<typeof Reservation>

  @hasMany(() => Shop, {
    foreignKey: 'shopId',
  })
  public ShopId: HasMany<typeof Shop>
}
