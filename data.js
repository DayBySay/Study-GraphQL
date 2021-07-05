const Users = [
  {
    id: 1,
    name: "tionlow",
    email: "tionlow@gree.net",
    posts: [
      {
        id: 1,
        title: "hogehoge",
        published: true,
        link:
          "https://example.com",
        author: 1
      },
      {
        id: 2,
        title: "fugafuga",
        published: true,
        link:
          "https://example.com",
        author: 1
      }
     ]
  },
  {
    id: 3,
    name: "youten",
    email: "youten@gree.net",
    posts: []
  }
];


module.exports = {
  Users
};
