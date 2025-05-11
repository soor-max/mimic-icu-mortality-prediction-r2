
# ICU Mortality Prediction using MIMIC-III Dataset
（项目作者：张兆华 / Lukas Zhang）

---

## 📌 项目简介 | Project Summary | Projektübersicht

### 🇨🇳 中文简介
本项目基于 MIMIC-III 临床数据库，使用 R 语言构建了 ICU（重症监护室）患者的死亡预测模型。我们应用逻辑回归、随机森林和 XGBoost 三种主流算法进行建模，并使用 AUC 曲线和 ROC 图进行性能评估。本项目旨在开发一种早期风险评估工具，为临床决策提供数据支持。

### 🇬🇧 English Summary
This project builds ICU mortality prediction models using the MIMIC-III clinical dataset in R. We employ Logistic Regression, Random Forest, and XGBoost for model training and evaluate their performance via ROC curves and AUC scores. The goal is to support early clinical risk assessment with interpretable, data-driven tools.

### 🇩🇪 Deutsche Zusammenfassung
In diesem Projekt werden Modelle zur Vorhersage der Mortalität auf Intensivstationen (ICU) mithilfe des MIMIC-III-Datensatzes in R erstellt. Wir verwenden logistische Regression, Random Forest und XGBoost zur Modellierung und bewerten die Leistung mit ROC-Kurven und AUC-Werten. Ziel ist es, klinische Entscheidungen durch frühzeitige Risikobewertung zu unterstützen.

---

## 🔍 项目信息 | Project Details | Projektdetails

- 📊 数据来源：MIMIC-III（公开 ICU 数据库）
- 💻 编程语言：R 语言
- 🧠 模型算法：Logistic Regression, Random Forest, XGBoost
- 📈 评估指标：AUC, ROC Curve
- 🧪 输出文件：`predictions.csv`、`roc_curve.png`

---

## 👤 作者信息 | Author | Autor

- 中文名：张兆华
- 德语名：Lukas Zhang
- 学校：浙江财经大学
- 邮箱：zhaohuazhang000@gmail.com
- GitHub: [@soor-max](https://github.com/soor-max)
- 研究方向 / Research Focus / Forschungsschwerpunkte：
  - 临床数据挖掘
  - ICU 预后建模
  - 医学人工智能
  - 多语言可解释性研究
  - Clinical AI in ICU prognosis
  - Interpretable Machine Learning (XAI)
  - Medizinische KI & maschinelles Lernen im Gesundheitswesen

---

## 📁 项目结构 | Folder Structure

```
mimic-icu-mortality-prediction-r2/
├── data/              # 数据文件夹（含 cleaned_data.csv）
├── output/            # 模型输出（CSV 结果和 ROC 图）
├── src/               # 训练脚本和函数
├── notebooks/         # R Markdown 报告文件
├── .gitignore         # Git 忽略规则
├── README.md          # 项目说明
```

---

## 🚀 快速运行 | Quickstart | Schnellstart

### 步骤 / Steps / Schritte：

1. 克隆仓库 / Clone repository:
```bash
git clone https://github.com/soor-max/mimic-icu-mortality-prediction-r2.git
```

2. 在 RStudio 中打开 `src/model_final_fixed.R` 并运行：
```r
source("src/model_final_fixed.R")
```

3. 输出文件将保存在 `output/` 文件夹。

---

## 📜 引用方式 | Citation

如果您在研究中使用了此代码库，请引用本项目：
```
Zhang, Z. (2025). ICU Mortality Prediction using MIMIC-III with R. GitHub repository: https://github.com/soor-max/mimic-icu-mortality-prediction-r2
```

---

## 📬 联系方式 | Contact

如有合作或咨询，请通过邮箱联系作者：  
📧 zhaohuazhang000@gmail.com

---
