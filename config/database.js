module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DB_HOST', '172.17.0.1'),
      port: env.int('DB_PORT', 5432),
      database: env('DB_NAME', 'strapi'),
      user: env('DB_USERNAME', 'strapi'),
      password: env('DB_PASSWORD', 'strapi'),
      ssl: env.bool('DB_SSL', false),
    },
  },
});
