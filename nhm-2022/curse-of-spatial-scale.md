% The curse of spatial scale in population statistics and how GIS can help
% Antti Härkönen
% 2022-08-08

# MAUP

## Ecological fallacy

- common statistical problem that arises from aggregation
- several features are combined, they may create seemingly co-occurring phenomena
- these may be interpreted as causal relationships

## Example: Treaty of Nöteborg and its impact

- supposedly the 1323 frontier explains many demographic and economic differences between eastern and western Finland
- reality: no set border for the most part
- seeing patterns that look vaguely like the 1323 border an example of ecological fallacy

## MAUP

- modifiable areal unit problem
- subset of ecological fallacy
- areal units can change arbitrarily
- rarely discussed in historical studies

# The Problem of the administrative unit

## Administrative units

- quantitative historical studies usually use data collected by administrative unit
- common in:
  + economic history/cliometrics
  + historical demography
- administrative units keep changing

## 

The fact that administrative units differ from one another already creates several problems for the reliability.
Not only can they change diachronically, but they can also have radically different sizes and shapes depending on country and various geographic factors.

# Problems with scale

## Scale

## Dealing with spatial issues

- removing problematic areas
  + analyses are weaker
  + can introduce bias (e.g. quickly changing areas can be growing fast)
- ignoring problems completely

- fine-grained spatial analysis reduces the effects of spatial scale
- not enough ready-made data available
- solutions to such problems require vast amounts of work

## Adjusting areal units

- estimating and correcting for the impact of changing borders
  + used in Historical GIS projects (e.g. GBHGIS)

# Vyborg

## Finnish and Russian population

- major Russian minority before 1917
- Orthodoxy used as a proxy for Russian nationality

## Changing segregation

- town space changes
- so do spatial units
- St. Petersburg suburb shrinks over a long period
  + poll tax records change yearly

## Fine-grained analysis

- population located down to plot level
- raster file representing population density
