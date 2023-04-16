import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import { schema, rules } from '@ioc:Adonis/Core/Validator'
import Order from 'App/Models/Order'

export default class OrdersController {
  public async getAll(ctx: HttpContextContract) {
    var result = await Order.all()
    return result
  }

  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await Order.findOrFail(id)
    return result
  }

  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      user_id: schema.number(),
      total: schema.number(),
      address: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var order = new Order()
    order.userId = fields.user_id
    order.total = fields.total
    order.address = fields.address

    var result = await order.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      user_id: schema.number(),
      total: schema.number(),
      address: schema.string(),
      id: schema.number(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var order = await Order.findOrFail(id)
    order.userId = fields.user_id
    order.total = fields.total
    order.address = fields.address
    return { message: ' the order has been updated' }
  }

  public async destory(ctx: HttpContextContract) {
    var id = ctx.params.id
    var order = await Order.findOrFail(id)
    await order.delete()
    return { message: ' the order has been deleted' }
  }
}
