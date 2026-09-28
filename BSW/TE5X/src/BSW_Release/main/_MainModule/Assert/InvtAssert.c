#include "InvtAssert.h"
#include "IfxCpu_Intrinsics.h"

typedef struct {
   const char *file;
   int         line;
   const char *expr;
}InvtAssertInfo_t;

volatile InvtAssertInfo_t InvtAssert_LastAssert = {0, 0, 0};

void InvtAssert_vidFailed(const char *file, int line, const char *expr)
{
   InvtAssert_LastAssert.file = file;
   InvtAssert_LastAssert.line = line;
   InvtAssert_LastAssert.expr = expr;

   __debug();
   while (1);
}
