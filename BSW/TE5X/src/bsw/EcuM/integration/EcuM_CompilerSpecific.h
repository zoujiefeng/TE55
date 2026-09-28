
#ifndef ECUM_COMPILERSPECIFIC_H
#define ECUM_COMPILERSPECIFIC_H

/*The below macro 'NORETURN' defines the compiler attribute to declare a
function which would not return its control back to the caller.*/
/* The integrator could define this macro based on their compiler specific attribute
or may undefine this macro if not applicable.*/

#ifndef NORETURN
#define NORETURN __attribute__ ((__noreturn__))
#endif

#endif /* ECUM_COMPILERSPECIFIC_H*/


