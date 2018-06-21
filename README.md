# README

This is an progression on a previous "relate" app I made a while back in angular.

The basic idea is to facilitate emotional honesty and empathetic reactions without fear of judgment by leveraging an emoji based anonymous social media platform.

Users will be able to post from a short list of whitelisted emojis to represent how they are feeling.

They will also be able to se the anonymized posts of others and be able to acknowledge others emotions without "liking", "upvoating", or similar actions that promote post hierarchies.

Users will have username-less accounts where they can connect with friends by sending them one time use invite tokens.

This will be my first time using GraphQL or React and my second time working with Ruby on Rails.

I'm planning:
- landing page where users can see all posts on the platform.
- friends page where users can see only their friends posts.
- signup page where users will use email to sign up and be assigned a cryptographically secure passphrase to log into their account.
- reset page in case users forget their passphrase.
- invite page where users can generate and accept invite tokens.

My data model for graphql is:

Post {
  mood: String,
  created: Int
}

User {
  email: String,
  password: String,
  posts: [Post],
  friends: [User]
}

Invite {
  code: String,
  sender: User
}
