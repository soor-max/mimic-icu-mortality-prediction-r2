# ICU Mortality Prediction using MIMIC-III (R)

## 🧠 项目目标
使用 MIMIC-III 数据集，基于 ICU 患者的临床特征（年龄、生命体征、化验指标等）构建死亡率预测模型。

## 📂 项目结构
- `data/`: 存放原始和处理后的数据
- `notebooks/`: RMarkdown 或分析代码记录
- `src/`: 模型训练和数据处理脚本
- `output/`: 模型输出和可视化结果

## 🔧 使用方法
1. 克隆仓库：
```bash
git clone https://github.com/soor-max/mimic-icu-mortality-prediction-r.git
```

2. 安装必要的 R 包：
```r
install.packages(c("tidyverse", "caret", "randomForest", "xgboost", "pROC"))
```

3. 运行 `src/model.R` 文件进行建模。

## 📊 模型方法
- Logistic Regression
- Random Forest
- XGBoost

## 📈 模型评估
- ROC 曲线
- AUC 值
- 混淆矩阵

## 🔒 数据来源
本项目使用 MIMIC-III 数据集，请访问 https://physionet.org/content/mimiciii/1.4/ 并通过认证后下载。

## 👩‍⚕️ 项目意义
为 ICU 医护人员提供早期死亡风险预警，提高临床决策效率。

📝 **作者信息**

* 作者：张兆华
* 学校：浙江财经大学，应用统计学专业
* 研究方向：医学统计学、机器学习、生存分析
* 联系方式：[zhaohuazhang000@gmail.com](mailto:zhaohuazhang000@gmail.com)

🔒 **版权声明**
本项目仅用于学术研究目的，禁止将数据和代码用于商业用途。
