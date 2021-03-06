% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/community_plot.R
\name{community_plot}
\alias{community_plot}
\title{Plot network, highlighting communities}
\usage{
community_plot(g, c, n = 8, layout = NULL, showMayors = TRUE,
  extra = NULL)
}
\arguments{
\item{g}{An igraph graph object.}

\item{c}{An igraph communities object.}

\item{n}{The number of mayors to find. By default, returns mayors for the
largest n communities.}

\item{layout}{Results of an igraph layout routine.
(layout.fruchterman.reingold is called if nothing is passed). Because these
calculations can be time consuming, it makes sense to obtain the layout in
advance if you'll be making several versions of the same plot.}

\item{showMayors}{If true, highlight the location of mayors for the
communities shown.}

\item{extra}{Additional communities that should be highlighted.}
}
\description{
In a social network, community-detection algorithms can be used to find
cliques that are more strongly connected to each other than to the rest
of the network. This generates a plot similar to sma_plot(), except that
the largest communities in the network are highlighted.
}
\examples{
library(dplyr)
library(igraph)
g <- sample_tweets \%>\%
    ws_to_graph() \%>\%
    graph_lcc()
fg <- g \%>\%
    as.undirected() \%>\%
    simplify() \%>\%
    fastgreedy.community()
community_plot(g,fg)

}

