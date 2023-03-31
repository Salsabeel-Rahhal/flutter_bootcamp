import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import { schema } from '@ioc:Adonis/Core/Validator'
import TableStatus from 'App/Models/TableStatus'

export default class TableStatusesController {
  public async getTableStatus(ctx: HttpContextContract) {
    var result = await TableStatus.all()
    return result
  }
  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await TableStatus.findOrFail(id)
    return result
  }
  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      status: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var table = new TableStatus()
    table.status = fields.status
    var result = await TableStatus.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      id: schema.number(),
      shop_name: schema.string(),
      shop_location: schema.string(),
      rate: schema.number(),
      contact_number: schema.string(),
      service_type: schema.string(),
      food_type: schema.string(),
      work_time: schema.date(),
      price_range: schema.number(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var shop = await TableStatus.findOrFail(id)
    shop.shopName = fields.shop_name
    shop.shopLocation = fields.shop_location
    shop.rate = fields.rate
    shop.contactNumber = fields.contact_number
    shop.serviceType = fields.service_type
    shop.foodType = fields.food_type
    shop.workTime = fields.work_time
    shop.priceRange = fields.price_range
    var result = await shop.save()
    return result
  }
  public async destroy(ctx: HttpContextContract) {
    var id = ctx.params.id
    var shop = await TableStatus.findOrFail(id)
    await shop.delete()
    return { message: 'The Shop Number has been deleted!' }
  }
}
