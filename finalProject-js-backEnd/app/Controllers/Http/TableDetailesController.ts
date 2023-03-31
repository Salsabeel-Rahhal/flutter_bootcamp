import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import { schema } from '@ioc:Adonis/Core/Validator'
import TableDetile from 'App/Models/TableDetile'

export default class TableDetailesController {
  public async getTableDetailes(ctx: HttpContextContract) {
    var result = await TableDetile.all()
    return result
  }
  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await TableDetile.findOrFail(id)
    return result
  }
  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      max_capacity: schema.number(),
      sitting_num: schema.number(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var table = new TableDetile()
    table.maxCapacity = fields.max_capacity
    table.sittingNum = fields.sitting_num
    var result = await table.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      id: schema.number(),
      max_capacity: schema.number(),
      sitting_num: schema.number(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var table = await TableDetile.findOrFail(id)
    table.maxCapacity = fields.max_capacity
    table.sittingNum = fields.sitting_num
    var result = await table.save()
    return result
  }
  public async destroy(ctx: HttpContextContract) {
    var id = ctx.params.id
    var table = await TableDetile.findOrFail(id)
    await table.delete()
    return { message: 'The Table Detiles Number has been deleted!' }
  }
}
