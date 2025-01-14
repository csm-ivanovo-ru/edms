# Расширения конфигурации и документация по использованию 1С:Документооборот

Данный репозиторий содержит расширения конфигурации 1С:Документооборот,
созданные для целей адаптации продукта для нужд учреждения.

## Описание расширений

Описание расширения формируется с помощью сервиса [ReadTheDocs](https://readthedocs.org).

[![Documentation build status](https://readthedocs.org/projects/edms/badge/?version=latest&style=plastic)](https://edms.readthedocs.io/)

## Внесение изменений в расширения

Используем [precommit1c][].
Порядок действий по фиксации изменений в расширениях следующий:

- пишем новую версию расширения в каталог extensions
- добавляем расширение в индекс git: `git add extensions/\*.cfe`,
 или же указываем конкретный файл
- собственно, commit: `git commit`.
 При этом precommit1c разберёт добавленные в индекс расширения конфигурации,
 добавит в индекс "исходные" файлы расширений, а сами файлы расширений из индекса
 уберёт.

Безусловно, удобнее выполнять эти действия с использованием [VSCode][].

## О подготовке рабочего места

Подготовка рабочего места заключается в исполнении (с правами администратора)
файла `install\install.cmd`.
**Текущим должен быть корневой каталог репозитория!**
Потребуется несколько перезагрузок.
Выполнять вплоть до отсутствия ошибок при выполнении
(обработки ошибок на текущий момент нет).

Будут установлены:

- [chocolatey][] (менеджер пакетов)
- [git][]
- [VSCode][]
- [OneScript][]
- ряд пакетов под OneScript
- и git precommit hook в репозиторий проекта

### Полезные ссылки

- https://infostart.ru/public/864097/
- https://infostart.ru/public/721600/
- https://github.com/alexpetrov/xdd-bootstrap-1C

[chocolatey]: https://chocolatey.org
[git]: https://git-scm.com
[VSCode]: https://code.visualstudio.com
[OneScript]: http://oscript.io
[precommit1c]: https://github.com/xDrivenDevelopment/precommit1c
