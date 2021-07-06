const {Users, Posts} = require('./data')

const resolvers = {
  users: async (_) => {
    return Users;
  },
  user: async ({ id }, context) => {
    return Users.find((user) => user.id == id)
  },
  posts: async (_) => {
    return Posts;
  },
  post: async ({ id }, context) => {
    return Posts.find((post) => post.id == id)
  }
};

module.exports = resolvers;
