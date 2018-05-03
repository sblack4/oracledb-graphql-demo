import React from 'react'
import Helmet from 'react-helmet'
import styled from 'styled-components'
import config from '../../data/SiteConfig'
import MainHeader from '../components/Layout/Header'


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


class About extends React.Component {
  render() {
    return (
      <div className="about">
      <BodyContainer>

        <h1>
          What is this ?
        </h1>
        <div>
          <p>
            This microsite hosts the materials for and a walkthrough of GraphQL+OracleDB. This was Originally compiled
          as research I [<a src="https://github.com/sblack4">@sblack4</a>&nbsp;
            on Github] was doing for a Developer Talk - 
            <a src="" ></a>
            [@Oracle My Employer]. Opinions &amp; views expressed are soley
            my own and not that of my Employer 😁
        </p>
          <CenterImageDiv>
            <a href="https://t.co/XcjjTWZ6Qu">
              <PopImage className="popimage" src="dbcs-graphql-devtalk-sblack4-oracle.png" width="80%" />
            </a>
          </CenterImageDiv>
        </div>
      </BodyContainer>
      </div>
    )
  }
}

const PopImage = styled.img`
  transition: all .2s ease-in-out; 
  :hover transform: scale(1.1);
  src: ${props => props.src};
`

const CenterImageDiv = styled.div`
  margin-left: 10%;
`

const BodyContainer = styled.div`
  padding: ${props => props.theme.sitePadding};
`

const leftParagraph = styled.p`

`

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
