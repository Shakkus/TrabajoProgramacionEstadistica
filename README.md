# Análisis de Datos: Salud Mental en Adolescentes

## Integrante

Sebastian Albornoz

## Resumen

Proyecto transversal de Programación y Estadística sobre el dataset **Teen Mental Health** (Kaggle). Incluye descarga y limpieza inicial del CSV con un script bash, un reporte reproducible en Quarto con análisis exploratorio y un **dashboard interactivo** (Quarto + Shiny) para la presentación del TP.

Repositorio: https://github.com/Shakkus/TrabajoProgramacionEstadistica

## Requisitos

- Git
- Bash (Git Bash en Windows)
- [R](https://cran.r-project.org/) y [RStudio](https://posit.co/download/rstudio-desktop/)
- [Quarto](https://quarto.org/docs/get-started/)
- Paquetes de R: `tidyverse`, `knitr`, `shiny`

```r
install.packages(c("tidyverse", "knitr", "shiny"))
```

Para la descarga desde Kaggle, configurar el token de la API en `~/.kaggle/kaggle.json` (opcional si ya existe `datos/dataset.csv` o `datos/Teen_Mental_Health.csv`).

## Reproducir el trabajo

1. Clonar el repositorio y abrir `TrabajoProgramacionEstadistica.Rproj` en RStudio.

2. Obtener el dataset (elige una opción):

   ```bash
   bash scripts/descarga.sh
   ```

   El script deja `datos/dataset.csv`. Si no usás Kaggle, podés copiar el CSV incluido:

   ```bash
   cp datos/Teen_Mental_Health.csv datos/dataset.csv
   ```

3. Renderizar el reporte EDA y el dashboard:

   ```bash
   quarto render scripts/reporte_eda_salud_mental.qmd --to html --output-dir ../reportes
   quarto render scripts/dashboard_salud_mental.qmd --to dashboard --output-dir ../reportes
   ```

4. Abrir en el navegador:

   - `reportes/reporte_eda_salud_mental.html` (junto con `reporte_eda_salud_mental_files`)
   - `reportes/dashboard_salud_mental.html` (dashboard interactivo; requiere servir con Shiny embebido al abrirlo)

## Estructura

| Ruta | Descripción |
|------|-------------|
| `scripts/descarga.sh` | Descarga, descompresión y limpieza del CSV |
| `scripts/reporte_eda_salud_mental.qmd` | Reporte EDA en Quarto |
| `scripts/dashboard_salud_mental.qmd` | Dashboard interactivo (Quarto Dashboard + Shiny) |
| `datos/` | Dataset (`dataset.csv` o `Teen_Mental_Health.csv`) |
| `reportes/` | HTML generado (reporte y dashboard) |
