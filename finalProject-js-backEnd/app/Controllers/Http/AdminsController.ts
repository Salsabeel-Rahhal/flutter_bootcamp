import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import { schema } from '@ioc:Adonis/Core/Validator'
import Admin from 'App/Models/Admin'

export default class AdminsController {
  public async getAdmins(ctx: HttpContextContract) {
    var result = await Admin.all()
    return 'its work'
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
      email: schema.string(),
      password: schema.string(),
      phone_number: schema.string(),
      job_title: schema.string(),
      shift: schema.string(),
      gender: schema.boolean(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var admin = new Admin()
    admin.firstName = fields.first_name
    admin.lastName = fields.last_name
    admin.email = fields.email
    admin.password = fields.password
    admin.phoneNumber = fields.phone_number
    admin.jobTitle = fields.job_title
    admin.shift = fields.shift
    admin.gender = fields.gender
    var result = await admin.save()
    return result
  }
  public async update(ctx: HttpContextContract) {
    const newSchema = schema.create({
      id: schema.number(),
      first_name: schema.string(),
      last_name: schema.string(),
      email: schema.string(),
      password: schema.string(),
      phone_number: schema.string(),
      job_title: schema.string(),
      shift: schema.string(),
      gender: schema.boolean(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var admin = await Admin.findOrFail(id)
    admin.firstName = fields.first_name
    admin.lastName = fields.last_name
    admin.email = fields.email
    admin.password = fields.password
    admin.phoneNumber = fields.phone_number
    admin.jobTitle = fields.job_title
    admin.shift = fields.shift
    admin.gender = fields.gender
    var result = await admin.save()
    return result
  }
  public async destroy(ctx: HttpContextContract) {
    var id = ctx.params.id
    var admin = await Admin.findOrFail(id)
    await admin.delete()
    return { message: 'The admin has been deleted!' }
  }
}
