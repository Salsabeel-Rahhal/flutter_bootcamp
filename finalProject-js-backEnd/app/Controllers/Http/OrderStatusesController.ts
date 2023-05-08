import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import OrderStatus from 'App/Models/OrderStatus'
import { schema } from '@ioc:Adonis/Core/Validator'
export default class OrderStatusesController {
  public async getOrderStatus(ctx: HttpContextContract) {
    var result = await OrderStatus.all()
    return result
  }
  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await OrderStatus.findOrFail(id)
    return result
  }
  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      order_status: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var order = new OrderStatus()
    order.orderStatus = fields.order_status
    var result = await order.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      id: schema.number(),
      order_status: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var order = await OrderStatus.findOrFail(id)
    order.orderStatus = fields.order_status
    var result = await order.save()
    return result
  }
  public async destroy(ctx: HttpContextContract) {
    var id = ctx.params.id
    var order = await OrderStatus.findOrFail(id)
    await order.delete()
    return { message: 'The Order Status has been deleted!' }
  }
}
