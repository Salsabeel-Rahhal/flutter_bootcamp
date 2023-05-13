import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import { schema } from '@ioc:Adonis/Core/Validator'
import User from 'App/Models/User'

export default class UsersController {
  public async getUsers(ctx: HttpContextContract) {
    var result = await User.all()
    return result
  }
  public async getId(ctx: HttpContextContract) {
    var authId = await ctx.auth.authenticate()
    var result = await User.findOrFail(authId.id)
    return result
  }
  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      first_name: schema.string(),
      last_name: schema.string(),
      email: schema.string(),
      password: schema.string(),
      phone_number: schema.string(),
      address: schema.string(),
      city: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var user = new User()
    user.firstName = fields.first_name
    user.lastName = fields.last_name
    user.email = fields.email
    user.password = fields.password
    user.phoneNumber = fields.phone_number
    user.address = fields.address
    user.city = fields.city
    var result = await user.save()
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
      address: schema.string(),
      city: schema.string(),
    })
    const fields = await ctx.request.validate({ schema: newSchema })
    var id = fields.id
    var user = await User.findOrFail(id)
    user.firstName = fields.first_name
    user.lastName = fields.last_name
    user.email = fields.email
    user.password = fields.password
    user.phoneNumber = fields.phone_number
    user.address = fields.address
    user.city = fields.city
    var result = await user.save()
    return result
  }
  public async destroy(ctx: HttpContextContract) {
    var id = ctx.params.id
    var user = await User.findOrFail(id)
    await user.delete()
    return { message: 'The Users has been deleted!' }
  }
}
