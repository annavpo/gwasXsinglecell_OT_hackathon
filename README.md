# 🧬 gwasXsc  
**Integrating GWAS with single-cell data to identify pathogenic cell types and prioritise targets in inflammatory skin diseases**

> 🧠 *Part of the [Open Targets Hackathon]([https://www.opentargets.org/](https://github.com/opentargets/hackathon-tasks)) *

---

## Overview  
Genome-wide association studies (GWAS) have identified hundreds of genetic loci associated with **inflammatory skin diseases** such as **psoriasis** and **atopic dermatitis**, but the **pathogenic cell types** underlying these signals remain largely unknown.

This project is meant to bridge this gap by integrating **GWAS summary statistics** with **single-cell RNA-seq** data from healthy and diseased skin to:
- Identify **cell types** enriched for genetic risk.
- Compute **gene-level cell-type specificity scores**.
- Prioritise **therapeutic targets** in their **cellular context**.

---

## 🎯 Objectives  

| Goal | Description |
|------|--------------|
| 🧩 **Integrate GWAS + scRNA-seq** | Combine genetic association data with cell-type resolved transcriptomics. |
| 🔬 **Identify pathogenic cell types** | Determine which cell populations drive disease risk in psoriasis and eczema. |
| 🧬 **Prioritise target genes** | Compute gene-level cell-type specificity scores to rank causal/effector genes. |
| 💡 **Contribute to Open Targets Platform** | Prototype a new “cell-type specificity” evidence layer. |

---

## Approach  

### 1️) Data Collection  
- Retrieve GWAS summary statistics for psoriasis and atopic dermatitis from the **[GWAS Catalog](https://www.ebi.ac.uk/gwas/)**.
- Obtain **credible sets** from the **[Open Targets Platform](https://platform.opentargets.org/)**.  
- Gather **public scRNA-seq** datasets from healthy and diseased skin.  

### 2️) Integration & Analysis  
- Calculate Beta values using *mtag_munge.py* in *CELLECT-LDSC*. For ease, have an input file that looks like **[GWAS input](https://github.com/annavpo/gwasXsinglecell_OT_hackathon/blob/main/GWAS_sumstats_preprocessing)** 
- Estimate cell-type expression specificity score using **CELLEX**.  
- Perform genetic prioritisation using **CELLECT-MAGMA** or **CELLECT-LDSC**.


### 3️) Output  
- List **disease-relevant/etiologic cell types** per condition.
- Cell-type specificity scores for prioritised targets
- Visualisation and summary reports
  
---

## Resources

| Category | Tools / Libraries |
|-----------|-------------------|
| **Single-cell analysis** | 🧫 [Scanpy](https://scanpy.readthedocs.io/) |
| **GWAS–single-cell integration** | [CELLECT](https://github.com/perslab/CELLECT), [CELLEX](https://github.com/perslab/CELLEX)
| **Data sources** | 🌐 [GWAS Catalog](https://www.ebi.ac.uk/gwas/), [Open Targets Platform](https://platform.opentargets.org/), [Public scRNA-seq data from inflammatory skin diseases](https://developmental.cellatlas.io/studies/diseased-skin) |
| **Language** | 🐍 Python (scanpy, Jupyter, CELLEX, CELLECT) |
| Google Cloud | Vertex AI |

---

## Outcome

- Ranked list of **pathogenic cell types** for psoriasis and eczema.  
- **Cell-type specificity scores** for target prioritisation.  
- A prototype **Open Targets cell type specificity evidence feature** integrating these results.  


