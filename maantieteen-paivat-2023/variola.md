% Spatio-temporal dynamics of the last Finnish Variola epidemic, 1918–19
% Antti Härkönen
% 2023-11

# Introduction

## Variola

- orthopox virus *Variola major* and *V. minor*
- smallpox, la petite vérole, isorokko, smittkoppor
- one of the deadliest diseases in history
  * 30 % mortality
  * 300 million dead in 20th century
  * killed 20–30 % of Finnish children in the worst periods
- wiped out by vaccination campaign in 1980

## Vaccination

- Jennerian vaccination in the late 1700s
- mandatory vaccination for children in Finland in 1883
- smallpox no longer endemic in Finland after 1890s
- *HOWEVER*
- widespred vaccine hesitancy
- Kuhnean antivaccine movement popular in the 1910s

##

![Variola cases by month in Finland](./img/waves.png)

##

![Incidence of Variola for every 100 000 inhabitants](./img/map.png)

# Geospatial analysis

## Bayesian spatial regression

##

$$ y_i \sim Poisson(\lambda_i) $$
$$ log \lambda_i = \beta_0 + \beta_1 x_i + \theta_i + \phi_i $$