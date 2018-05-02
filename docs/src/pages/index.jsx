import React from 'react'
import Helmet from 'react-helmet'
import styled from 'styled-components'

import SEO from '../components/SEO'
import config from '../../data/SiteConfig'
import CtaButton from '../components/CtaButton'
import Navigation from '../components/Layout/Navigation'

class Index extends React.Component {
  render() {
    const allSEOMarkdown = this.props.data.allMarkdown.edges

    return (
      <div className="index-container">
        <Helmet title={config.siteTitle} />
        <SEO postEdges={allSEOMarkdown} />
        <main>
          <IndexHeadContainer>
            <Navigation />
            <Hero>
              <img src={config.siteLogo} height="120px" alt="" />
              <h1>{config.siteTitle}</h1>
              <h4>{config.siteDescription}</h4>
            </Hero>
          </IndexHeadContainer>
          <BodyContainer>
            <h2>worlds top database, flexible APIs, and docker</h2>
            <p>
              Get started with &nbsp;
              <a target="_blank" href="https://www.howtographql.com/">
                GraphQL
              </a>,&nbsp;
              <a target="_blank" href="https://www.oracle.com/database/index.html">
                Oracle Database
              </a>, and &nbsp;
              <a target="_blank" href="https://www.docker.com/">
                Docker
              </a>&nbsp;
              Click <i>"Get Started"</i> below to walk through the documentation. 
            </p>
            <p>
              Head to our &nbsp;
              <a href="/about">
                about
              </a>&nbsp;
              page for information on the author and the related webcast 
            </p>
            <CtaButton to={'/overview'}>Get Started</CtaButton>

          </BodyContainer>
        </main>
      </div>
    )
  }
}

export default Index

const IndexHeadContainer = styled.div`
  background: ${props => props.theme.brand};
  padding: ${props => props.theme.sitePadding};
  text-align: center;
`

const Hero = styled.div`
  padding: 50px 0;
  & > h1 {
    font-weight: 600;
  }
`

const BodyContainer = styled.div`
  padding: ${props => props.theme.sitePadding};
  max-width: ${props => props.theme.contentWidthLaptop};
  margin: 0 auto;

  .contributors {
    max-width: 400px;
    margin: 100px auto 0;
  }
`

/* eslint no-undef: "off" */
export const pageQuery = graphql`
  query IndexQuery {
    allMarkdown: allMarkdownRemark(
      limit: 2000
    ) 
    {
      edges {
        node {
          fields {
            slug
          }
          excerpt
          timeToRead
          frontmatter {
            title
          }
        }
      }
    }
    posts: allMarkdownRemark(
      limit: 2000
    ) 
    {
      edges {
        node {
          fields {
            slug
          }
          excerpt
          timeToRead
          frontmatter {
            title
          }
        }
      }
    }
  }
`
