import { DateTime } from 'luxon'
import { BaseModel, belongsTo, BelongsTo, column, HasMany, hasMany } from '@ioc:Adonis/Lucid/Orm'
import User from './User'
import TableDetile from './TableDetaile'
import Shop from './Shop'
import Admin from './Admin'

export default class Reservation extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'time' })
  public time: DateTime

  @column({ serializeAs: 'date' })
  public date: DateTime

  @column({ serializeAs: 'cancel' })
  public cancel: boolean

  @column({ serializeAs: 'late_time' })
  public lateTime: DateTime

  @column({ serializeAs: 'persons_num' })
  public personsNum: number

  @column({ serializeAs: 'user_id' })
  public userId: number

  @column({ serializeAs: 'shop_id' })
  public shopId: number

  @column({ serializeAs: 'table_id' })
  public tableId: number
  @column({ serializeAs: 'admin_id' })
  public adminId: number

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

  @belongsTo(() => Shop, {
    foreignKey: 'shopId',
  })
  public ShopId: BelongsTo<typeof Shop>

  @hasMany(() => Admin, {
    foreignKey: 'adminId',
  })
  public AdminId: HasMany<typeof Admin>
}
