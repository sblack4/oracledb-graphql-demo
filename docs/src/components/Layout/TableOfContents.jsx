import React from 'react'
import Link from 'gatsby-link'
import styled from 'styled-components'

/* eslint react/no-array-index-key: "off" */

class Links extends React.Component {
  render() {
    const entries = this.props.entries
    console.debug("--- Links ---")
    console.debug(entries)
    return (
      <StyledLinkList>
        {entries.map(({ entry }, key) => (
          <EntryListItem key={key}>
            <Link to={entry.childMarkdownRemark.fields.slug}>
              <EntryTitle>{entry.childMarkdownRemark.frontmatter.title}</EntryTitle>
            </Link>
          </EntryListItem>
        ))}
      </StyledLinkList>
    )
  }
}

class ChapterList extends React.Component {
  render() {
    const title = this.props.title
    const level = this.props.level
    const entries = this.props.entries
    const chapters = this.props.chapters
    console.debug("--- ChapterList ---")
    console.debug(this.props)
    return (
      <StyledChapterList>
        {title && (
          <ChapterListItem key={`${title}${level}`}>
            <ChapterTitle level={level}>{title}</ChapterTitle>
          </ChapterListItem>
        )}
        <ChapterListItem>
          <StyledLinkList>
            {entries.map(({ entry }, key) => (
              <EntryListItem key={key}>
                <Link to={entry.childMarkdownRemark.fields.slug}>
                  <EntryTitle>{entry.childMarkdownRemark.frontmatter.title}</EntryTitle>
                </Link>
              </EntryListItem>
            ))}
          </StyledLinkList>
        </ChapterListItem>
        <ChapterListItem>
          {chapters &&
            chapters.map((chapter, index) => (
              <ChapterList {...chapter} level={level + 1} key={`${index}`} />
            ))}
        </ChapterListItem>
      </StyledChapterList>
    )
  }
}

class TableOfContents extends React.Component {
  render() {
    const chapters = this.props.chapters
    console.debug("--- TOC ---")
    console.debug(chapters)
    return (
      <TOCWrapper>
        {chapters && chapters.map((chapter, index) => <ChapterList {...chapter} key={index} />)}
      </TOCWrapper>
    )
  }
}

export default TableOfContents

const TOCWrapper = styled.div`
  padding: ${props => props.theme.sitePadding};
  margin: 0;
`

const StyledChapterList = styled.ol`
  list-style: none;
  margin: 0;
`

const StyledLinkList = styled.ol`
  list-style: none;
`

const EntryTitle = styled.h6`
  display: inline-block;
  font-weight: 200;
  color: black;
  margin: 0;
  line-height: 1.5;
  border-bottom: 1px solid transparent;
  text-decoration: none;
`

const ChapterListItem = styled.li`
  margin: 0;
`

const EntryListItem = styled.li`
  margin: 0;
  a:hover {
    border-bottom: 1px solid black;
  }
`

const ChapterTitle = styled.h5`
  font-weight: ${({ level }) => {
    switch (level % 3) {
      case 1:
        return '600'
      case 2:
        return '400'
      default:
        return '200'
    }
  }};
  font-size: ${({ level }) => {
    switch (level % 3) {
      case 1:
        return '2.2rem'
      case 2:
        return '1.8rem'
      default:
        return '2.8rem'
    }
  }};
  color: ${({ level, theme }) => {
    switch (level % 3) {
      case 1:
        return 'black'
      case 2:
        return theme.accent
      default:
        return theme.brand
    }
  }};
`
