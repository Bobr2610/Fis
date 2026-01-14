# Ответы к экзамену по физике

## Содержание

1. [Теория (полные ответы)](./teoriya_polnye_otvety.md)
2. [Выводы формул](./vyviody_formul_polnye.md)
3. [Задачи с решениями](./zadachi_polnye_reshenia.md)

---

## Генерация PDF

Для создания PDF запустите в терминале:

```powershell
cd "C:\MAI\3_sem\Exams\Fis"
pandoc teoriya_polnye_otvety.md vyviody_formul_polnye.md zadachi_polnye_reshenia.md -o Answers.pdf --pdf-engine=xelatex -V geometry:margin=2cm -V mainfont="Arial" --from markdown+tex_math_single_backslash
```

Или запустите скрипт: `.\build-pdf.ps1`
