import path from 'path'
import Koa from 'koa'
import KoaRouter from 'koa-router'
import graphqlHTTP from 'koa-graphql'
// module we created that lets you serve a custom build of GraphiQL
import graphiql from 'koa-custom-graphiql'
import koaStatic from 'koa-static'
import koaConvert from 'koa-convert'
import koaCors from 'kcors'

import schemaBasic from './schema-basic/index'
import schemaRelay from './schema-paginated/index'

const app = new Koa
const router = new KoaRouter

app.use(koaConvert(koaCors()))

router.get('/graphql', graphiql((foo) => {
  console.log(foo)  
  return ({
  css: '/graphiql.css',
  js: '/graphiql.js'
  })
}
))

router.get('/graphql-relay', graphiql({
  url: '/graphql-relay',
  css: '/graphiql.css',
  js: '/graphiql.js'
}))

router.post('/graphql', koaConvert(graphqlHTTP({
  schema: schemaBasic,
  graphiql: true,
  formatError: (error, ctx) => ({
    message: error.message,
    locations: error.locations,
    stack: error.stack,
    path: error.path
  })
})))

router.post('/graphql-relay', koaConvert(graphqlHTTP({
  schema: schemaRelay,
  graphiql: true,
  formatError: (error, ctx) => ({
    message: error.message,
    locations: error.locations,
    stack: error.stack,
    path: error.path
  })
})))

router.redirect('/', '/graphql')

app.use(router.routes())
app.use(router.allowedMethods())
// serve the custom build of GraphiQL
app.use(koaStatic(path.join(__dirname, 'node_modules/graphsiql')))
app.use((foo) => console.log(foo))
function logger(format) {
  format = format || ':method ":url"';

  return async function (ctx, next) {
    const str = format
      .replace(':method', ctx.method)
      .replace(':url', ctx.url);

    console.log(str);

    await next();
  };
}

app.use(logger());
app.use(logger(':method :url'));

const port = process.env.PORT || 3000
app.listen(port, () => console.log(`server listening at http://localhost:${port}/graphql && http://localhost:${port}/graphql-relay`))

