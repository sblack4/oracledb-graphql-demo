import React from 'react'
import Helmet from 'react-helmet'
import styled from 'styled-components'
import config from '../../data/SiteConfig'
import MainHeader from '../components/Layout/Header'
// import About from '../components/About/About'


class About extends React.Component {
  render() {
    return (
      <div className="about">
        <h1>
          Hello World
        </h1>
      </div>
    )
  }
}

const BodyContainer = styled.div`
  padding: ${props => props.theme.sitePadding};
`

class AboutPage extends React.Component {
  render() {
    return (
      <div className="index-container">
        <Helmet title={config.siteTitle} />
        <main>
        <IndexHeadContainer>
          <MainHeader
            siteTitle={config.siteTitle}
            siteDescription={config.siteDescription}
            location={this.props.location}
            logo={config.siteLogo}
          />
        <Hero>
          <img src={config.siteLogo} height="120px" alt="" />
          <h1>About</h1>
        </Hero>
        </IndexHeadContainer>
          <BodyContainer>
            <About config={config} />
          </BodyContainer>
        </main>
      </div>
    )
  }
}

const Hero = styled.div`
  padding: 50px 0;
  & > h1 {
    font-weight: 600;
  }
`

const IndexHeadContainer = styled.div`
  background: ${props => props.theme.brand};
  padding: ${props => props.theme.sitePadding};
  text-align: center;
`


export default AboutPage
