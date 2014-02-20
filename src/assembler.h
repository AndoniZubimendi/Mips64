#ifndef __ASSEMBLER_H
#define __ASSEMBLER_H

typedef struct {
    char *symb;
    BYTE type;
    WORD32 value;
} symbol_table;

BOOL getsym(symbol_table *,int,const char *&,WORD32 *);
int fgetreg(const char *&);
int getreg(const char *&);
int is_symbol(const char *);
BOOL getfullnum(const char *&,WORD64 *);
BOOL getnum(const char *&,WORD32 *);
BOOL delimiter(int);
const char *skip(const char *,char);
const char *skipover(const char *,char);
const char *eatwhite(const char *);
BOOL getdouble(const char *&ptr,double *);

#endif