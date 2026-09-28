#ifndef __INVT_ASSERT_H_
#define __INVT_ASSERT_H_

void InvtAssert_vidFailed(const char *file, int line, const char *expr);

#ifndef __INVT_ASSERT_NDEBUG_
   #define INVT_ASSERT(expr) \
      do { \
         if (!(expr)) { \
               InvtAssert_vidFailed(__FILE__, __LINE__, #expr); \
         } \
      } while (0)
#else
   #define INVT_ASSERT(expr) ((void)0)
#endif

#define INVT_STATIC_ASSERT(expr, msg) \
   _INVT_STATIC_ASSERT(expr, __LINE__)
#define _INVT_STATIC_ASSERT(expr, line) \
   __INVT_STATIC_ASSERT(expr, line)
#define __INVT_STATIC_ASSERT(expr, line) \
   typedef char static_assert_##line[(expr) ? 1 : -1]


#define STATIC_ASSERT(condition, msg) \
    typedef char static_assert_##msg[(condition) ? 1 : -1]

#define ASSERT_ARRAY_SIZE(arr, expected_size) \
    STATIC_ASSERT( \
        sizeof(arr) / sizeof((arr)[0]) == (expected_size), \
        array_size_mismatch \
    )


#endif /* __INVT_ASSERT_H_ */
