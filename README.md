# Análisis de Datos: Salud Mental en Adolescentes

## Integrante

Sebastian Albornoz

## Resumen

Proyecto transversal de Programación y Estadística sobre el dataset **Teen Mental Health** (Kaggle). Incluye descarga y limpieza del CSV con bash, un reporte EDA en Quarto y un **dashboard** en la raíz del proyecto (Quarto Dashboard estático con **plotly** y **DT**, mismo enfoque que el proyecto modelo del curso).

Repositorio: https://github.com/Shakkus/TrabajoProgramacionEstadistica

## Requisitos

- Git
- Bash (Git Bash en Windows)
- [R](https://cran.r-project.org/) y [RStudio](https://posit.co/download/rstudio-desktop/)
- [Quarto](https://quarto.org/docs/get-started/)
- Paquetes de R: `tidyverse`, `knitr`, `ggplot2`, `plotly`, `DT`

```r
install.packages(c("tidyverse", "knitr", "ggplot2", "plotly", "DT"))
```

Para la descarga desde Kaggle, configurar el token en `~/.kaggle/kaggle.json` (opcional si ya existe `datos/dataset.csv`).

## Reproducir el trabajo

1. Clonar el repositorio y abrir **`TrabajoProgramacionEstadistica.Rproj`** en RStudio (directorio de trabajo = raíz del proyecto).

2. Obtener el dataset:

   ```bash
   bash scripts/descarga.sh
   ```

   O copiar el CSV incluido:

   ```bash
   cp datos/Teen_Mental_Health.csv datos/dataset.csv
   ```

3. **Renderizar el dashboard** (desde la raíz):

   ```bash
   quarto render dashboard_salud_mental.qmd
   ```

   Con `_quarto.yml`, la salida va a **`docs/`** (listo para GitHub Pages con `.nojekyll`).

4. **Renderizar el reporte EDA**:

   ```bash
   quarto render scripts/reporte_eda_salud_mental.qmd --to html --output-dir ../reportes
   ```

   Si `quarto` no está en el PATH, cerrá y abrí la terminal, o usá:

   ```bash
   "/c/Program Files/Quarto/bin/quarto.exe" render dashboard_salud_mental.qmd
   ```

5. Abrir en el navegador:

   - **Dashboard:** `docs/dashboard_salud_mental.html` (y carpeta `docs/dashboard_salud_mental_files`)
   - **Reporte EDA:** `reportes/reporte_eda_salud_mental.html` (y `reporte_eda_salud_mental_files`)

6. **Guía de estudio (PDF):**

   ```bash
   quarto render guia_aprendizaje.qmd --to typst --output-dir reportes
   ```

   Salida: `reportes/guia_aprendizaje.pdf` (temas, fórmulas y reproducción detallada).

## Estructura

| Ruta | Descripción |
|------|-------------|
| `_quarto.yml` | Proyecto Quarto tipo *website*; salida en `docs/` |
| `dashboard_salud_mental.qmd` | Dashboard principal (raíz del proyecto) |
| `guia_aprendizaje.qmd` | Guía en PDF (fórmulas, temas, reproducción) |
| `scripts/descarga.sh` | Descarga, descompresión y limpieza del CSV |
| `scripts/reporte_eda_salud_mental.qmd` | Reporte EDA (consigna estadística) |
| `datos/` | `dataset.csv` / `Teen_Mental_Health.csv` |
| `docs/` | HTML del dashboard generado |
| `reportes/` | HTML del reporte EDA generado |
