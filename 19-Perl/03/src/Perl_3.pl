#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';
use Scalar::Util qw(weaken);

# Слайд 1: Титульный слайд (примеры переменных и хеша)
{
    my @numbers = (1, 2, 3, 4, 5);
    my %config = (
        language => "Perl",
        version  => 5,
    );
}

# Слайд 2: Обобщённые типы (передача ссылки на массив в подпрограмму)
{
    sub first_element {
        my ($items) = @_;
        return $items->[0];
    }

    my @numbers = (10, 20, 30);
    print first_element(\@numbers), "\n";
}

# Слайд 3: Как создавать повторно используемые структуры (анонимный массив)
{
    my $numbers = [10, 20, 30];

    sub get_item {
        my ($items, $index) = @_;
        return $items->[$index];
    }

    print get_item($numbers, 1), "\n";
}

# Слайд 4: Коллекции - Массив
{
    my @colors = ("red", "green", "blue");
    push @colors, "black";
    my $first = $colors[0];

    for my $color (@colors) {
        print "$color\n";
    }
}

# Слайд 5: Коллекции - Хеши
{
    my %user = (
        name => "Alex",
        age  => 21,
    );
    print $user{name}, "\n";
    $user{city} = "Berlin";
}

# Слайд 6: Коллекции - Множества (моделирование через хеш)
{
    my %seen;
    $seen{"apple"} = 1;
    $seen{"pear"}  = 1;
    $seen{"apple"} = 1;

    print "apple exists\n"
        if exists $seen{"apple"};
}

# Слайд 7: Ввод-вывод - Консоль (STDIN, chomp, say)
# (Закомментировано интерактивное чтение, чтобы скрипт не блокировался при запуске в ожидании ввода)
=pod
{
    use strict;
    use warnings;
    use feature 'say';

    print "Enter your name: ";
    my $name = <STDIN>;
    chomp $name;
    say "Hello, $name!";
}
=cut

# Слайд 8: Ввод-вывод - Файлы (чтение из файла)
=pod
{
    use strict;
    use warnings;

    my $file = "data.txt";
    open my $fh, "<", $file
        or die "Cannot open $file: $!";

    while (my $line = <$fh>) {
        print $line;
    }

    close $fh
        or die "Cannot close $file: $!";
}
=cut

# Слайд 9: Ввод-вывод - Запись в файл (режим добавления >>)
=pod
{
    use strict;
    use warnings;

    open my $fh, ">>", "log.txt"
        or die "Cannot open log: $!";

    print {$fh} "Program started\n"
        or die "Cannot write log: $!";

    close $fh
        or die "Cannot close log: $!";
}
=cut

# Слайд 10: Конкурентность и параллелизм (fork и waitpid)
=pod
{
    use strict;
    use warnings;

    my $pid = fork();
    die "fork failed: $!"
        unless defined $pid;

    if ($pid == 0) {
        print "Child process\n";
        exit 0;
    }

    waitpid($pid, 0);
    print "Parent process\n";
}
=cut

# Слайд 11: Парадигмы - ООП (пакеты, bless, методы)
{
    package Person;

    sub new {
        my ($class, $name) = @_;
        my $self = { name => $name };
        return bless $self, $class;
    }

    sub greet {
        my ($self) = @_;
        return "Hello, $self->{name}";
    }

    package main;

    my $person = Person->new("Alex");
    print $person->greet(), "\n";
}

# Слайд 12: Парадигмы - Функциональный подход (map и grep)
{
    my @numbers = (1, 2, 3, 4, 5);
    my @squares = map { $_ * $_ }
                  grep { $_ % 2 == 0 }
                  @numbers;
    print "@squares\n";
}

# Слайд 13: Парадигмы - Протоколы и контракты (проверка метода через can)
{
    sub process_item {
        my ($object) = @_;
        die "Missing process method"
            unless $object->can("process");
        return $object->process();
    }
}

# Слайд 14: Специфические конструкции (регулярные выражения s/// и $_)
{
    my @words = ("perl", "java", "python");
    for (@words) {
        s/^/lang: /;
    }
    print "$_\n" for @words;
}

# Слайд 15: Контекст (скалярный и списочный контекст)
{
    my @numbers = (10, 20, 30);
    my $count = @numbers;
    my @copy  = @numbers;

    print "$count\n";
    print "@copy\n";
}

# Слайд 17: Управление памятью (циклические и слабые ссылки)
{
    use Scalar::Util qw(weaken);

    my $parent = {};
    my $child  = {};

    $parent->{child} = $child;
    $child->{parent} = $parent;

    weaken($child->{parent});
}