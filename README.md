# Kunitz Domain HMM Project
This repository contains the workflow of building a Profile Hidden Markov Model (HMM) for the Kunitz-type protease inhibitor domain. 

This project was developed as part of the Laboratory of Bioinformatics I course at the University of Bologna.

## Project Aim
Kunitz domains are highly conserved and functionally important protein regions that specifically inhibit serine proteases. The goal of this study is to develop and validate a selective Hidden Markov Model that captures the position-specific conservation of Kunitz domains.

## Project Overview
1) Identfying and retrieving of Kunitz-domain structures from the Protein Data Bank.
2) Redundancy filtering with CD-HIT.
3) Multiple sequence alignment using Clustal Omega.
4) Construction of a Profile Hidden Markov Model using HMMER.
5) Creation of independent positive and negative test sets from UniProt / Swiss-Prot.
6) Performance evaluation.

## Prerequisities
- Python3 (with necessary libraries)
- CD-HIT
- BLAST+
- HMMER
- Clustal Omega
  
## Key Results

The model was successfully trained on 23 non-redundant sequences and validated against an independent dataset.

**Optimal Threshold:** An E-value of **3e-5** was selected as the optimal threshold for classification.

**Performance Metrics:** The model achieved near-perfect performance with highly imbalanced data:
- **Accuracy:** 0.99999477
- **Matthews Correlation Coefficient (MCC):** 0.9959277
  
**Classification:** The model successfully identified Kunitz domains with only **2 False Positives (FP)** and **1 False Negative (FN)** across the entire test set.
