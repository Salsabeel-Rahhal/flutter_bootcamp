import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Database from '@ioc:Adonis/Lucid/Database'
import Admin from 'App/Models/Admin'
export default class AdminsController {
  public async getAdmins(ctx: HttpContextContract) {
    var result = await Admin.all()
    return result
  }
  public async getId(ctx: HttpContextContract) {
    var id = ctx.params.id
    var result = await Admin.findOrFail(id)
    return result
  }
  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      first_name: schema.string(),
      last_name: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var actor = new Admin()
    actor.firstName = fields.first_name
    actor.lastName = fields.last_name
    var result = await actor.save()
    return result
  }
  public async update(ctx: HttpContextContract) {}
  public async destroy(ctx: HttpContextContract) {}
}
