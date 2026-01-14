# Скрипт для сборки PDF из markdown файлов
# Запуск: .\build-pdf.ps1

Write-Host "Собираю PDF..." -ForegroundColor Cyan

pandoc answers/teoriya_polnye_otvety.md answers/vyviody_formul_polnye.md answers/zadachi_polnye_reshenia.md `
    -o Answers.pdf `
    --pdf-engine=xelatex `
    -V geometry:margin=2cm `
    -V mainfont="Cambria" `
    -V mathfont="Cambria Math" `
    --from markdown+tex_math_single_backslash

if ($LASTEXITCODE -eq 0) {
    Write-Host "PDF успешно создан: Answers.pdf" -ForegroundColor Green
    $file = Get-Item Answers.pdf
    Write-Host "Размер: $([math]::Round($file.Length / 1KB, 1)) КБ" -ForegroundColor Gray
} else {
    Write-Host "Ошибка при создании PDF" -ForegroundColor Red
}
