import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, HasMany, belongsTo, column, hasMany } from '@ioc:Adonis/Lucid/Orm'
import Shop from './Shop'
import TableDetile from './TableDetaile'
import TableStatus from './TableStatus'

export default class ShopStatus extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'tables_reservations_num' })
  public table: number

  @column({ serializeAs: 'table_id' })
  public tableId: number

  @column({ serializeAs: 'shop_id' })
  public shopId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => Shop, {
    foreignKey: 'shopId',
  })
  public ShopId: BelongsTo<typeof Shop>

  @hasMany(() => TableStatus, {
    foreignKey: 'tableId',
  })
  public TableId: HasMany<typeof TableStatus>
}
