module.exports = {
  lessonsDir: "lessons", // The name of the directory that contains lessons or docs.
  siteTitle: "OracleDB, GraphQL, Docker, & Cloud", // Site title.
  siteTitleAlt: "OracleDB-GraphQL", // Alternative site title for SEO.
  siteLogo: "/oracledb-graphql-demo/logos/hub-logo-white.png", // Logo used for SEO and manifest.
  siteUrl: "https://unofficialoraclecloudhub.github.io/", // Domain of your website without pathPrefix.
  pathPrefix: "/oracledb-graphql-demo/", // Prefixes all links. For cases when deployed to example.github.io/gatsby-advanced-starter/.
  siteDescription: "Learning Materials for exploring OracleDB & GraphQL", // Website description used for RSS feeds/meta description tag.
  postDefaultCategoryID: "Tech", // Default category for posts.
  userName: "SBlack4", // Username to display in the author segment.
  userTwitter: "https://twitter.com/Genseb7", // Optionally renders "Follow Me" in the UserInfo segment.
  userDescription: "GitHub - @sblack4", // User description to display in the author segment.
  userLinks: [
    {
      label: "GitHub",
      url: "https://github.com/sblack4",
      iconClassName: "fa fa-github"
    },
    {
      label: "Twitter",
      url: "https://twitter.com/Genseb7",
      iconClassName: "fa fa-twitter"
    },
    {
      label: "Email",
      url: "mailto:steven.black@oracle.com",
      iconClassName: "fa fa-envelope"
    },
    {
      label: "Linkedin",
      url: "https://www.linkedin.com/in/steven-black/",
      iconClassName: "fa fa-envelope"
    }
  ],
  themeColor: "#c62828", // Used for setting manifest and progress theme colors.
  backgroundColor: "#ff000", // Used for setting manifest background color.
  toCChapters: ["", "Overview", "Running the Demo", "Why GraphQL & Oracle DB", "Learn More", "Summary"] 
};
