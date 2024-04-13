# Introduction_R_and_data_visualization
Материалы для сайта семинара, проводимого центром охраны диких животных. 


# Как работать с кодом этого сайта

Cайт построен с помощью RMarkdown. Подробнее можно прочитать здесь http://rmarkdown.rstudio.com/rmarkdown_websites.html

ДАнный репозиторий должен быть склонирован вам на локальную машниу


__Работа с Github__

Перед началом работы --- __git pull__ (это делается, например, в Github Desktop или можно прямо из Studio, где есть специальная закладочка Git).

После каждого осмысленно завершенного действия (например, что-то поменяли в станицах этого сайта) делаем __commit___(это делается, например, в Github Desktop или можно прямо из Studio, где есть специальная закладочка Git).

После того, как поработали (сделали несколько локальных коммитов) --- __git pull__

И только потом уже (возможно, после разрешения конфликтов слияния) --- __git push__


__Работа с кодами страничек сайта___

__В презентации лучше вставлять ссылки на данные на github__. Например, так

```
library(downloader)

# в рабочем каталоге создаем суб-директорию для данных,
# если ее еще не было 
if(!dir.exists("data")) dir.create("data")

# скачиваем файл
download(
  url = "https://varmara.github.io/mathmethr/data/minch.xls", 
  destfile = "data/minch.xls")
```

__Если пишем презентации в ioslides (рекомендуется)__

## Обновление ioslides презентации --- из командной строки

Если кодировка файла совпадает с кодировкой системы

```
rmarkdown::render("02_filename.Rmd", output_format = "ioslides_presentation")
```

Если кодировка исходного файла другая --- указываем правильную
```
rmarkdown::render("02_filename.Rmd", output_format = "ioslides_presentation", encoding = "Windows-1251")

# или

rmarkdown::render("02_filename.Rmd", output_format = "ioslides_presentation", encoding = "Utf-8")
```

## Генерация кода для студентов из Rmd--- из командной строки

- Отметьте ненужные студентам чанки опцией `purl=FALSE`
- Экстрагируйте код из файла. Весь обычный текст будет закомментирован. ВНИМАНИЕ: пока нам не лень, код помечаем словом `code` после номера занятия: у многих студентов скрыты расширения файлов.

```
purl("02_filename.Rmd", documentation = 2, output = "02_code_filename.R")
```
- Удалите вручную ненужный текст, решения задач. Оставьте только необходимые заголовки.
- Проверьте,  есть ли ссылка на файл с кодом в файле `lectures.Rmd`.
- Закомитьте (и запушьте, если надо) изменения


## Обновление простой html-страницы --- из командной строки

```
rmarkdown::render_site("filename.Rmd")
```
Если кодировка исходного файла не совпадает с кодировкой системы --- указываем его правильную кодировку

```
rmarkdown::render_site("filename.Rmd", encoding = "Windows-1251")

# или

rmarkdown::render_site("filename.Rmd", encoding = "Utf-8")
```

## Обновление сайта целиком

  - через интерфейс RStudio --- на вкладке _Build_
  - из командной строки `rmarkdown::render_site()`

__Осторожно!__ Это может не сработать, т.к. у нас есть файлы в разных кодировках. Лучше обновлять постранично.

## Публикация сайта

Сайт располагается на github pages. Чтобы изменения появились на сайте, достаточно запушить свои коммиты в бренч master

```
git push origin master
```


