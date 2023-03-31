import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column } from '@ioc:Adonis/Lucid/Orm'
import TableDetile from './TableDetile'

export default class TableStatus extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'status' })
  public status: string

  @column({ serializeAs: 'table_id' })
  public tableId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @belongsTo(() => TableDetile, {
    foreignKey: 'tableId',
  })
  public TableId: BelongsTo<typeof TableDetile>
}
