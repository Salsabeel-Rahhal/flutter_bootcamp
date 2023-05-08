import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column } from '@ioc:Adonis/Lucid/Orm'
import OrderDetaile from './OrderDetaile'
export default class OrderStatus extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'order_status' })
  public orderStatus: string

  @column({ serializeAs: 'order_id' })
  public orderId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => OrderDetaile, {
    foreignKey: 'orderId',
  })
  public OrderId: BelongsTo<typeof OrderDetaile>
}
