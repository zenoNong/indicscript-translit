**IndicScript-Translit** is a high-accuracy, bidirectional transliteration engine designed to convert text between **Bengali script** and **Meitei Mayek**, two Indic scripts with limited digital resources. Based on the surrounding page content, this project is a student-led initiative aimed at showcasing full-stack machine learning capabilities while solving a real-world linguistic challenge.

---

### 🧠 Core Concept

IndicScript-Translit is built around a **Transformer-based Neural Machine Translation (NMT) model**, fine-tuned specifically for transliteration tasks. Unlike traditional phoneme-based systems, it uses a **grapheme-to-grapheme approach**, which has been shown in academic research to outperform phoneme-based methods for Manipuri transliteration.

---

### 🔧 Technical Stack

| Component            | Purpose                                                                 |
|----------------------|-------------------------------------------------------------------------|
| **Python & PyTorch** | Core programming and deep learning framework                           |
| **HuggingFace**      | Pre-trained multilingual Transformer models (e.g., mT5, NLLB)           |
| **EasyOCR**          | Custom-trained OCR engine for extracting text from images and PDFs      |
| **FastAPI**          | RESTful API for serving the transliteration model                      |
| **Docker**           | Containerization for scalable deployment                               |

---

### 📦 Features

- **Bidirectional Transliteration**: Supports both Bengali → Meitei Mayek and Meitei Mayek → Bengali.
- **Multi-Modal Input**: Accepts direct text, scanned documents, and image-based inputs via OCR.
- **Character Error Rate (CER) < 3%**: A benchmark goal indicating high transliteration accuracy.
- **End-to-End Deployment**: Packaged as a REST API, deployable on platforms like Hugging Face Spaces.

---

### 🎓 Why It’s Valuable for a Student Project

- **Real-World Impact**: Addresses a genuine need for script interoperability in low-resource languages.
- **Skill Showcase**: Demonstrates NLP, OCR, model fine-tuning, API development, and MLOps.
- **Cost-Efficient**: Built entirely with free and open-source tools; training can be done on Google Colab.

---

### 📚 Research-Driven Design

The project is grounded in academic findings:
- Grapheme-based models outperform phoneme-based ones for Manipuri.
- NMT systems significantly outperform older SMT systems.
- Rule-based bootstrapping and synthetic data generation are effective for low-resource setups.

---
