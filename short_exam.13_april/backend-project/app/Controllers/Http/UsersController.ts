import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import { schema, rules } from '@ioc:Adonis/Core/Validator'
import User from 'App/Models/User'

export default class UsersController {
  public async getUser(ctx: HttpContextContract) {
    var authObject = await ctx.auth.authenticate()

    var result = await User.findOrFail(authObject.id)
    return result
  }
  public async login(ctx: HttpContextContract) {
    var object = ctx.request.all()
    var email = object.email
    var password = object.password
    var userName = object.userName

    var result = await ctx.auth.attempt(email, password)
    return result
  }

  public async logout(ctx: HttpContextContract) {
    var object = await ctx.auth.authenticate()
    await ctx.auth.logout()
    return { message: 'LogOut' }
  }

  public async create(ctx: HttpContextContract) {
    const newSchema = schema.create({
      email: schema.string({}, [
        rules.email(),
        rules.unique({
          table: 'users',
          column: 'email',
        }),
      ]),
      password: schema.string(),
      username: schema.string(),
    })

    const fields = await ctx.request.validate({
      schema: newSchema,
      messages: {
        'required': 'The {{ field }} is required to create a new account',
        'email.unique': 'Email not available',

        'email.email': 'Email must be an email format',
      },
    })

    var user = new User()

    user.email = fields.email
    user.password = fields.password
    user.userName = fields.username
    var newUser = await user.save()
    return newUser
  }
}
