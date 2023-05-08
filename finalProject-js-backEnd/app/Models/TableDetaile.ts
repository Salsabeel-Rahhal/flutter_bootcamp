import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column } from '@ioc:Adonis/Lucid/Orm'
import Shop from './Shop'
import User from './User'
import TableStatus from './TableStatus'
import Reservation from './Reservation'

export default class TableDetile extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'max_capacity' })
  public maxCapacity: number

  @column({ serializeAs: 'sitting_num' })
  public sittingNum: number

  @column({ serializeAs: 'shop_id' })
  public shopId: number

  @column({ serializeAs: 'userId' })
  public userId: number

  @column({ serializeAs: 'table_status_id' })
  public statusId: number

  @column({ serializeAs: 'reservation_id' })
  public reservationId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => Shop, {
    foreignKey: 'shopId',
  })
  public ShopId: BelongsTo<typeof Shop>

  @belongsTo(() => User, {
    foreignKey: 'userId',
  })
  public UserId: BelongsTo<typeof User>

  @belongsTo(() => TableStatus, {
    foreignKey: 'statusId',
  })
  public StatusId: BelongsTo<typeof TableStatus>

  @belongsTo(() => Reservation, {
    foreignKey: 'reservationId',
  })
  public ReservationId: BelongsTo<typeof Reservation>
}
