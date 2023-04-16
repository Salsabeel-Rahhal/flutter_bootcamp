import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Product from 'App/Models/Product'
import { schema, rules } from '@ioc:Adonis/Core/Validator'

export default class ProductsController {
  public async getAll(ctx: HttpContextContract) {
    var result = await Product.all()
    return result
  }

  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await Product.findOrFail(id)
    return result
  }

  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      name: schema.string(),
      image: schema.string(),
      price: schema.number(),
      current_qty: schema.number(),
      description: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var product = new Product()
    product.name = fields.name
    product.image = fields.image
    product.price = fields.price
    product.currentQty = fields.current_qty
    product.description = fields.description
    var result = await product.save()
    return result
  }

  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      id: schema.number(),
      name: schema.string(),
      image: schema.string(),
      price: schema.number(),
      current_qty: schema.number(),

      description: schema.string(),
    })

    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var product = await Product.findOrFail(id)
    product.name = fields.name
    product.image = fields.image
    product.price = fields.price
    product.currentQty = fields.current_qty
    product.description = fields.description
    var result = await product.save()
    return { message: ' the product has been updated' }
  }

  public async destory(ctx: HttpContextContract) {
    var id = ctx.params.id
    var products = await Product.findOrFail(id)
    await products.delete()

    return { message: ' the product has been deleted' }
  }
}
