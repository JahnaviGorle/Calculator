# Handwritten Digit Recognition (MATLAB)

This project is a handwritten digit recognizer built in **MATLAB** using **HOG features** and an **SVM-based ECOC classifier**.  
It supports three workflows:
1. **Training** a classifier (`train.m`)
2. **Testing** on Kaggle’s `test.csv` (`test.m`)
3. **Single image prediction** (`singletesting.m`)

---

## 📂 Files

- `train.m` → Trains the model on `train.csv` and saves `Classifier.mat`
- `test.m` → Loads `Classifier.mat`, predicts labels for `test.csv`, saves `Upload.csv`
- `singletesting.m` → Loads `Classifier.mat`, lets you select a digit image (`.png/.jpg/.bmp`) and predicts its class

---

## ⚙️ Requirements

- MATLAB R2018a or newer  
- **Toolboxes**:  
  - Statistics and Machine Learning Toolbox  
  - Image Processing Toolbox  

---

## 🚀 How to Run

### 1. Training
Run:
```matlab
train
