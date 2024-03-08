import  fitz  # PyMuPDF
from reportlab.pdfgen import canvas
from PyPDF2 import PdfReader, PdfWriter
import io
import click

@click.command()
@click.argument('pdf_path', type=click.Path(exists=True))
def create_pdf_with_contents(pdf_path):
    doc = fitz.open(pdf_path)
    toc = []
    titles = []

    for page_num in range(len(doc)):
        page = doc.load_page(page_num)
        text = page.get_text("text").split('\n')[0].strip()
        if text:
            toc.append((page_num, text))
            titles.append(text)

    packet = io.BytesIO()
    c = canvas.Canvas(packet)
    for i, title in enumerate(titles):
        print(title)
        c.drawString(72, 800 - i * 10, f"{title} ...... Page {toc[i][0] + 1}")
    c.save()

    packet.seek(0)
    new_pdf = PdfReader(packet) # 更新类名
    output = PdfWriter() # 更新类名

    output.add_page(new_pdf.pages[0]) # 更新调用方式

    existing_pdf = PdfReader(open(pdf_path, "rb")) # 更新类名
    for i in range(len(existing_pdf.pages)):
        output.add_page(existing_pdf.pages[i]) # 更新调用方式

    output_path = "output_with_contents.pdf"
    with open(output_path, "wb") as outputStream:
        output.write(outputStream)
if __name__ == "__main__":
    create_pdf_with_contents()