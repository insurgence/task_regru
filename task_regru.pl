=com

Задание взято с сайта reg.ru
Создать утилиту командной строки, которая обрабатывает данные способом, описанным ниже, и возвращает результат в STDOUT(файл).

ВХОДНЫЕ ДАННЫЕ:
Текстовый файл с email-адресами (разделитель — перевод строки). Пример:
info@mail.ru
support@vk.com
ddd@rambler.ru
roxette@mail.ru
sdfsdf@@@@@rdfdf
example@localhost
СУТЬ ОБРАБОТКИ:
Группировка адресов по имени домена, подсчёт email-адресов для каждого домена.
ВЫХОДНЫЕ ДАННЫЕ:
Имена доменов и количество адресов в каждом домене. Сортировка по количеству адресов в домене, по убыванию.
Отдельной строкой — количество невалидных адресов. Пример:
mail.ru	: 2
vk.com	: 1
rambler.ru: 1
INVALID	1

=cut

#!perl

use strict;
use warnings;

my @arr = ();
my %hash = ();
my $value = 1;
my $invalid = 0;
my $k;
my $v;

open(LIST, '<', 'list_email.txt');
	@arr = <LIST>;
close(LIST);

