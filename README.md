# Dynamicky generované faktury
Projekt je zkráceně generátor dynamických faktur vytvořený pomocí **OpTeXu**. Projekt umožňuje vytvářet PDF faktury z externích dat uložených ve formátu JSON, která slouží pro používání dat o odběratelích, dodavatelích, apod.

## Hlavní funkce projektu
- dynamické generování PDF faktury
- načítání fakturačních údajů z JSON souboru
- oddělení datové a prezentační vrstvy
- dynamický počet položek faktury
- automatický výpočet ceny jednotlivých položek
- automatický výpočet celkové částky faktury
- podpora údajů:
  - dodavatel
  - odběratel
  - platební informace
  - splatnost
  - položky faktury
- sestavení projektu pomocí Makefile

## Architektura
### Struktura projektu
```text
project/
│
├── build/
│   ├── invoice.pdf
│   └── invoice.log
│
├── data/
│   ├── data.json
│   └── template.json
│
├── src/
│   ├── invoice.tex
│   └── data.tex
│
├── Makefile
├── .gitignore
└── README.md
```

### TeX soubory
`src/invoice.tex` -> Hlavní OpTeX soubor obsahující vzhled faktury.
Obsahuje:
- rozložení stránky,
- typografii,
- tabulku položek,
- platební blok,
- výsledný vzhled PDF.

<br>

`src/data.tex` -> Datová vrstva projektu.
Zajišťuje:
- načtení JSON souboru,
- převod JSON hodnot na OpTeX makra,
- výpočet cen položek,
- výpočet celkové ceny pomocí LuaTeX.

### Vstupní data
Data faktury jsou uložená v
```text
data/data.json
```

## Generování faktury
Spuštění:

```bash
make
```

Výstupní PDF bude vytvořeno ve složce:

```text
build/
```

## Technologie

- OpTeX
- LuaTeX
- Lua
- JSON
- Makefile

## Autor

**Ondřej Faltin**
 
- faltion1@cvut.cz
- Semestrální práce z TeX, na ČVUT FIT, 2026  