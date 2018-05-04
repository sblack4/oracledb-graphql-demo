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
            This microsite hosts the materials for and a walkthrough of GraphQL+OracleDB and is for informational purposes only. This was Originally compiled
          as research I [Steven, <a src="https://github.com/sblack4">@sblack4</a>&nbsp; Github] was doing for the 
            <a src="https://t.co/XcjjTWZ6Qu" >May 4, 2018 Oracle Friday Standup</a>. If you'd like to watch or watch the recording it should be up within a week of the airing.
            Opinions &amp; views expressed are soley my own and not those of my Employer [<a src="https://github.com/oracle">@Oracle</a>] 😁
            <p>
            If you'd like to find out more about the Oracle Cloud Solution Hubs don't be too shy to contact me. We're growing pretty fast, with campuses 
            in Reston, Austin, India, and soon Burlington &amps; Santa Clara!  
            </p>
        </p>
          <CenterImageDiv>
            <a href="https://t.co/XcjjTWZ6Qu">
              <PopImage className="popimage" src="dbcs-graphql-devtalk-sblack4-oracle.png" width="80%" />
            </a>
          </CenterImageDiv>
          <p>
            I've tried to make the material here accurate and self-contained, but if you have comments, suggestions, or improvements 
            please <a href="https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo/issues">Subtmit an Issue</a> or 
            <a href="https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo/pulls">Make a Pull Request</a>! If you're new to open-source 
            check out <a href="https://github.com/jlord/git-it-electron">git-it</a> for learning how to collaborate with GitHub, the 
            <a href="https://opensource.guide/how-to-contribute/">opensource.guide/how-to-contribute</a> guide, or submit an issue! I don't bite  😝  
          </p>
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
