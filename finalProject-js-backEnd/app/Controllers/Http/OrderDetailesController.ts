import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import OrderDetaile from 'App/Models/OrderDetaile'
import { schema } from '@ioc:Adonis/Core/Validator'
export default class OrderDetailesController {
  public async getOrder(ctx: HttpContextContract) {
    var result = await OrderDetaile.all()
    return result
  }
  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await OrderDetaile.findOrFail(id)
    return result
  }
  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      total_cost: schema.number(),
      order_dishes: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var order = new OrderDetaile()
    order.totalCost = fields.total_cost
    order.orderDishes = fields.order_dishes
    var result = await order.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      id: schema.number(),
      total_cost: schema.number(),
      order_dishes: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var order = await OrderDetaile.findOrFail(id)
    order.totalCost = fields.total_cost
    order.orderDishes = fields.order_dishes
    var result = await order.save()
    return result
  }
  public async destroy(ctx: HttpContextContract) {
    var id = ctx.params.id
    var order = await OrderDetaile.findOrFail(id)
    await order.delete()
    return { message: 'The order has been deleted!' }
  }
}
