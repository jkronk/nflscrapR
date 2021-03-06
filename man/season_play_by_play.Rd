% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlayByPlayBoxScore.R
\name{season_play_by_play}
\alias{season_play_by_play}
\title{Parsed Descriptive Play-by-Play Function for a Full Season}
\usage{
season_play_by_play(Season)
}
\arguments{
\item{Season}{(numeric) A 4-digit year corresponding to an NFL season of 
interest}
}
\value{
A dataframe contains all the play-by-play information for a single
     season.  This includes all the 62 variables collected in our 
     game_play_by_play function (see documentation for game_play_by_play for
     details)
}
\description{
This function outputs all plays of an entire season in one dataframe.  
It calls the game_play_by_play function and applies it over every 
game in the season by extracting each game ID and url in the specified season.
}
\details{
This function calls the extracting_gameids, 
proper_jsonurl_formatting, and game_play_by_play to aggregate all the plays 
from a given season.  This dataframe is prime for use with the dplyr and 
plyr packages.
}
\examples{
# Play-by-Play Data from All games in 2010
pbp.data.2010 <- season_play_by_play(2010)

# Looking at all Baltimore Ravens Offensive Plays 
subset(pbp.data.2010, posteam = "BAL")
}

