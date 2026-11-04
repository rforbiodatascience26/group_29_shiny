server <- function(input, output) {
  
  output$dna <- renderText({
    probs <- c(input$prob_A, input$prob_T, input$prob_C, input$prob_G)
    if( abs(sum(probs) - 1) > 1e-10 ){
      stop("The probabilities of A, T, G, and C have to add up to one")}
    gene_dna(length = input$n_bases, base_probs = probs)
    
  })
  
  output$rna <- renderText({
    transcribe_dna(input$dna_i)
  })
    
  output$protein <- renderText({
    translate_rna(input$rna_i)
  })
  
  output$base_counts <- renderPlot({
    ggplot(
      base_freqs(dna = input$dna_for_counts),
      aes(x = dna_vec, y = Freq, fill = dna_vec)
    ) +
      geom_col() +
      labs(
        x = "Base",
        y = "Frequency",
        fill = "DNA Base"
      )
  })
}