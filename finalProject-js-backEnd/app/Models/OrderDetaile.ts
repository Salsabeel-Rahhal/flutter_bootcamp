import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column } from '@ioc:Adonis/Lucid/Orm'
import User from './User'
import TableDetile from './TableDetile'
import Reservation from './Reservation'

export default class OrderDetaile extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'total_cost' })
  public totalCost: number

  @column({ serializeAs: 'order_dishes' })
  public orderDishes: string

  @column({ serializeAs: 'user_id' })
  public userId: number

  @column({ serializeAs: 'table_id' })
  public tableId: number

  @column({ serializeAs: 'reservation_id' })
  public reservationId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => User, {
    foreignKey: 'userId',
  })
  public UserId: BelongsTo<typeof User>

  @belongsTo(() => TableDetile, {
    foreignKey: 'tableId',
  })
  public TableId: BelongsTo<typeof TableDetile>

  @belongsTo(() => Reservation, {
    foreignKey: 'reservationId',
  })
  public ReservationId: BelongsTo<typeof Reservation>
}
