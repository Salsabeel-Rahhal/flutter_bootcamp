import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import OrderProduct from 'App/Models/OrderProduct'
import { schema, rules } from '@ioc:Adonis/Core/Validator'

export default class OrderProductsController {
  public async getAll(ctx: HttpContextContract) {
    var result = await OrderProduct.all()
    return result
  }

  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await OrderProduct.findOrFail(id)
    return result
  }
  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      order_id: schema.number(),
      product_id: schema.number(),
      price: schema.number(),
      qty: schema.number(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var orderProducts = new OrderProduct()
    orderProducts.orderId = fields.order_id
    orderProducts.productId = fields.product_id
    orderProducts.price = fields.price
    orderProducts.qty = fields.qty
    var result = await orderProducts.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      order_id: schema.number(),
      product_id: schema.number(),
      price: schema.number(),
      qty: schema.number(),
      id: schema.number(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var orderProducts = await OrderProduct.findOrFail(id)
    orderProducts.orderId = fields.order_id
    orderProducts.productId = fields.product_id
    orderProducts.price = fields.price
    orderProducts.qty = fields.qty
    var result = await orderProducts.save()
    return result
  }

  public async destory(ctx: HttpContextContract) {
    var id = ctx.params.id
    var orderProducts = await OrderProduct.findOrFail(id)
    await orderProducts.delete()
    return { message: ' the order Products has been deleted' }
  }
}
