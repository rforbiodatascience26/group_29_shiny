library(shiny)
library(bslib)

ui <- page_fluid(
  setBackgroundColor(
    color = c("#C9A0DC", "#E6E6FA"),
    gradient = "linear",
    direction = "bottom"
  ),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel(h1(strong("Virtual Central Dogma"), align = "center")),
      helpText("Software design for user to create a random DNA sequence and transform it into RNA and protein"),
      style = "font-size: 20px; text-align: center; background-color: #8087AA"
    )),
  layout_columns(
    col_widths = 12,
    card_header("DNA sequence generator",
                style = "text-align: center; font-weight: bold; font-size: 18px;")
    ),
  layout_columns(
    col_widths = 12,
    card(
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 3, max = 60, value = 30, step = 3),
      layout_columns(
        col_widths = c(3, 3, 3, 3),
        numericInput("prob_A", "Probability of A", value = 0.25, min = 0, max = 1, step = 0.1),
        numericInput("prob_T", "Probability of T", value = 0.25, min = 0, max = 1, step = 0.1),
        numericInput("prob_C", "Probability of C", value = 0.25, min = 0, max = 1, step = 0.1),
        numericInput("prob_G", "Probability of G", value = 0.25, min = 0, max = 1, step = 0.1)
      )
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Generated sequence"),
      mainPanel(
        verbatimTextOutput(outputId = "dna")
      )
    )),
  layout_columns(
    col_widths = 12,
      card_header("Enter a DNA sequence"),
      style = "text-align: center;  font-size: 18px; font-weight: bold"
      
    )
  ,
    layout_columns(
    col_widths = 12,
    card(
      textInput("dna_i", "Please paste your DNA sequence")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("RNA output"),
      verbatimTextOutput("rna")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Enter a RNA sequence"),
      textInput(
        inputId = "rna_i",
        label = "Please paste your RNA sequence"),
      mainPanel(
        verbatimTextOutput(outputId = "protein")
      )
      #style = "text-align: center;  font-size: 18px; font-weight: bold"),
    ),
    
  layout_columns(
    col_widths = 12,
    card(
      card_header("Protein output"),
      mainPanel(
        verbatimTextOutput("protein")
      )
    )
  ),
  layout_columns(
    col_widths = 12,
    card_header("Unique aminoacid counts"),
    style = "text-align: center;  font-size: 18px; font-weight: bold"),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Aminoacid sequence input"),
      mainPanel(
        textInput(inputId = "aa_for_counts",
                  label = "Please paste your aminoacid sequence")
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Aminoacid counts output"),
      mainPanel(
        width = 12,
        div(plotOutput(outputId = "base_counts"), align = "center")
      )
    ))
)))