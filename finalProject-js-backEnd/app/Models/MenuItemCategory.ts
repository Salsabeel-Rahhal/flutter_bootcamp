import { DateTime } from 'luxon'
import { BaseModel, column } from '@ioc:Adonis/Lucid/Orm'

export default class MenuItemCategory extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column({ serializeAs: 'item_category_name' })
  public itemCategoryName: string

  @column({ serializeAs: 'item_category_desc' })
  public itemCategoryDesc: string

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
}
