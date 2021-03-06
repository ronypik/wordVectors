% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrixFunctions.R
\name{cosineSimilarity}
\alias{cosineSimilarity}
\title{Cosine Similarity}
\usage{
cosineSimilarity(x, y)
}
\arguments{
\item{x}{A matrix or VectorSpaceModel object}

\item{y}{A vector, matrix or VectorSpaceModel object.

Vector inputs are coerced to single-row matrices; y must have the
same number of dimensions as x.}
}
\value{
A matrix. Rows correspond to entries in x; columns to entries in y.
}
\description{
Calculate the cosine similarity of two matrices or a matrix and a vector.
}
\examples{

# Inspect the similarity of several academic disciplines by hand.
subjects = demo_vectors[[c("history","literature","biology","math","stats"),average=FALSE]]
similarities = cosineSimilarity(subjects,subjects)

# Use 'closest_to' to build up a large list of similar words to a seed set.
subjects = demo_vectors[[c("history","literature","biology","math","stats"),average=TRUE]]
new_subject_list = closest_to(demo_vectors,subjects,20)
new_subjects = demo_vectors[[new_subject_list$word,average=FALSE]]

# Plot the cosineDistance of these as a dendrogram.
plot(hclust(as.dist(cosineDist(new_subjects,new_subjects))))

}
