requires 'perl', '5.008001';
requires 'Pod::Markdown';
on 'test' => sub {
    requires 'File::Spec';
    requires 'FindBin';
    requires 'Test::More', '0.98';
};

