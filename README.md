# Dynamicky generované faktury
Projekt je zkráceně generátor dynamických faktur vytvořený pomocí **OpTeXu**. Projekt umožňuje vytvářet PDF faktury z externích dat uložených ve formátu JSON/CSV, která slouží pro automatické číslování faktur, používání dat o odběratelích, dodavatelích, apod.

## Hlavní funkce projektu
- dynamicky generováné PDF faktury.
- načítání fakturačních dat z externího JSON/CSV souboru.
- automatický výpočet cen položek a celkové částky.
- automatické generování čísla faktury ve formátu `YYYYMMNNNN`.
- sestavení projektu pomocí Makefile.

## Struktura projektu
```text
project/
├── build/
│   ├── YYYYMMNNNN_invoice.pdf
│   ├── YYYYMMNNNN_invoice.log
│   └── YYYYMMNNNN_invoice.ref
│
├── data/
│   ├── invoice.json
│   └── counter.json
│
├── src/
│   ├── invoice.tex
│   └── style.tex
│
├── Makefile
└── README.md
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

## Číslování faktur

Číslo faktury je generováno automaticky:

```text
YYYYMMNNNN
```

Například:

```text
2026050001

2026 → rok
05   → měsíc
0001 → první faktura v měsíci
```

## Technologie

- OpTeX
- LuaTeX
- Lua
- JSON/CSV
- Makefile

## Autor

**Ondřej Faltin**
 
- faltion1@cvut.cz
- Semestrální práce z TeX, na ČVUT FIT, 2026  