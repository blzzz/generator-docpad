# DocPad Configuration File
# http://docpad.org/docs/config

docpadConfig = {
  templateData:
    site:
      # The default title of our website.
      title: "<%= appname %>"

      # The production url of our website.
      url: "http://example.com"

      # The website description (for SEO).
      description: """
        When your website appears in search results in say Google, the text here
        will be shown underneath your website's title.
        """

      # The website keywords (for SEO) separated by commas.
      keywords: """
        place, your, website, keywords, here
        """

      # The cascading stylesheets for the site.
      styles: [
        "main.css"
      ]

      # The JavaScript files for the site.
      scripts: [
        "main.js"
      ]

<% if (options.sunny) { %>###
  plugins:
    sunny:
      configFromEnv: true
      envPrefixes: ["DOCPAD_SUNNY_", "DOCPAD_", "MY_AWESOME_APP_SUNNY_"]
      cloudConfigs: [
        {
          sunny: {
            provider: 'google'
            account: 'GOOGOPSDG76978SDG'
            secretKey: 'SD&*G68S&^DG*&6s8SD'
            ssl: true
          }
          container: 'herpderp.com'
          acl: 'private'
        },
        {
          sunny: {
            provider: 'aws'
            account: 'ADSDG876SDG87S'
            secretKey: 'A(*G&(S97*S^DG('
            ssl: true
          }
          container 'meow'
          acl: false #Uses the policy already set on S3.
          retryLimit: -1 # Retry as long as is necessary until the upload works.
        }
      ]
###<% } %>

}

# Export the DocPad Configuration
module.exports = docpadConfig
