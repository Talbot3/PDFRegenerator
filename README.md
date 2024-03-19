# PDF Regenerator 

![pdf_regenerator_icon](./asset/pdf_regenerator.png)

[![Stable Version](https://img.shields.io/pypi/v/pdf-regenerator?label=stable)][PyPI Releases]
![Python Versions](https://img.shields.io/pypi/pyversions/pdf-regenerator)
[![Download Stats](https://img.shields.io/pypi/dm/pdf-regenerator)](https://pypistats.org/packages/pdf-regenerator)
[![GitHub last commit](https://img.shields.io/github/last-commit/Talbot3/PDFRegenerator)](PDFRegenerator)
PDF Regenerator是开源且免费使用的，使其成为学生、研究人员和专业人士的宝贵工具。它兼容 Windows、Mac 和 Linux 操作系统。 

PDF Regenerator可帮助您将PDF文档 转换为有辅助信息的PDF。
它可以执行以下功能：

- **标记到索引单元**：将 PDF 文档中的标记转换为索引单元，以便于快速导航和搜索。

## 免费功能
> 开发中
- [ ] **PPT或PPTX转PDF**: 将PPT(X)转为PDF,方便学术研究者常常能够回顾知识
> 由于纯Python实现需要有ppt渲染引擎支持，目前开源社区无有效的解决方案，除了商用的库有支持。

## 付费功能
> 开发中
___
- [ ] PDF图片超清重新生成
- [ ] PDF移除只读PDF重新生成
- [ ] PDF签名重新生成

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
python3 -m pdf-regenerator /Users/lilisi/PDFRegenerator/tests/asset/word2vec.pdf      
```

## 资源
* [Releases][PyPI Releases]

  [PyPI Releases]: https://pypi.org/project/pdf-regenerator/#history
  [PDFRegenerator]: https://github.com/Talbot3/PDFRegenerator