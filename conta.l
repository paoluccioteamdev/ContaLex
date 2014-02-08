%{
    int nchar, nword, nline;
%}
%%
\n         { nline++; nchar++; }
[^ \t\n]+  { nword++, nchar += yyleng; }
.          { nchar++; }
%%
int main(void) {
    yyin = fopen("testo.txt", "r");
    yylex();
    printf("%d\t%d\t%d\n", nchar, nword, nline);
    fclose(yyin);

    return 0;
}

