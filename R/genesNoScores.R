#' Return Genes With No Dosage Sensitivity Scores Available
#'
#' Given a list of genes and the name of the DS score, return the list of genes
#' that don't have a score in the corresponding reference table, and print
#' out the percent of genes without a score.
#'
#' @param lstGenes A character vector of gene names.
#' @param typeScore A character string indicating the type of dosage sensitivity
#'    scores ('pLI'/'pHI'/'pTS').
#'
#' @return Returns list of genes that don't have a score in the corresponding
#'    reference table, and print out the percent of genes without a score.
#'
#' @examples
#'
#' # Example 1:
#' # Using the annotations from the output of the annotateCNV() function.
#' annotatedResult <- annotateCNV(chr = 1, start = 15654424, end = 15680097,
#'                                type = 'DEL', num_copies = 1,
#'                                reference = 'GRCh37')
#' genesWithoutScores <- genesNoScores(annotatedResult$symbol, 'pTS')
#'
#' # Example 2:
#' # Using a user-defined vector of strings consisting of gene names.
#' genesWithoutScores <- genesNoScores(c('ABHD15', 'ABLIM2', 'APOC1',
#' 'randomstring'), 'pTS')
#'
#' @export

genesNoScores <- function(lstGenes, typeScore) {

  if (typeScore == 'pLI') {
    pLI_data <- NULL
    load('~/CNVds/data/pLI_data.rda')
    refTable <- pLI_data
  } else if (typeScore == 'pHI') {
    pHaplo_pTriplo_data <- NULL
    load('~/CNVds/data/pHaplo_pTriplo_data.rda')
    refTable <- pHaplo_pTriplo_data
    refTable <- refTable[c('X.gene', 'pHaplo')]
  } else {
    pHaplo_pTriplo_data <- NULL
    load('~/CNVds/data/pHaplo_pTriplo_data.rda')
    refTable <- pHaplo_pTriplo_data
    refTable <- refTable[c('X.gene', 'pTriplo')]
  }
  colnames(refTable) <- c('gene', 'score')
  lstGenes <- cbind(lstGenes)
  colnames(lstGenes)<-c('gene')
  result <- merge(lstGenes, refTable, by='gene', all.x = TRUE)
  totalGenes <- nrow(result)
  result <- result[is.na(result$score),]
  totalNA <- nrow(result)
  result <- result$gene

  percentNA <- totalNA/totalGenes

  message <- paste0("Percent of input genes without ", typeScore, " scores: ", percentNA)
  print(message)

  return(result)
}

# [END]