import { DateTime } from 'luxon'
import { BaseModel, belongsTo, BelongsTo, column, HasMany, hasMany } from '@ioc:Adonis/Lucid/Orm'
import Reservation from './Reservation'
import User from './User'

export default class Admin extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'first_name' })
  public firstName: string

  @column({ serializeAs: 'last_name' })
  public lastName: string

  @column({ serializeAs: 'email' })
  public email: string

  @column({ serializeAs: 'password' })
  public password: string

  @column({ serializeAs: 'phone_number' })
  public phoneNumber: string

  @column({ serializeAs: 'job_title' })
  public jobTitle: string

  @column({ serializeAs: 'shift' })
  public shift: string

  @column({ serializeAs: 'gender' })
  public gender: boolean

  @column({ serializeAs: 'admin_reservation_id' })
  public reservationId: number
  @column({ serializeAs: 'user_id' })
  public userId: number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  @hasMany(() => Reservation, {
    foreignKey: 'reservationId',
  })
  public ReservationId: HasMany<typeof Reservation>
  @belongsTo(() => User, {
    foreignKey: 'userId',
  })
  public UserId: BelongsTo<typeof User>
}
