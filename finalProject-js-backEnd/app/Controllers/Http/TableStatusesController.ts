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
    var result = await table.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      id: schema.number(),
      status: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var table = await TableStatus.findOrFail(id)
    table.status = fields.status
    var result = await table.save()
    return result
  }
  public async destroy(ctx: HttpContextContract) {
    var id = ctx.params.id
    var table = await TableStatus.findOrFail(id)
    await table.delete()
    return { message: 'The Table Status Number has been deleted!' }
  }
}
