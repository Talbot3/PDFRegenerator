# Regenerator PDF

![pdf_regenerator_icon](./asset/pdf_regenerator.png)

![Stable Version](https://img.shields.io/pypi/v/pdf-regenerator?label=stable)
![Python Versions](https://img.shields.io/pypi/pyversions/pdf-regenerator)
[![Download Stats](https://img.shields.io/pypi/dm/pdf-regenerator)](https://pypistats.org/packages/pdf-regenerator)

Regenerator PDF 是一款开源工具，可帮助您将PDF文档 转换为有辅助信息的PDF。它可以执行以下功能：
- **标记到索引单元**：将 PDF 文档中的标记转换为索引单元，以便于快速导航和搜索。
Regenerator PDF 是开源且免费使用的，使其成为学生、研究人员和专业人士的宝贵工具。它兼容 Windows、Mac 和 Linux 操作系统。 

## 安装

```
pip install pdf-regenerator
```

## 生成PDF目录

```
python3 -m pdf-regenerator $YOU_PDF_PATH $YOU_OUT_FILE_DIR
```

## 测试命令

```bash
python3 -m pdf_regenerator /Users/lilisi/PDFRegenerator/tests/asset/word2vec.pdf      
```