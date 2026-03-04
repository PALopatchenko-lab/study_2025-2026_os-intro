---
## Front matter
lang: ru-RU
title: Лабораторная работа №1
subtitle: Установка ОС Linux (Fedora Sway) в VirtualBox
author:
  - Лопатченко Полина Андреевна
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 2026-03-04
date-format: "YYYY-MM-DD"

babel-lang: russian
babel-otherlangs: english

toc: false
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis

pdf-engine: xelatex
header-includes:
  - \metroset{progressbar=frametitle,sectionpage=none,numbering=fraction}
  - \usepackage{fontspec}
  - \usepackage{polyglossia}
  - \setdefaultlanguage{russian}
  - \setotherlanguage{english}
  - \defaultfontfeatures{Ligatures=TeX}
  - \setsansfont{DejaVu Sans}
  - \setmainfont{DejaVu Serif}
  - \setmonofont{DejaVu Sans Mono}
---

# Информация

## Докладчик
:::::::::::::: {.columns align=center}
::: {.column width="70%"}
  * Лопатченко Полина Андреевна
  * Студент НКАбд-04-25
  * Российский университет дружбы народов
  * [1032253529@rudn.ru](mailto:1032253529@rudn.ru)
:::
::: {.column width="30%"}
:::
::::::::::::::

## Цель и задачи
**Цель:** установить Fedora Sway в VirtualBox и выполнить базовую настройку системы.

**Задачи:**

- создать виртуальную машину и установить ОС;
- выполнить первичную настройку (обновления, инструменты, SELinux, раскладка, hostname);
- установить ПО для подготовки отчётов (`pandoc`, TeX Live);
- получить системную информацию через `dmesg`.

# Ход работы

## 1) Создание виртуальной машины
Создал новую виртуальную машину в графическом интерфейсе и задал имя ВМ по логину.

![Создание новой виртуальной машины](image/1.png){#fig-001 width=30%}

## 2) Настройка ресурсов
Указал объём оперативной памяти и размер диска 80 ГБ.

\begin{center}
\begin{minipage}{0.30\linewidth}
\centering
\includegraphics[width=\linewidth]{image/2.png}\\
\footnotesize Память виртуальной машины
\end{minipage}\hfill
\begin{minipage}{0.30\linewidth}
\centering
\includegraphics[width=\linewidth]{image/4.png}\\
\footnotesize Размер диска 80 ГБ
\end{minipage}
\end{center}

## 3) Подключение установочного ISO
Подключил ISO-образ Fedora Sway.

![Подключение ISO Fedora Sway](image/2.png){#fig-002 width=40%}

## 4) Параметры загрузки и виртуализации
Включила ускорение 3D/контроллер VMSVGA и поддержку UEFI.
## 5) Установка Fedora Sway
Установила систему на диск и завершил установку.

![Завершение установки Fedora Sway](image/2.png){#fig-002 width=78%}

# Первичная настройка Fedora

## Обновление и инструменты
Установил `development-tools` и обновил пакеты.

![Обновление пакетов](image/3.png){#fig-003 width=60%}

## SELinux и hostname
Перевёл SELinux в режим `permissive` и установил имя хоста по требованиям именования.

![SELinux permissive](image/5.png){#fig-005 width=30%}

![Установка hostname](image/6.png){#fig-006 width=30%}

## Раскладка клавиатуры (Sway + system)
Создала пользовательский конфиг Sway и отредактировал системный конфиг клавиатуры.

![Системный конфиг клавиатуры](image/4.png){#fig-004 width=60%}

# ПО для отчётов и обмен файлами

## Pandoc и TeX Live
Установила `pandoc` и TeX Live для сборки PDF.

![Установка pandoc](image/7.png){#fig-007 width=40%}

![Установка TeX Live](image/8.png){#fig-008 width=40%}

# Домашнее задание (dmesg)

## Ключевая системная информация (1/3)
Определила версию ядра Linux. Определила частоту и модель процессора.

![Версия ядра Linux](image/9.png){#fig-009 width=92%}

![Частота процессора](image/9.png){#fig-009 width=92%}

![Модель процессора](image/9.png){#fig-009 width=92%}

## Ключевая системная информация (2/3)
Определила объём доступной памяти и тип гипервизора.

![Доступная оперативная память](image/10.png){#fig-010 width=92%}

![Тип гипервизора](image/11.png){#fig-011 width=92%}

## Ключевая системная информация (3/3)
Определил тип файловой системы корневого раздела и последовательность монтирования ФС.

\begin{center}
\begin{minipage}{0.48\linewidth}
\centering
\includegraphics[width=\linewidth]{image/11.png}\\
\footnotesize Тип ФС корневого раздела
\end{minipage}\hfill
\begin{minipage}{0.48\linewidth}
\centering
\includegraphics[width=\linewidth]{image/10.png}\\
\footnotesize Последовательность монтирования ФС
\end{minipage}
\end{center}


# Итоги

## Выводы
- Создана ВМ в VirtualBox и установлена Fedora Sway.
- Выполнена первичная настройка: обновления, инструменты, SELinux, раскладка, hostname.
- Установлены `pandoc` и TeX Live; настроена общая папка для обмена файлами.
- По `dmesg` получены параметры загрузки и сведения об окружении (CPU, память, гипервизор, ФС).
