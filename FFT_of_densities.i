# 1 "FFT_of_densities.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "FFT_of_densities.c"



# 1 "/usr/include/stdlib.h" 1 3 4
# 24 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 374 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 385 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 386 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 375 "/usr/include/features.h" 2 3 4
# 398 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 399 "/usr/include/features.h" 2 3 4
# 25 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 64 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 65 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 2 3 4

union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "/usr/include/stdlib.h" 2 3 4
# 67 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 276 "/usr/include/stdlib.h" 3 4

extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ , __leaf__)) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}




__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ , __leaf__)) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}

# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 98 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 146 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 147 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 44 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 96 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 106 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);





# 1 "/usr/include/x86_64-linux-gnu/bits/select2.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/select2.h" 3 4
extern long int __fdelt_chk (long int __d);
extern long int __fdelt_warn (long int __d)
  __attribute__((__warning__ ("bit outside of fd_set selected")));
# 129 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 220 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_major (unsigned long long int __dev)
{
  return ((__dev >> 8) & 0xfff) | ((unsigned int) (__dev >> 32) & ~0xfff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_minor (unsigned long long int __dev)
{
  return (__dev & 0xff) | ((unsigned int) (__dev >> 12) & ~0xff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned long long int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_makedev (unsigned int __major, unsigned int __minor)
{
  return ((__minor & 0xff) | ((__major & 0xfff) << 8)
   | (((unsigned long long int) (__minor & ~0xff)) << 12)
   | (((unsigned long long int) (__major & ~0xfff)) << 32));
}


# 223 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    short __spins;
    short __elision;
    __pthread_list_t __list;
# 124 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    unsigned long int __pad1;
    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 211 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 315 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 513 "/usr/include/stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));













extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

# 578 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 620 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 642 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 663 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 712 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) __attribute__ ((__warn_unused_result__));

# 734 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));






typedef int (*__compar_fn_t) (const void *, const void *);
# 752 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) __attribute__ ((__warn_unused_result__));


# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;

  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 return (void *) __p;
    }

  return ((void *)0);
}
# 761 "/usr/include/stdlib.h" 2 3 4




extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 775 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));

# 812 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 899 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__warn_unused_result__));
# 951 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 3 4

extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ , __leaf__)) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}

# 956 "/usr/include/stdlib.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/stdlib.h" 3 4
extern char *__realpath_chk (const char *__restrict __name,
        char *__restrict __resolved,
        size_t __resolvedlen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__realpath_alias (const char *__restrict __name, char *__restrict __resolved) __asm__ ("" "realpath") __attribute__ ((__nothrow__ , __leaf__))

                                                 __attribute__ ((__warn_unused_result__));
extern char *__realpath_chk_warn (const char *__restrict __name, char *__restrict __resolved, size_t __resolvedlen) __asm__ ("" "__realpath_chk") __attribute__ ((__nothrow__ , __leaf__))


                                                __attribute__ ((__warn_unused_result__))
     __attribute__((__warning__ ("second argument of realpath must be either NULL or at " "least PATH_MAX bytes long buffer")))
                                      ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) realpath (const char *__restrict __name, char *__restrict __resolved)
{
  if (__builtin_object_size (__resolved, 2 > 1) != (size_t) -1)
    {




      return __realpath_chk (__name, __resolved, __builtin_object_size (__resolved, 2 > 1));
    }

  return __realpath_alias (__name, __resolved);
}


extern int __ptsname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ptsname_r") __attribute__ ((__nothrow__ , __leaf__))

     __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ptsname_r_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ptsname_r called with buflen bigger than " "size of buf")))
                   ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ptsname_r (int __fd, char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __ptsname_r_chk (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __ptsname_r_chk_warn (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __ptsname_r_alias (__fd, __buf, __buflen);
}


extern int __wctomb_chk (char *__s, wchar_t __wchar, size_t __buflen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __wctomb_alias (char *__s, wchar_t __wchar) __asm__ ("" "wctomb") __attribute__ ((__nothrow__ , __leaf__))
              __attribute__ ((__warn_unused_result__));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) int
__attribute__ ((__nothrow__ , __leaf__)) wctomb (char *__s, wchar_t __wchar)
{







  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1 && 16 > __builtin_object_size (__s, 2 > 1))
    return __wctomb_chk (__s, __wchar, __builtin_object_size (__s, 2 > 1));
  return __wctomb_alias (__s, __wchar);
}


extern size_t __mbstowcs_chk (wchar_t *__restrict __dst,
         const char *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __mbstowcs_alias (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))


                                  ;
extern size_t __mbstowcs_chk_warn (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__mbstowcs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("mbstowcs called with dst buffer smaller than len " "* sizeof (wchar_t)")))
                        ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) mbstowcs (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len)

{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __mbstowcs_chk (__dst, __src, __len,
          __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));

      if (__len > __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t))
 return __mbstowcs_chk_warn (__dst, __src, __len,
         __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));
    }
  return __mbstowcs_alias (__dst, __src, __len);
}


extern size_t __wcstombs_chk (char *__restrict __dst,
         const wchar_t *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __wcstombs_alias (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len) __asm__ ("" "wcstombs") __attribute__ ((__nothrow__ , __leaf__))


                                  ;
extern size_t __wcstombs_chk_warn (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__wcstombs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("wcstombs called with dst buffer smaller than len")));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) wcstombs (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len)

{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __wcstombs_chk (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
      if (__len > __builtin_object_size (__dst, 2 > 1))
 return __wcstombs_chk_warn (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
    }
  return __wcstombs_alias (__dst, __src, __len);
}
# 960 "/usr/include/stdlib.h" 2 3 4
# 968 "/usr/include/stdlib.h" 3 4

# 5 "FFT_of_densities.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 154 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 177 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 245 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 293 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 302 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 338 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 390 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 434 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 464 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 108 "/usr/include/stdio.h" 3 4


typedef _G_fpos_t fpos_t;




# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) __attribute__ ((__warn_unused_result__));
# 209 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 266 "/usr/include/stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) __attribute__ ((__warn_unused_result__));




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
# 295 "/usr/include/stdio.h" 3 4

# 306 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 319 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 412 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));




extern int scanf (const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 443 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                          __attribute__ ((__warn_unused_result__));
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                         __attribute__ ((__warn_unused_result__));
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 463 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__));





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 494 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__warn_unused_result__));
# 638 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__warn_unused_result__)) __attribute__ ((__deprecated__));


# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) __attribute__ ((__warn_unused_result__));




extern void rewind (FILE *__stream);

# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) __attribute__ ((__warn_unused_result__));
# 792 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "/usr/include/stdio.h" 3 4

# 824 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));








extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 873 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) __attribute__ ((__warn_unused_result__));





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 913 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 934 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio.h" 1 3 4
# 43 "/usr/include/x86_64-linux-gnu/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return _IO_getc (stdin);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}





extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}


extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}




extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return _IO_putc (__c, stdout);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}





extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}


extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
# 124 "/usr/include/x86_64-linux-gnu/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x10) != 0);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x20) != 0);
}
# 935 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
      const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) sprintf (char *__restrict __s, const char *__restrict __fmt, ...)
{
  return __builtin___sprintf_chk (__s, 2 - 1,
      __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsprintf (char *__restrict __s, const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsprintf_chk (__s, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}



extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
      size_t __slen, const char *__restrict __format,
      ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
       size_t __slen, const char *__restrict __format,
       __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) snprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, ...)

{
  return __builtin___snprintf_chk (__s, __n, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsnprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsnprintf_chk (__s, __n, 2 - 1,
        __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}





extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
     const char *__restrict __format, ...);
extern int __printf_chk (int __flag, const char *__restrict __format, ...);
extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
      const char *__restrict __format, __gnuc_va_list __ap);
extern int __vprintf_chk (int __flag, const char *__restrict __format,
     __gnuc_va_list __ap);


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
{
  return __fprintf_chk (__stream, 2 - 1, __fmt,
   __builtin_va_arg_pack ());
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (2 - 1, __fmt, __builtin_va_arg_pack ());
}







extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __ap)
{

  return __vfprintf_chk (stdout, 2 - 1, __fmt, __ap);



}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vfprintf (FILE *__restrict __stream,
   const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (__stream, 2 - 1, __fmt, __ap);
}


extern int __dprintf_chk (int __fd, int __flag, const char *__restrict __fmt,
     ...) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int __vdprintf_chk (int __fd, int __flag,
      const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 3, 0)));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
dprintf (int __fd, const char *__restrict __fmt, ...)
{
  return __dprintf_chk (__fd, 2 - 1, __fmt,
   __builtin_va_arg_pack ());
}





extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vdprintf (int __fd, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vdprintf_chk (__fd, 2 - 1, __fmt, __ap);
}
# 227 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern char *__gets_chk (char *__str, size_t) __attribute__ ((__warn_unused_result__));
extern char *__gets_warn (char *__str) __asm__ ("" "gets")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("please use fgets or getline instead, gets can't " "specify buffer size")))
                               ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
gets (char *__str)
{
  if (__builtin_object_size (__str, 2 > 1) != (size_t) -1)
    return __gets_chk (__str, __builtin_object_size (__str, 2 > 1));
  return __gets_warn (__str);
}


extern char *__fgets_chk (char *__restrict __s, size_t __size, int __n,
     FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern char *__fgets_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets")

                                        __attribute__ ((__warn_unused_result__));
extern char *__fgets_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_chk")


     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets called with bigger size than length " "of destination buffer")))
                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
{
  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__n) || __n <= 0)
 return __fgets_chk (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);

      if ((size_t) __n > __builtin_object_size (__s, 2 > 1))
 return __fgets_chk_warn (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);
    }
  return __fgets_alias (__s, __n, __stream);
}

extern size_t __fread_chk (void *__restrict __ptr, size_t __ptrlen,
      size_t __size, size_t __n,
      FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread")


            __attribute__ ((__warn_unused_result__));
extern size_t __fread_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread called with bigger size * nmemb than length " "of destination buffer")))
                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread (void *__restrict __ptr, size_t __size, size_t __n,
       FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);

      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);
    }
  return __fread_alias (__ptr, __size, __n, __stream);
}
# 327 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern size_t __fread_unlocked_chk (void *__restrict __ptr, size_t __ptrlen,
        size_t __size, size_t __n,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread_unlocked")


                     __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_unlocked_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread_unlocked called with bigger size * nmemb than " "length of destination buffer")))
                                        ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread_unlocked (void *__restrict __ptr, size_t __size, size_t __n,
  FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_unlocked_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
         __stream);

      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_unlocked_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
       __stream);
    }


  if (__builtin_constant_p (__size)
      && __builtin_constant_p (__n)
      && (__size | __n) < (((size_t) 1) << (8 * sizeof (size_t) / 2))
      && __size * __n <= 8)
    {
      size_t __cnt = __size * __n;
      char *__cptr = (char *) __ptr;
      if (__cnt == 0)
 return 0;

      for (; __cnt > 0; --__cnt)
 {
   int __c = (__builtin_expect (((__stream)->_IO_read_ptr >= (__stream)->_IO_read_end), 0) ? __uflow (__stream) : *(unsigned char *) (__stream)->_IO_read_ptr++);
   if (__c == (-1))
     break;
   *__cptr++ = __c;
 }
      return (__cptr - (char *) __ptr) / __size;
    }

  return __fread_unlocked_alias (__ptr, __size, __n, __stream);
}
# 938 "/usr/include/stdio.h" 2 3 4






# 6 "FFT_of_densities.c" 2
# 1 "/usr/include/math.h" 1 3 4
# 28 "/usr/include/math.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/huge_val.h" 1 3 4
# 33 "/usr/include/math.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/huge_valf.h" 1 3 4
# 35 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/huge_vall.h" 1 3 4
# 36 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/inf.h" 1 3 4
# 39 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/nan.h" 1 3 4
# 42 "/usr/include/math.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/mathdef.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/mathdef.h" 3 4
typedef float float_t;
typedef double double_t;
# 46 "/usr/include/math.h" 2 3 4
# 69 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double acos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double cos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tan (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double cosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tanh (double __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double acosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atanh (double __x) __attribute__ ((__nothrow__ , __leaf__));







extern double exp (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double log (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log10 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log10 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log1p (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log1p (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double logb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __logb (double __x) __attribute__ ((__nothrow__ , __leaf__));






extern double exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log2 (double __x) __attribute__ ((__nothrow__ , __leaf__));








extern double pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__));





extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));






extern double cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__));








extern double ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));



extern double significand (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __significand (double __x) __attribute__ ((__nothrow__ , __leaf__));





extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern double nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double j0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double j1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double jn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __jn (int, double) __attribute__ ((__nothrow__ , __leaf__));
extern double y0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double y1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double yn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __yn (int, double) __attribute__ ((__nothrow__ , __leaf__));






extern double erf (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erf (double) __attribute__ ((__nothrow__ , __leaf__));
extern double erfc (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erfc (double) __attribute__ ((__nothrow__ , __leaf__));
extern double lgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma (double) __attribute__ ((__nothrow__ , __leaf__));






extern double tgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __tgamma (double) __attribute__ ((__nothrow__ , __leaf__));





extern double gamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __gamma (double) __attribute__ ((__nothrow__ , __leaf__));






extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern double rint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __rint (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));



extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern double nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern double round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern double trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrint (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lround (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llround (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassify (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbit (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__)); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__));
# 70 "/usr/include/math.h" 2 3 4
# 88 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float acosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acosf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float asinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float cosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cosf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float sinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float tanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanf (float __x) __attribute__ ((__nothrow__ , __leaf__));




extern float coshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __coshf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));







extern float expf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern float logf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log10f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log10f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float logbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logbf (float __x) __attribute__ ((__nothrow__ , __leaf__));






extern float exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log2f (float __x) __attribute__ ((__nothrow__ , __leaf__));








extern float powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));


extern float sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));





extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));






extern float cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));








extern float ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));



extern float significandf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __significandf (float __x) __attribute__ ((__nothrow__ , __leaf__));





extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float j0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float j1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float jnf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __jnf (int, float) __attribute__ ((__nothrow__ , __leaf__));
extern float y0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float y1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float ynf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __ynf (int, float) __attribute__ ((__nothrow__ , __leaf__));






extern float erff (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erff (float) __attribute__ ((__nothrow__ , __leaf__));
extern float erfcf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erfcf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float lgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf (float) __attribute__ ((__nothrow__ , __leaf__));






extern float tgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __tgammaf (float) __attribute__ ((__nothrow__ , __leaf__));





extern float gammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __gammaf (float) __attribute__ ((__nothrow__ , __leaf__));






extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern float rintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __rintf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));



extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__));




extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern float nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern float roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern float truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));


extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbitf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__));
# 89 "/usr/include/math.h" 2 3 4
# 132 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));




extern long double coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));







extern long double expl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern long double logl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));






extern long double exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));








extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));


extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));





extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));






extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));








extern long double ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));



extern long double significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__));





extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double j0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double j1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double erfl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double erfcl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfcl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double lgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal (long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double tgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tgammal (long double) __attribute__ ((__nothrow__ , __leaf__));





extern long double gammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __gammal (long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern long double rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));



extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));




extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long double roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern long double truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));


extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbitl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__));
# 133 "/usr/include/math.h" 2 3 4
# 148 "/usr/include/math.h" 3 4
extern int signgam;
# 189 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
# 301 "/usr/include/math.h" 3 4
typedef enum
{
  _IEEE_ = -1,
  _SVID_,
  _XOPEN_,
  _POSIX_,
  _ISOC_
} _LIB_VERSION_TYPE;




extern _LIB_VERSION_TYPE _LIB_VERSION;
# 326 "/usr/include/math.h" 3 4
struct exception

  {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
  };




extern int matherr (struct exception *__exc);
# 426 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 1 3 4
# 123 "/usr/include/x86_64-linux-gnu/bits/mathinline.h" 3 4



extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) __signbitf (float __x)
{

  int __m;
  __asm ("pmovmskb %1, %0" : "=r" (__m) : "x" (__x));
  return (__m & 0x8) != 0;




}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) __signbit (double __x)
{

  int __m;
  __asm ("pmovmskb %1, %0" : "=r" (__m) : "x" (__x));
  return (__m & 0x80) != 0;




}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) __signbitl (long double __x)
{
  __extension__ union { long double __l; int __i[3]; } __u = { __l: __x };
  return (__u.__i[2] & 0x8000) != 0;
}


# 427 "/usr/include/math.h" 2 3 4
# 488 "/usr/include/math.h" 3 4

# 7 "FFT_of_densities.c" 2
# 1 "/home/darivadi/local/include/fftw3.h" 1
# 89 "/home/darivadi/local/include/fftw3.h"
enum fftw_r2r_kind_do_not_use_me {
     FFTW_R2HC=0, FFTW_HC2R=1, FFTW_DHT=2,
     FFTW_REDFT00=3, FFTW_REDFT01=4, FFTW_REDFT10=5, FFTW_REDFT11=6,
     FFTW_RODFT00=7, FFTW_RODFT01=8, FFTW_RODFT10=9, FFTW_RODFT11=10
};

struct fftw_iodim_do_not_use_me {
     int n;
     int is;
     int os;
};

# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 147 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 102 "/home/darivadi/local/include/fftw3.h" 2
struct fftw_iodim64_do_not_use_me {
     ptrdiff_t n;
     ptrdiff_t is;
     ptrdiff_t os;
};

typedef void (*fftw_write_char_func_do_not_use_me)(char c, void *);
typedef int (*fftw_read_char_func_do_not_use_me)(void *);
# 355 "/home/darivadi/local/include/fftw3.h"
typedef double fftw_complex[2]; typedef struct fftw_plan_s *fftw_plan; typedef struct fftw_iodim_do_not_use_me fftw_iodim; typedef struct fftw_iodim64_do_not_use_me fftw_iodim64; typedef enum fftw_r2r_kind_do_not_use_me fftw_r2r_kind; typedef fftw_write_char_func_do_not_use_me fftw_write_char_func; typedef fftw_read_char_func_do_not_use_me fftw_read_char_func; extern void fftw_execute(const fftw_plan p); extern fftw_plan fftw_plan_dft(int rank, const int *n, fftw_complex *in, fftw_complex *out, int sign, unsigned flags); extern fftw_plan fftw_plan_dft_1d(int n, fftw_complex *in, fftw_complex *out, int sign, unsigned flags); extern fftw_plan fftw_plan_dft_2d(int n0, int n1, fftw_complex *in, fftw_complex *out, int sign, unsigned flags); extern fftw_plan fftw_plan_dft_3d(int n0, int n1, int n2, fftw_complex *in, fftw_complex *out, int sign, unsigned flags); extern fftw_plan fftw_plan_many_dft(int rank, const int *n, int howmany, fftw_complex *in, const int *inembed, int istride, int idist, fftw_complex *out, const int *onembed, int ostride, int odist, int sign, unsigned flags); extern fftw_plan fftw_plan_guru_dft(int rank, const fftw_iodim *dims, int howmany_rank, const fftw_iodim *howmany_dims, fftw_complex *in, fftw_complex *out, int sign, unsigned flags); extern fftw_plan fftw_plan_guru_split_dft(int rank, const fftw_iodim *dims, int howmany_rank, const fftw_iodim *howmany_dims, double *ri, double *ii, double *ro, double *io, unsigned flags); extern fftw_plan fftw_plan_guru64_dft(int rank, const fftw_iodim64 *dims, int howmany_rank, const fftw_iodim64 *howmany_dims, fftw_complex *in, fftw_complex *out, int sign, unsigned flags); extern fftw_plan fftw_plan_guru64_split_dft(int rank, const fftw_iodim64 *dims, int howmany_rank, const fftw_iodim64 *howmany_dims, double *ri, double *ii, double *ro, double *io, unsigned flags); extern void fftw_execute_dft(const fftw_plan p, fftw_complex *in, fftw_complex *out); extern void fftw_execute_split_dft(const fftw_plan p, double *ri, double *ii, double *ro, double *io); extern fftw_plan fftw_plan_many_dft_r2c(int rank, const int *n, int howmany, double *in, const int *inembed, int istride, int idist, fftw_complex *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftw_plan fftw_plan_dft_r2c(int rank, const int *n, double *in, fftw_complex *out, unsigned flags); extern fftw_plan fftw_plan_dft_r2c_1d(int n,double *in,fftw_complex *out,unsigned flags); extern fftw_plan fftw_plan_dft_r2c_2d(int n0, int n1, double *in, fftw_complex *out, unsigned flags); extern fftw_plan fftw_plan_dft_r2c_3d(int n0, int n1, int n2, double *in, fftw_complex *out, unsigned flags); extern fftw_plan fftw_plan_many_dft_c2r(int rank, const int *n, int howmany, fftw_complex *in, const int *inembed, int istride, int idist, double *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftw_plan fftw_plan_dft_c2r(int rank, const int *n, fftw_complex *in, double *out, unsigned flags); extern fftw_plan fftw_plan_dft_c2r_1d(int n,fftw_complex *in,double *out,unsigned flags); extern fftw_plan fftw_plan_dft_c2r_2d(int n0, int n1, fftw_complex *in, double *out, unsigned flags); extern fftw_plan fftw_plan_dft_c2r_3d(int n0, int n1, int n2, fftw_complex *in, double *out, unsigned flags); extern fftw_plan fftw_plan_guru_dft_r2c(int rank, const fftw_iodim *dims, int howmany_rank, const fftw_iodim *howmany_dims, double *in, fftw_complex *out, unsigned flags); extern fftw_plan fftw_plan_guru_dft_c2r(int rank, const fftw_iodim *dims, int howmany_rank, const fftw_iodim *howmany_dims, fftw_complex *in, double *out, unsigned flags); extern fftw_plan fftw_plan_guru_split_dft_r2c( int rank, const fftw_iodim *dims, int howmany_rank, const fftw_iodim *howmany_dims, double *in, double *ro, double *io, unsigned flags); extern fftw_plan fftw_plan_guru_split_dft_c2r( int rank, const fftw_iodim *dims, int howmany_rank, const fftw_iodim *howmany_dims, double *ri, double *ii, double *out, unsigned flags); extern fftw_plan fftw_plan_guru64_dft_r2c(int rank, const fftw_iodim64 *dims, int howmany_rank, const fftw_iodim64 *howmany_dims, double *in, fftw_complex *out, unsigned flags); extern fftw_plan fftw_plan_guru64_dft_c2r(int rank, const fftw_iodim64 *dims, int howmany_rank, const fftw_iodim64 *howmany_dims, fftw_complex *in, double *out, unsigned flags); extern fftw_plan fftw_plan_guru64_split_dft_r2c( int rank, const fftw_iodim64 *dims, int howmany_rank, const fftw_iodim64 *howmany_dims, double *in, double *ro, double *io, unsigned flags); extern fftw_plan fftw_plan_guru64_split_dft_c2r( int rank, const fftw_iodim64 *dims, int howmany_rank, const fftw_iodim64 *howmany_dims, double *ri, double *ii, double *out, unsigned flags); extern void fftw_execute_dft_r2c(const fftw_plan p, double *in, fftw_complex *out); extern void fftw_execute_dft_c2r(const fftw_plan p, fftw_complex *in, double *out); extern void fftw_execute_split_dft_r2c(const fftw_plan p, double *in, double *ro, double *io); extern void fftw_execute_split_dft_c2r(const fftw_plan p, double *ri, double *ii, double *out); extern fftw_plan fftw_plan_many_r2r(int rank, const int *n, int howmany, double *in, const int *inembed, int istride, int idist, double *out, const int *onembed, int ostride, int odist, const fftw_r2r_kind *kind, unsigned flags); extern fftw_plan fftw_plan_r2r(int rank, const int *n, double *in, double *out, const fftw_r2r_kind *kind, unsigned flags); extern fftw_plan fftw_plan_r2r_1d(int n, double *in, double *out, fftw_r2r_kind kind, unsigned flags); extern fftw_plan fftw_plan_r2r_2d(int n0, int n1, double *in, double *out, fftw_r2r_kind kind0, fftw_r2r_kind kind1, unsigned flags); extern fftw_plan fftw_plan_r2r_3d(int n0, int n1, int n2, double *in, double *out, fftw_r2r_kind kind0, fftw_r2r_kind kind1, fftw_r2r_kind kind2, unsigned flags); extern fftw_plan fftw_plan_guru_r2r(int rank, const fftw_iodim *dims, int howmany_rank, const fftw_iodim *howmany_dims, double *in, double *out, const fftw_r2r_kind *kind, unsigned flags); extern fftw_plan fftw_plan_guru64_r2r(int rank, const fftw_iodim64 *dims, int howmany_rank, const fftw_iodim64 *howmany_dims, double *in, double *out, const fftw_r2r_kind *kind, unsigned flags); extern void fftw_execute_r2r(const fftw_plan p, double *in, double *out); extern void fftw_destroy_plan(fftw_plan p); extern void fftw_forget_wisdom(void); extern void fftw_cleanup(void); extern void fftw_set_timelimit(double t); extern void fftw_plan_with_nthreads(int nthreads); extern int fftw_init_threads(void); extern void fftw_cleanup_threads(void); extern int fftw_export_wisdom_to_filename(const char *filename); extern void fftw_export_wisdom_to_file(FILE *output_file); extern char *fftw_export_wisdom_to_string(void); extern void fftw_export_wisdom(fftw_write_char_func write_char, void *data); extern int fftw_import_system_wisdom(void); extern int fftw_import_wisdom_from_filename(const char *filename); extern int fftw_import_wisdom_from_file(FILE *input_file); extern int fftw_import_wisdom_from_string(const char *input_string); extern int fftw_import_wisdom(fftw_read_char_func read_char, void *data); extern void fftw_fprint_plan(const fftw_plan p, FILE *output_file); extern void fftw_print_plan(const fftw_plan p); extern char *fftw_sprint_plan(const fftw_plan p); extern void *fftw_malloc(size_t n); extern double *fftw_alloc_real(size_t n); extern fftw_complex *fftw_alloc_complex(size_t n); extern void fftw_free(void *p); extern void fftw_flops(const fftw_plan p, double *add, double *mul, double *fmas); extern double fftw_estimate_cost(const fftw_plan p); extern double fftw_cost(const fftw_plan p); extern int fftw_alignment_of(double *p); extern const char fftw_version[]; extern const char fftw_cc[]; extern const char fftw_codelet_optim[];
typedef float fftwf_complex[2]; typedef struct fftwf_plan_s *fftwf_plan; typedef struct fftw_iodim_do_not_use_me fftwf_iodim; typedef struct fftw_iodim64_do_not_use_me fftwf_iodim64; typedef enum fftw_r2r_kind_do_not_use_me fftwf_r2r_kind; typedef fftw_write_char_func_do_not_use_me fftwf_write_char_func; typedef fftw_read_char_func_do_not_use_me fftwf_read_char_func; extern void fftwf_execute(const fftwf_plan p); extern fftwf_plan fftwf_plan_dft(int rank, const int *n, fftwf_complex *in, fftwf_complex *out, int sign, unsigned flags); extern fftwf_plan fftwf_plan_dft_1d(int n, fftwf_complex *in, fftwf_complex *out, int sign, unsigned flags); extern fftwf_plan fftwf_plan_dft_2d(int n0, int n1, fftwf_complex *in, fftwf_complex *out, int sign, unsigned flags); extern fftwf_plan fftwf_plan_dft_3d(int n0, int n1, int n2, fftwf_complex *in, fftwf_complex *out, int sign, unsigned flags); extern fftwf_plan fftwf_plan_many_dft(int rank, const int *n, int howmany, fftwf_complex *in, const int *inembed, int istride, int idist, fftwf_complex *out, const int *onembed, int ostride, int odist, int sign, unsigned flags); extern fftwf_plan fftwf_plan_guru_dft(int rank, const fftwf_iodim *dims, int howmany_rank, const fftwf_iodim *howmany_dims, fftwf_complex *in, fftwf_complex *out, int sign, unsigned flags); extern fftwf_plan fftwf_plan_guru_split_dft(int rank, const fftwf_iodim *dims, int howmany_rank, const fftwf_iodim *howmany_dims, float *ri, float *ii, float *ro, float *io, unsigned flags); extern fftwf_plan fftwf_plan_guru64_dft(int rank, const fftwf_iodim64 *dims, int howmany_rank, const fftwf_iodim64 *howmany_dims, fftwf_complex *in, fftwf_complex *out, int sign, unsigned flags); extern fftwf_plan fftwf_plan_guru64_split_dft(int rank, const fftwf_iodim64 *dims, int howmany_rank, const fftwf_iodim64 *howmany_dims, float *ri, float *ii, float *ro, float *io, unsigned flags); extern void fftwf_execute_dft(const fftwf_plan p, fftwf_complex *in, fftwf_complex *out); extern void fftwf_execute_split_dft(const fftwf_plan p, float *ri, float *ii, float *ro, float *io); extern fftwf_plan fftwf_plan_many_dft_r2c(int rank, const int *n, int howmany, float *in, const int *inembed, int istride, int idist, fftwf_complex *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftwf_plan fftwf_plan_dft_r2c(int rank, const int *n, float *in, fftwf_complex *out, unsigned flags); extern fftwf_plan fftwf_plan_dft_r2c_1d(int n,float *in,fftwf_complex *out,unsigned flags); extern fftwf_plan fftwf_plan_dft_r2c_2d(int n0, int n1, float *in, fftwf_complex *out, unsigned flags); extern fftwf_plan fftwf_plan_dft_r2c_3d(int n0, int n1, int n2, float *in, fftwf_complex *out, unsigned flags); extern fftwf_plan fftwf_plan_many_dft_c2r(int rank, const int *n, int howmany, fftwf_complex *in, const int *inembed, int istride, int idist, float *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftwf_plan fftwf_plan_dft_c2r(int rank, const int *n, fftwf_complex *in, float *out, unsigned flags); extern fftwf_plan fftwf_plan_dft_c2r_1d(int n,fftwf_complex *in,float *out,unsigned flags); extern fftwf_plan fftwf_plan_dft_c2r_2d(int n0, int n1, fftwf_complex *in, float *out, unsigned flags); extern fftwf_plan fftwf_plan_dft_c2r_3d(int n0, int n1, int n2, fftwf_complex *in, float *out, unsigned flags); extern fftwf_plan fftwf_plan_guru_dft_r2c(int rank, const fftwf_iodim *dims, int howmany_rank, const fftwf_iodim *howmany_dims, float *in, fftwf_complex *out, unsigned flags); extern fftwf_plan fftwf_plan_guru_dft_c2r(int rank, const fftwf_iodim *dims, int howmany_rank, const fftwf_iodim *howmany_dims, fftwf_complex *in, float *out, unsigned flags); extern fftwf_plan fftwf_plan_guru_split_dft_r2c( int rank, const fftwf_iodim *dims, int howmany_rank, const fftwf_iodim *howmany_dims, float *in, float *ro, float *io, unsigned flags); extern fftwf_plan fftwf_plan_guru_split_dft_c2r( int rank, const fftwf_iodim *dims, int howmany_rank, const fftwf_iodim *howmany_dims, float *ri, float *ii, float *out, unsigned flags); extern fftwf_plan fftwf_plan_guru64_dft_r2c(int rank, const fftwf_iodim64 *dims, int howmany_rank, const fftwf_iodim64 *howmany_dims, float *in, fftwf_complex *out, unsigned flags); extern fftwf_plan fftwf_plan_guru64_dft_c2r(int rank, const fftwf_iodim64 *dims, int howmany_rank, const fftwf_iodim64 *howmany_dims, fftwf_complex *in, float *out, unsigned flags); extern fftwf_plan fftwf_plan_guru64_split_dft_r2c( int rank, const fftwf_iodim64 *dims, int howmany_rank, const fftwf_iodim64 *howmany_dims, float *in, float *ro, float *io, unsigned flags); extern fftwf_plan fftwf_plan_guru64_split_dft_c2r( int rank, const fftwf_iodim64 *dims, int howmany_rank, const fftwf_iodim64 *howmany_dims, float *ri, float *ii, float *out, unsigned flags); extern void fftwf_execute_dft_r2c(const fftwf_plan p, float *in, fftwf_complex *out); extern void fftwf_execute_dft_c2r(const fftwf_plan p, fftwf_complex *in, float *out); extern void fftwf_execute_split_dft_r2c(const fftwf_plan p, float *in, float *ro, float *io); extern void fftwf_execute_split_dft_c2r(const fftwf_plan p, float *ri, float *ii, float *out); extern fftwf_plan fftwf_plan_many_r2r(int rank, const int *n, int howmany, float *in, const int *inembed, int istride, int idist, float *out, const int *onembed, int ostride, int odist, const fftwf_r2r_kind *kind, unsigned flags); extern fftwf_plan fftwf_plan_r2r(int rank, const int *n, float *in, float *out, const fftwf_r2r_kind *kind, unsigned flags); extern fftwf_plan fftwf_plan_r2r_1d(int n, float *in, float *out, fftwf_r2r_kind kind, unsigned flags); extern fftwf_plan fftwf_plan_r2r_2d(int n0, int n1, float *in, float *out, fftwf_r2r_kind kind0, fftwf_r2r_kind kind1, unsigned flags); extern fftwf_plan fftwf_plan_r2r_3d(int n0, int n1, int n2, float *in, float *out, fftwf_r2r_kind kind0, fftwf_r2r_kind kind1, fftwf_r2r_kind kind2, unsigned flags); extern fftwf_plan fftwf_plan_guru_r2r(int rank, const fftwf_iodim *dims, int howmany_rank, const fftwf_iodim *howmany_dims, float *in, float *out, const fftwf_r2r_kind *kind, unsigned flags); extern fftwf_plan fftwf_plan_guru64_r2r(int rank, const fftwf_iodim64 *dims, int howmany_rank, const fftwf_iodim64 *howmany_dims, float *in, float *out, const fftwf_r2r_kind *kind, unsigned flags); extern void fftwf_execute_r2r(const fftwf_plan p, float *in, float *out); extern void fftwf_destroy_plan(fftwf_plan p); extern void fftwf_forget_wisdom(void); extern void fftwf_cleanup(void); extern void fftwf_set_timelimit(double t); extern void fftwf_plan_with_nthreads(int nthreads); extern int fftwf_init_threads(void); extern void fftwf_cleanup_threads(void); extern int fftwf_export_wisdom_to_filename(const char *filename); extern void fftwf_export_wisdom_to_file(FILE *output_file); extern char *fftwf_export_wisdom_to_string(void); extern void fftwf_export_wisdom(fftwf_write_char_func write_char, void *data); extern int fftwf_import_system_wisdom(void); extern int fftwf_import_wisdom_from_filename(const char *filename); extern int fftwf_import_wisdom_from_file(FILE *input_file); extern int fftwf_import_wisdom_from_string(const char *input_string); extern int fftwf_import_wisdom(fftwf_read_char_func read_char, void *data); extern void fftwf_fprint_plan(const fftwf_plan p, FILE *output_file); extern void fftwf_print_plan(const fftwf_plan p); extern char *fftwf_sprint_plan(const fftwf_plan p); extern void *fftwf_malloc(size_t n); extern float *fftwf_alloc_real(size_t n); extern fftwf_complex *fftwf_alloc_complex(size_t n); extern void fftwf_free(void *p); extern void fftwf_flops(const fftwf_plan p, double *add, double *mul, double *fmas); extern double fftwf_estimate_cost(const fftwf_plan p); extern double fftwf_cost(const fftwf_plan p); extern int fftwf_alignment_of(float *p); extern const char fftwf_version[]; extern const char fftwf_cc[]; extern const char fftwf_codelet_optim[];
typedef long double fftwl_complex[2]; typedef struct fftwl_plan_s *fftwl_plan; typedef struct fftw_iodim_do_not_use_me fftwl_iodim; typedef struct fftw_iodim64_do_not_use_me fftwl_iodim64; typedef enum fftw_r2r_kind_do_not_use_me fftwl_r2r_kind; typedef fftw_write_char_func_do_not_use_me fftwl_write_char_func; typedef fftw_read_char_func_do_not_use_me fftwl_read_char_func; extern void fftwl_execute(const fftwl_plan p); extern fftwl_plan fftwl_plan_dft(int rank, const int *n, fftwl_complex *in, fftwl_complex *out, int sign, unsigned flags); extern fftwl_plan fftwl_plan_dft_1d(int n, fftwl_complex *in, fftwl_complex *out, int sign, unsigned flags); extern fftwl_plan fftwl_plan_dft_2d(int n0, int n1, fftwl_complex *in, fftwl_complex *out, int sign, unsigned flags); extern fftwl_plan fftwl_plan_dft_3d(int n0, int n1, int n2, fftwl_complex *in, fftwl_complex *out, int sign, unsigned flags); extern fftwl_plan fftwl_plan_many_dft(int rank, const int *n, int howmany, fftwl_complex *in, const int *inembed, int istride, int idist, fftwl_complex *out, const int *onembed, int ostride, int odist, int sign, unsigned flags); extern fftwl_plan fftwl_plan_guru_dft(int rank, const fftwl_iodim *dims, int howmany_rank, const fftwl_iodim *howmany_dims, fftwl_complex *in, fftwl_complex *out, int sign, unsigned flags); extern fftwl_plan fftwl_plan_guru_split_dft(int rank, const fftwl_iodim *dims, int howmany_rank, const fftwl_iodim *howmany_dims, long double *ri, long double *ii, long double *ro, long double *io, unsigned flags); extern fftwl_plan fftwl_plan_guru64_dft(int rank, const fftwl_iodim64 *dims, int howmany_rank, const fftwl_iodim64 *howmany_dims, fftwl_complex *in, fftwl_complex *out, int sign, unsigned flags); extern fftwl_plan fftwl_plan_guru64_split_dft(int rank, const fftwl_iodim64 *dims, int howmany_rank, const fftwl_iodim64 *howmany_dims, long double *ri, long double *ii, long double *ro, long double *io, unsigned flags); extern void fftwl_execute_dft(const fftwl_plan p, fftwl_complex *in, fftwl_complex *out); extern void fftwl_execute_split_dft(const fftwl_plan p, long double *ri, long double *ii, long double *ro, long double *io); extern fftwl_plan fftwl_plan_many_dft_r2c(int rank, const int *n, int howmany, long double *in, const int *inembed, int istride, int idist, fftwl_complex *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftwl_plan fftwl_plan_dft_r2c(int rank, const int *n, long double *in, fftwl_complex *out, unsigned flags); extern fftwl_plan fftwl_plan_dft_r2c_1d(int n,long double *in,fftwl_complex *out,unsigned flags); extern fftwl_plan fftwl_plan_dft_r2c_2d(int n0, int n1, long double *in, fftwl_complex *out, unsigned flags); extern fftwl_plan fftwl_plan_dft_r2c_3d(int n0, int n1, int n2, long double *in, fftwl_complex *out, unsigned flags); extern fftwl_plan fftwl_plan_many_dft_c2r(int rank, const int *n, int howmany, fftwl_complex *in, const int *inembed, int istride, int idist, long double *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftwl_plan fftwl_plan_dft_c2r(int rank, const int *n, fftwl_complex *in, long double *out, unsigned flags); extern fftwl_plan fftwl_plan_dft_c2r_1d(int n,fftwl_complex *in,long double *out,unsigned flags); extern fftwl_plan fftwl_plan_dft_c2r_2d(int n0, int n1, fftwl_complex *in, long double *out, unsigned flags); extern fftwl_plan fftwl_plan_dft_c2r_3d(int n0, int n1, int n2, fftwl_complex *in, long double *out, unsigned flags); extern fftwl_plan fftwl_plan_guru_dft_r2c(int rank, const fftwl_iodim *dims, int howmany_rank, const fftwl_iodim *howmany_dims, long double *in, fftwl_complex *out, unsigned flags); extern fftwl_plan fftwl_plan_guru_dft_c2r(int rank, const fftwl_iodim *dims, int howmany_rank, const fftwl_iodim *howmany_dims, fftwl_complex *in, long double *out, unsigned flags); extern fftwl_plan fftwl_plan_guru_split_dft_r2c( int rank, const fftwl_iodim *dims, int howmany_rank, const fftwl_iodim *howmany_dims, long double *in, long double *ro, long double *io, unsigned flags); extern fftwl_plan fftwl_plan_guru_split_dft_c2r( int rank, const fftwl_iodim *dims, int howmany_rank, const fftwl_iodim *howmany_dims, long double *ri, long double *ii, long double *out, unsigned flags); extern fftwl_plan fftwl_plan_guru64_dft_r2c(int rank, const fftwl_iodim64 *dims, int howmany_rank, const fftwl_iodim64 *howmany_dims, long double *in, fftwl_complex *out, unsigned flags); extern fftwl_plan fftwl_plan_guru64_dft_c2r(int rank, const fftwl_iodim64 *dims, int howmany_rank, const fftwl_iodim64 *howmany_dims, fftwl_complex *in, long double *out, unsigned flags); extern fftwl_plan fftwl_plan_guru64_split_dft_r2c( int rank, const fftwl_iodim64 *dims, int howmany_rank, const fftwl_iodim64 *howmany_dims, long double *in, long double *ro, long double *io, unsigned flags); extern fftwl_plan fftwl_plan_guru64_split_dft_c2r( int rank, const fftwl_iodim64 *dims, int howmany_rank, const fftwl_iodim64 *howmany_dims, long double *ri, long double *ii, long double *out, unsigned flags); extern void fftwl_execute_dft_r2c(const fftwl_plan p, long double *in, fftwl_complex *out); extern void fftwl_execute_dft_c2r(const fftwl_plan p, fftwl_complex *in, long double *out); extern void fftwl_execute_split_dft_r2c(const fftwl_plan p, long double *in, long double *ro, long double *io); extern void fftwl_execute_split_dft_c2r(const fftwl_plan p, long double *ri, long double *ii, long double *out); extern fftwl_plan fftwl_plan_many_r2r(int rank, const int *n, int howmany, long double *in, const int *inembed, int istride, int idist, long double *out, const int *onembed, int ostride, int odist, const fftwl_r2r_kind *kind, unsigned flags); extern fftwl_plan fftwl_plan_r2r(int rank, const int *n, long double *in, long double *out, const fftwl_r2r_kind *kind, unsigned flags); extern fftwl_plan fftwl_plan_r2r_1d(int n, long double *in, long double *out, fftwl_r2r_kind kind, unsigned flags); extern fftwl_plan fftwl_plan_r2r_2d(int n0, int n1, long double *in, long double *out, fftwl_r2r_kind kind0, fftwl_r2r_kind kind1, unsigned flags); extern fftwl_plan fftwl_plan_r2r_3d(int n0, int n1, int n2, long double *in, long double *out, fftwl_r2r_kind kind0, fftwl_r2r_kind kind1, fftwl_r2r_kind kind2, unsigned flags); extern fftwl_plan fftwl_plan_guru_r2r(int rank, const fftwl_iodim *dims, int howmany_rank, const fftwl_iodim *howmany_dims, long double *in, long double *out, const fftwl_r2r_kind *kind, unsigned flags); extern fftwl_plan fftwl_plan_guru64_r2r(int rank, const fftwl_iodim64 *dims, int howmany_rank, const fftwl_iodim64 *howmany_dims, long double *in, long double *out, const fftwl_r2r_kind *kind, unsigned flags); extern void fftwl_execute_r2r(const fftwl_plan p, long double *in, long double *out); extern void fftwl_destroy_plan(fftwl_plan p); extern void fftwl_forget_wisdom(void); extern void fftwl_cleanup(void); extern void fftwl_set_timelimit(double t); extern void fftwl_plan_with_nthreads(int nthreads); extern int fftwl_init_threads(void); extern void fftwl_cleanup_threads(void); extern int fftwl_export_wisdom_to_filename(const char *filename); extern void fftwl_export_wisdom_to_file(FILE *output_file); extern char *fftwl_export_wisdom_to_string(void); extern void fftwl_export_wisdom(fftwl_write_char_func write_char, void *data); extern int fftwl_import_system_wisdom(void); extern int fftwl_import_wisdom_from_filename(const char *filename); extern int fftwl_import_wisdom_from_file(FILE *input_file); extern int fftwl_import_wisdom_from_string(const char *input_string); extern int fftwl_import_wisdom(fftwl_read_char_func read_char, void *data); extern void fftwl_fprint_plan(const fftwl_plan p, FILE *output_file); extern void fftwl_print_plan(const fftwl_plan p); extern char *fftwl_sprint_plan(const fftwl_plan p); extern void *fftwl_malloc(size_t n); extern long double *fftwl_alloc_real(size_t n); extern fftwl_complex *fftwl_alloc_complex(size_t n); extern void fftwl_free(void *p); extern void fftwl_flops(const fftwl_plan p, double *add, double *mul, double *fmas); extern double fftwl_estimate_cost(const fftwl_plan p); extern double fftwl_cost(const fftwl_plan p); extern int fftwl_alignment_of(long double *p); extern const char fftwl_version[]; extern const char fftwl_cc[]; extern const char fftwl_codelet_optim[];
# 373 "/home/darivadi/local/include/fftw3.h"
typedef __float128 fftwq_complex[2]; typedef struct fftwq_plan_s *fftwq_plan; typedef struct fftw_iodim_do_not_use_me fftwq_iodim; typedef struct fftw_iodim64_do_not_use_me fftwq_iodim64; typedef enum fftw_r2r_kind_do_not_use_me fftwq_r2r_kind; typedef fftw_write_char_func_do_not_use_me fftwq_write_char_func; typedef fftw_read_char_func_do_not_use_me fftwq_read_char_func; extern void fftwq_execute(const fftwq_plan p); extern fftwq_plan fftwq_plan_dft(int rank, const int *n, fftwq_complex *in, fftwq_complex *out, int sign, unsigned flags); extern fftwq_plan fftwq_plan_dft_1d(int n, fftwq_complex *in, fftwq_complex *out, int sign, unsigned flags); extern fftwq_plan fftwq_plan_dft_2d(int n0, int n1, fftwq_complex *in, fftwq_complex *out, int sign, unsigned flags); extern fftwq_plan fftwq_plan_dft_3d(int n0, int n1, int n2, fftwq_complex *in, fftwq_complex *out, int sign, unsigned flags); extern fftwq_plan fftwq_plan_many_dft(int rank, const int *n, int howmany, fftwq_complex *in, const int *inembed, int istride, int idist, fftwq_complex *out, const int *onembed, int ostride, int odist, int sign, unsigned flags); extern fftwq_plan fftwq_plan_guru_dft(int rank, const fftwq_iodim *dims, int howmany_rank, const fftwq_iodim *howmany_dims, fftwq_complex *in, fftwq_complex *out, int sign, unsigned flags); extern fftwq_plan fftwq_plan_guru_split_dft(int rank, const fftwq_iodim *dims, int howmany_rank, const fftwq_iodim *howmany_dims, __float128 *ri, __float128 *ii, __float128 *ro, __float128 *io, unsigned flags); extern fftwq_plan fftwq_plan_guru64_dft(int rank, const fftwq_iodim64 *dims, int howmany_rank, const fftwq_iodim64 *howmany_dims, fftwq_complex *in, fftwq_complex *out, int sign, unsigned flags); extern fftwq_plan fftwq_plan_guru64_split_dft(int rank, const fftwq_iodim64 *dims, int howmany_rank, const fftwq_iodim64 *howmany_dims, __float128 *ri, __float128 *ii, __float128 *ro, __float128 *io, unsigned flags); extern void fftwq_execute_dft(const fftwq_plan p, fftwq_complex *in, fftwq_complex *out); extern void fftwq_execute_split_dft(const fftwq_plan p, __float128 *ri, __float128 *ii, __float128 *ro, __float128 *io); extern fftwq_plan fftwq_plan_many_dft_r2c(int rank, const int *n, int howmany, __float128 *in, const int *inembed, int istride, int idist, fftwq_complex *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftwq_plan fftwq_plan_dft_r2c(int rank, const int *n, __float128 *in, fftwq_complex *out, unsigned flags); extern fftwq_plan fftwq_plan_dft_r2c_1d(int n,__float128 *in,fftwq_complex *out,unsigned flags); extern fftwq_plan fftwq_plan_dft_r2c_2d(int n0, int n1, __float128 *in, fftwq_complex *out, unsigned flags); extern fftwq_plan fftwq_plan_dft_r2c_3d(int n0, int n1, int n2, __float128 *in, fftwq_complex *out, unsigned flags); extern fftwq_plan fftwq_plan_many_dft_c2r(int rank, const int *n, int howmany, fftwq_complex *in, const int *inembed, int istride, int idist, __float128 *out, const int *onembed, int ostride, int odist, unsigned flags); extern fftwq_plan fftwq_plan_dft_c2r(int rank, const int *n, fftwq_complex *in, __float128 *out, unsigned flags); extern fftwq_plan fftwq_plan_dft_c2r_1d(int n,fftwq_complex *in,__float128 *out,unsigned flags); extern fftwq_plan fftwq_plan_dft_c2r_2d(int n0, int n1, fftwq_complex *in, __float128 *out, unsigned flags); extern fftwq_plan fftwq_plan_dft_c2r_3d(int n0, int n1, int n2, fftwq_complex *in, __float128 *out, unsigned flags); extern fftwq_plan fftwq_plan_guru_dft_r2c(int rank, const fftwq_iodim *dims, int howmany_rank, const fftwq_iodim *howmany_dims, __float128 *in, fftwq_complex *out, unsigned flags); extern fftwq_plan fftwq_plan_guru_dft_c2r(int rank, const fftwq_iodim *dims, int howmany_rank, const fftwq_iodim *howmany_dims, fftwq_complex *in, __float128 *out, unsigned flags); extern fftwq_plan fftwq_plan_guru_split_dft_r2c( int rank, const fftwq_iodim *dims, int howmany_rank, const fftwq_iodim *howmany_dims, __float128 *in, __float128 *ro, __float128 *io, unsigned flags); extern fftwq_plan fftwq_plan_guru_split_dft_c2r( int rank, const fftwq_iodim *dims, int howmany_rank, const fftwq_iodim *howmany_dims, __float128 *ri, __float128 *ii, __float128 *out, unsigned flags); extern fftwq_plan fftwq_plan_guru64_dft_r2c(int rank, const fftwq_iodim64 *dims, int howmany_rank, const fftwq_iodim64 *howmany_dims, __float128 *in, fftwq_complex *out, unsigned flags); extern fftwq_plan fftwq_plan_guru64_dft_c2r(int rank, const fftwq_iodim64 *dims, int howmany_rank, const fftwq_iodim64 *howmany_dims, fftwq_complex *in, __float128 *out, unsigned flags); extern fftwq_plan fftwq_plan_guru64_split_dft_r2c( int rank, const fftwq_iodim64 *dims, int howmany_rank, const fftwq_iodim64 *howmany_dims, __float128 *in, __float128 *ro, __float128 *io, unsigned flags); extern fftwq_plan fftwq_plan_guru64_split_dft_c2r( int rank, const fftwq_iodim64 *dims, int howmany_rank, const fftwq_iodim64 *howmany_dims, __float128 *ri, __float128 *ii, __float128 *out, unsigned flags); extern void fftwq_execute_dft_r2c(const fftwq_plan p, __float128 *in, fftwq_complex *out); extern void fftwq_execute_dft_c2r(const fftwq_plan p, fftwq_complex *in, __float128 *out); extern void fftwq_execute_split_dft_r2c(const fftwq_plan p, __float128 *in, __float128 *ro, __float128 *io); extern void fftwq_execute_split_dft_c2r(const fftwq_plan p, __float128 *ri, __float128 *ii, __float128 *out); extern fftwq_plan fftwq_plan_many_r2r(int rank, const int *n, int howmany, __float128 *in, const int *inembed, int istride, int idist, __float128 *out, const int *onembed, int ostride, int odist, const fftwq_r2r_kind *kind, unsigned flags); extern fftwq_plan fftwq_plan_r2r(int rank, const int *n, __float128 *in, __float128 *out, const fftwq_r2r_kind *kind, unsigned flags); extern fftwq_plan fftwq_plan_r2r_1d(int n, __float128 *in, __float128 *out, fftwq_r2r_kind kind, unsigned flags); extern fftwq_plan fftwq_plan_r2r_2d(int n0, int n1, __float128 *in, __float128 *out, fftwq_r2r_kind kind0, fftwq_r2r_kind kind1, unsigned flags); extern fftwq_plan fftwq_plan_r2r_3d(int n0, int n1, int n2, __float128 *in, __float128 *out, fftwq_r2r_kind kind0, fftwq_r2r_kind kind1, fftwq_r2r_kind kind2, unsigned flags); extern fftwq_plan fftwq_plan_guru_r2r(int rank, const fftwq_iodim *dims, int howmany_rank, const fftwq_iodim *howmany_dims, __float128 *in, __float128 *out, const fftwq_r2r_kind *kind, unsigned flags); extern fftwq_plan fftwq_plan_guru64_r2r(int rank, const fftwq_iodim64 *dims, int howmany_rank, const fftwq_iodim64 *howmany_dims, __float128 *in, __float128 *out, const fftwq_r2r_kind *kind, unsigned flags); extern void fftwq_execute_r2r(const fftwq_plan p, __float128 *in, __float128 *out); extern void fftwq_destroy_plan(fftwq_plan p); extern void fftwq_forget_wisdom(void); extern void fftwq_cleanup(void); extern void fftwq_set_timelimit(double t); extern void fftwq_plan_with_nthreads(int nthreads); extern int fftwq_init_threads(void); extern void fftwq_cleanup_threads(void); extern int fftwq_export_wisdom_to_filename(const char *filename); extern void fftwq_export_wisdom_to_file(FILE *output_file); extern char *fftwq_export_wisdom_to_string(void); extern void fftwq_export_wisdom(fftwq_write_char_func write_char, void *data); extern int fftwq_import_system_wisdom(void); extern int fftwq_import_wisdom_from_filename(const char *filename); extern int fftwq_import_wisdom_from_file(FILE *input_file); extern int fftwq_import_wisdom_from_string(const char *input_string); extern int fftwq_import_wisdom(fftwq_read_char_func read_char, void *data); extern void fftwq_fprint_plan(const fftwq_plan p, FILE *output_file); extern void fftwq_print_plan(const fftwq_plan p); extern char *fftwq_sprint_plan(const fftwq_plan p); extern void *fftwq_malloc(size_t n); extern __float128 *fftwq_alloc_real(size_t n); extern fftwq_complex *fftwq_alloc_complex(size_t n); extern void fftwq_free(void *p); extern void fftwq_flops(const fftwq_plan p, double *add, double *mul, double *fmas); extern double fftwq_estimate_cost(const fftwq_plan p); extern double fftwq_cost(const fftwq_plan p); extern int fftwq_alignment_of(__float128 *p); extern const char fftwq_version[]; extern const char fftwq_cc[]; extern const char fftwq_codelet_optim[];
# 8 "FFT_of_densities.c" 2





# 1 "FFT_variables.c" 1
# 37 "FFT_variables.c"
struct grid
{

  double DenCon_K[2];

  double k_vector[3];
  double k_module;
  double weight;
  double k_mod_sin;


  double p_w_k[3][2];





  double potDot_k[2];





  double potDot_k_l_app1[2];



  double potDot_k_l_app2[2];




}*gp;


struct GlobalVariables
{
  char FILENAME[1000];


  int Total_NParts;
  double BoxSize;
  int NCELLS;
  int NTOTALCELLS;
  double Mpart;
  double CellSize;
  double ZERO;
  double r2k_norm;
  double k2r_norm;
  double fftw_norm;
  double conv_norm;


  double H0;
  double z_RS;
  double a_SF;
  double Hz;
  double Omega_M0;
  double Omega_L0;
  double MeanDen;

}GV;
# 14 "FFT_of_densities.c" 2
# 1 "FFT_routines.c" 1







int conf2dump( char filename[] )
{
    char cmd[1000];
    int nread;




    sprintf( cmd, "grep -v \"#\" %s | grep -v \"^$\" | gawk -F\"=\" '{print $2}' > %s.dump",
      filename, filename );
    nread = system( cmd );

    return 0;
}
# 30 "FFT_routines.c"
int read_parameters( char filename[] )
{
  int nread;
  char cmd[1000], filenamedump[1000];
  FILE *file;


  file = fopen( filename, "r" );
  if( file==((void *)0) )
    {
      printf( "  * The file '%s' doesn't exist!\n", filename );
      return 1;
    }
  fclose(file);


  conf2dump( filename );
  sprintf( filenamedump, "%s.dump", filename );
  file = fopen( filenamedump, "r" );
# 60 "FFT_routines.c"
  nread = fscanf(file, "%d", &GV.NCELLS);
  nread = fscanf(file, "%lf", &GV.BoxSize);
  nread = fscanf(file, "%s", GV.FILENAME);


  nread = fscanf(file, "%lf", &GV.Omega_M0);
  nread = fscanf(file, "%lf", &GV.Omega_L0);
  nread = fscanf(file, "%lf", &GV.z_RS);
  nread = fscanf(file, "%lf", &GV.H0);
  GV.a_SF = 1.0/(1.0 + GV.z_RS);


  fclose( file );

  printf( "  * The file '%s' has been loaded!\n", filename );
  printf("File to read is %s ", GV.FILENAME);
  printf("with %d cells per axis\n", GV.NCELLS);


  sprintf( cmd, "rm -rf %s.dump", filename );
  nread = system( cmd );

  return 0;
}
# 93 "FFT_routines.c"
int read_data(char *infile, double *DenConCell, double **p_r)
{
  int m, nread;
  FILE *pf=((void *)0);
  char buff[1000];
  double dummy;

  pf = fopen(infile, "r");


  nread = fgets(buff, 1000, pf);
# 148 "FFT_routines.c"
  free(p_r);

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      nread=fscanf(pf,"%lf %lf %lf %lf",
     &dummy, &dummy, &dummy,
     &DenConCell[m]);

      if(m%5000000==0)
 {
   printf("%d %lf\n",
   m, DenConCell[m]);
 }

    }


  fclose(pf);

  return 0;
}
# 179 "FFT_routines.c"
int read_binary(double *DenConCell, double **p_r)
{
  int m, nread;
  double pos_aux[3];
  double dummy;
  FILE *inFile=((void *)0);

  inFile = fopen(GV.FILENAME, "r");


  nread = fread(&GV.BoxSize, sizeof(double), 1, inFile);
  nread = fread(&GV.Omega_M0, sizeof(double), 1, inFile);
  nread = fread(&GV.Omega_L0, sizeof(double), 1, inFile);
  nread = fread(&GV.z_RS, sizeof(double), 1, inFile);
  nread = fread(&GV.H0, sizeof(double), 1, inFile);

  GV.a_SF = 1.0 / (1.0 + GV.z_RS);

  printf("-----------------------------------------------\n");
  printf("Cosmological parameters:\n");
  printf("OmegaM0=%lf OmegaL0=%lf redshift=%lf HubbleParam=%lf\n",
  GV.Omega_M0,
  GV.Omega_L0,
  GV.z_RS,
  GV.H0);
  printf("-----------------------------------------------\n");

  printf("Simulation parameters:\n");
  printf("L=%lf\n",
  GV.BoxSize);
  printf("-----------------------------------------------\n");
# 232 "FFT_routines.c"
  free(p_r);

  for(m=0; m<GV.NTOTALCELLS; m++ )
    {
      nread = fread(&pos_aux[0], sizeof(double), 3, inFile);
      nread = fread(&DenConCell[m], sizeof(double), 1, inFile);

      if(m%5000000==0)
 {
   printf("Reading m=%d x=%lf y=%lf z=%lf DenCon=%lf\n",
   m,
   pos_aux[0], pos_aux[1], pos_aux[2],
   DenConCell[m]);
 }

    }



  fclose(inFile);
  return 0;
}
# 15 "FFT_of_densities.c" 2
# 1 "FFT_transform.c" 1
# 12 "FFT_transform.c"
int transform(double *DenConCell)
{

  int m, i, j, k;
  double fx, fy, fz, k2, wx, wy, wz;
  double aux_sinx, aux_siny, aux_sinz;

  fftw_complex *in=((void *)0);
  fftw_complex *out=((void *)0);
  fftw_plan plan_r2k;



  FILE *pf=((void *)0);






  in = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);


  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = DenConCell[m];
      in[m][1] = 0.0;
    }


  printf("Input of contrast density sorted in C-order (row-major order)!\n");
  printf("-----------------------------------------------------------------\n");


  plan_r2k = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (-1), (1U << 6) );
  fftw_execute( plan_r2k );

  printf("FFT: density contrast r2k finished!\n");
  printf("-----------------------------------------------------------------\n");


  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].DenCon_K[0] = GV.r2k_norm * GV.fftw_norm * out[m][0];
      gp[m].DenCon_K[1] = GV.r2k_norm * GV.fftw_norm * out[m][1];
    }



  for(i=0; i<GV.NCELLS; i++)
    {
      for(j=0; j<GV.NCELLS; j++)
 {
   for(k=0; k<GV.NCELLS; k++)
     {
       m = (k)+GV.NCELLS*((j)+GV.NCELLS*(i));


       if( i <= GV.NCELLS/2 )
  gp[m].k_vector[0] = (2.0*3.14159265358979323846*i) / GV.BoxSize;
       else
  gp[m].k_vector[0] = (2.0*3.14159265358979323846*(i-GV.NCELLS)) / GV.BoxSize;


       if( j <= GV.NCELLS/2 )
  gp[m].k_vector[1] = (2.0*3.14159265358979323846*j) / GV.BoxSize;
       else
  gp[m].k_vector[1] = (2.0*3.14159265358979323846*(j-GV.NCELLS)) / GV.BoxSize;


       if( k <= GV.NCELLS/2 )
  gp[m].k_vector[2] = (2.0*3.14159265358979323846*k) / GV.BoxSize;
       else
  gp[m].k_vector[2] = (2.0*3.14159265358979323846*(k-GV.NCELLS)) / GV.BoxSize;


       k2 = gp[m].k_vector[0]*gp[m].k_vector[0] + gp[m].k_vector[1]*gp[m].k_vector[1] + gp[m].k_vector[2]*gp[m].k_vector[2] ;
       gp[m].k_module = sqrt(k2);



              aux_sinx = sin(0.5*gp[m].k_vector[0]) * sin(0.5*gp[m].k_vector[0]);
              aux_siny = sin(0.5*gp[m].k_vector[1]) * sin(0.5*gp[m].k_vector[1]);
              aux_sinz = sin(0.5*gp[m].k_vector[2]) * sin(0.5*gp[m].k_vector[2]);

              gp[m].k_mod_sin = aux_sinx + aux_siny + aux_sinz;

     }
 }
    }

  printf("k vectors computed!\n");
  printf("------------------------------------------------\n");
# 172 "FFT_transform.c"
  printf("Computing density contrast in k space with CIC weight-function!\n");
  printf("------------------------------------------------\n");




  for(m=0; m<GV.NTOTALCELLS; m++)
    {

      if(fabs(gp[m].k_vector[0]) > GV.ZERO)
 {
   fx = (gp[m].k_vector[0]*GV.BoxSize)/(2.0*GV.NCELLS);
   wx = (sin(fx)/fx)*(sin(fx)/fx);
 }
      else
 {
   wx = 1.0;
 }


      if(fabs(gp[m].k_vector[1]) > GV.ZERO)
 {
   fy = (gp[m].k_vector[1]*GV.BoxSize)/(2.0*GV.NCELLS);
   wy = (sin(fy)/fy)*(sin(fy)/fy);
 }
      else
 {
   wy = 1.0;
 }


      if(fabs(gp[m].k_vector[2]) > GV.ZERO)
 {
   fz = (gp[m].k_vector[2]*GV.BoxSize)/(2.0*GV.NCELLS);
   wz = (sin(fz)/fz)*(sin(fz)/fz);
 }
      else
 {
   wz = 1.0;
 }


      gp[m].weight = wx * wy * wz;
# 224 "FFT_transform.c"
      if(fabs(gp[m].weight) > GV.ZERO)
 {
   gp[m].DenCon_K[0] = gp[m].DenCon_K[0] / gp[m].weight;
   gp[m].DenCon_K[1] = gp[m].DenCon_K[1] / gp[m].weight;
 }
      else
 {
   gp[m].DenCon_K[0] = 0.0;
   gp[m].DenCon_K[1] = 0.0;
      }

    }


  printf("Density contrast in k-space with CIC weight fn ready!!\n");
  printf("-----------------------------------------------------------------\n");
# 252 "FFT_transform.c"
  printf("Destroying plans!\n");
  printf("--------------------------------------------------\n");
  fftw_destroy_plan( plan_r2k );
  printf("plan_r2k destroyed!");




  printf("Freeing up memory!\n");
  printf("--------------------------------------------------\n");
  free(in);

  fftw_free(out);

  printf("FFT_transform code finished!\n");
  printf("--------------------------------------------------\n");

  return 0;
}
# 16 "FFT_of_densities.c" 2
# 1 "FFT_potential.c" 1






int potential(double *poten_r, double **poten_k)
{
  int m, i, j, k;
  double factor, pos_aux[3];
  FILE *pf=((void *)0), *pf1=((void *)0);

  fftw_complex *in=((void *)0);
  fftw_complex *out=((void *)0);
  fftw_plan plan_k2r;





  printf("Computing potential in k-space\n");
  printf("-----------------------------------------\n");


  factor = (-3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      if( gp[m].k_module > GV.ZERO )
 {
   poten_k[m][0] = factor * gp[m].DenCon_K[0]/(gp[m].k_module * gp[m].k_module);
   poten_k[m][1] = factor * gp[m].DenCon_K[1]/(gp[m].k_module * gp[m].k_module);
 }
      else
 {
   poten_k[m][0] = 0.0;
   poten_k[m][1] = 0.0;
 }

      if(m%5000000==0)
 {
   printf("%lf %lf\n", poten_k[m][0], poten_k[m][1]);
 }

    }

  printf("Potential in k-space saved!\n");
  printf("-----------------------------------------\n");



  in = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );


  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = poten_k[m][0];
      in[m][1] = poten_k[m][1];
    }



  plan_k2r = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (+1), (1U << 6));
  fftw_execute( plan_k2r );

  printf("FFT potential k2r finished!\n");
  printf("---------------------------------------\n");




  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      poten_r[m] = GV.fftw_norm * GV.conv_norm * out[m][0] / GV.r2k_norm;

      if(m%1000000==0)
 {
   printf("%d %lf\n", m, poten_r[m]);
 }

    }

  printf("---------------------------------------\n");
  printf("Grid-sorted potential in r space saved!\n");
  printf("---------------------------------------\n");
# 96 "FFT_potential.c"
  fftw_destroy_plan( plan_k2r );


  free( in );

  fftw_free( out );

  printf("FFT_potential code finished!\n");
  printf("----------------------------\n");

  printf("Proceeding to the writing of binary file with potential field\n");
  printf("----------------------------\n");

  pf = fopen("./../Processed_data/Potential.bin", "w");

  fwrite(&GV.BoxSize, sizeof(double), 1, pf);
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf);
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf);
  fwrite(&GV.z_RS, sizeof(double), 1, pf);
  fwrite(&GV.H0, sizeof(double), 1, pf);


  for(i=0; i<GV.NCELLS; i++)
    {
      for(j=0; j<GV.NCELLS; j++)
        {
          for(k=0; k<GV.NCELLS; k++)
            {
              m = (k)+GV.NCELLS*((j)+GV.NCELLS*(i));
              pos_aux[0] = i * GV.CellSize;
              pos_aux[1] = j * GV.CellSize;
              pos_aux[2] = k * GV.CellSize;

              fwrite(&pos_aux[0], sizeof(double), 3, pf);
       fwrite(&poten_r[m], sizeof(double), 1, pf);
            }
        }
    }
# 142 "FFT_potential.c"
  fclose(pf);

  free(poten_r);
  free(poten_k);

  return 0;
}
# 17 "FFT_of_densities.c" 2
# 1 "FFT_momentum_den_cm.c" 1






int momentum_den_cm(double **p_r)
{
  int m, i, j, k;
  FILE *pf=((void *)0);
  double norm, Nparts;

  fftw_complex *in=((void *)0);
  fftw_complex *out=((void *)0);
  fftw_plan plan_r2k;
# 37 "FFT_momentum_den_cm.c"
  printf("Dealing with FFT momentum_cm in X!\n");
  printf("---------------------------------\n");

  in = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);


  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][0];
      in[m][1] = 0.0;
    }



  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (-1), (1U << 6));
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in X finished!\n");
  printf("---------------------------------\n");


  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_w_k[0][0] = GV.r2k_norm * GV.fftw_norm * out[m][0];
      gp[m].p_w_k[0][1] = GV.r2k_norm * GV.fftw_norm * out[m][1];
    }
# 73 "FFT_momentum_den_cm.c"
  free(in);

  fftw_free(out);





  printf(" Dealing with FFT momentum_cm in Y!\n");
  printf("---------------------------------\n");

  in = (fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);
  out = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex )*GV.NTOTALCELLS);


  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][1];
      in[m][1] = 0.0;
    }



  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (-1), (1U << 6));
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in Y finished!\n");
  printf("---------------------------------\n");


  norm = GV.CellSize * GV.CellSize * GV.CellSize;
  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_w_k[1][0] = GV.r2k_norm * GV.fftw_norm * out[m][0];
      gp[m].p_w_k[1][1] = GV.r2k_norm * GV.fftw_norm * out[m][1];
    }
# 117 "FFT_momentum_den_cm.c"
  free(in);

  fftw_free(out);





  printf(" Dealing with FFT momentum_cm in Z!\n");
  printf("---------------------------------\n");


  in = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      in[m][0] = p_r[m][2];
      in[m][1] = 0.0;
    }



  plan_r2k = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (-1), (1U << 6));
  fftw_execute( plan_r2k );
  printf("FFT of momentum_cm in Z finished!\n");
  printf("---------------------------------\n");


  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      gp[m].p_w_k[2][0] = GV.r2k_norm * GV.fftw_norm * out[m][0];
      gp[m].p_w_k[2][1] = GV.r2k_norm * GV.fftw_norm * out[m][1];
    }
# 160 "FFT_momentum_den_cm.c"
  fftw_destroy_plan( plan_r2k );

  fftw_free(in);

  fftw_free(out);






  for(m=0; m<GV.NTOTALCELLS; m++)
    {



      gp[m].p_w_k[0][0] = gp[m].k_vector[0] * gp[m].p_w_k[0][1];
      gp[m].p_w_k[1][0] = gp[m].k_vector[1] * gp[m].p_w_k[1][1];
      gp[m].p_w_k[2][0] = gp[m].k_vector[2] * gp[m].p_w_k[2][1];


      gp[m].p_w_k[0][1] = gp[m].k_vector[0] * gp[m].p_w_k[0][0];
      gp[m].p_w_k[1][1] = gp[m].k_vector[1] * gp[m].p_w_k[1][0];
      gp[m].p_w_k[2][1] = gp[m].k_vector[2] * gp[m].p_w_k[2][0];




      if( fabs(gp[m].weight) > GV.ZERO )
 {

   gp[m].p_w_k[0][0] /= gp[m].weight;
   gp[m].p_w_k[1][0] /= gp[m].weight;
   gp[m].p_w_k[2][0] /= gp[m].weight;


   gp[m].p_w_k[0][1] /= gp[m].weight;
   gp[m].p_w_k[1][1] /= gp[m].weight;
   gp[m].p_w_k[2][1] /= gp[m].weight;
 }
      else
 {

   gp[m].p_w_k[0][0] = 0.0;
   gp[m].p_w_k[1][0] = 0.0;
   gp[m].p_w_k[2][0] = 0.0;


   gp[m].p_w_k[0][1] = 0.0;
   gp[m].p_w_k[1][1] = 0.0;
   gp[m].p_w_k[2][1] = 0.0;
 }

    }


  return 0;
}
# 18 "FFT_of_densities.c" 2
# 1 "FFT_pot_dot.c" 1
# 11 "FFT_pot_dot.c"
int potential_dot(double **potDot_r)
{
  int m, i, j, k;
  double alpha, pot_Re1, pot_Re2, pot_Im1, pot_Im2, factor;
  double Green_factor;
  double pos_aux[3];
  FILE *pf=((void *)0);


  fftw_complex *in=((void *)0);
  fftw_complex *out=((void *)0);
  fftw_plan plan_k2r;




  printf("Computing time derivative of potential in k-space!\n");
  printf("-----------------------------------------------------------------\n");


  factor = (-3.0/2.0) * (GV.H0*GV.H0) * GV.Omega_M0 / GV.a_SF;

  for(m=0; m<GV.NTOTALCELLS; m++)
    {

      pot_Re1 = GV.Hz*gp[m].DenCon_K[0];
      pot_Re2 = -1.0*( gp[m].p_w_k[0][0] + gp[m].p_w_k[1][0] + gp[m].p_w_k[2][0] )/GV.a_SF;


      pot_Im1 = GV.Hz*gp[m].DenCon_K[1];
      pot_Im2 = ( gp[m].p_w_k[0][1] + gp[m].p_w_k[1][1] + gp[m].p_w_k[2][1] ) / GV.a_SF;


      if(gp[m].k_mod_sin > GV.ZERO)
 {
   Green_factor = -1.0 / gp[m].k_mod_sin;
   alpha = factor * Green_factor;

   gp[m].potDot_k[0] = alpha * ( pot_Re1 + pot_Re2 );
   gp[m].potDot_k[1] = alpha * ( pot_Im1 + pot_Im2 );

   if(m%5000000==0)
     {
       printf("%10d %16.8lf %16.8lf\n", m, gp[m].k_mod_sin, Green_factor);
     }

 }
      else
 {
   gp[m].potDot_k[0] = 0.0;
   gp[m].potDot_k[1] = 0.0;
 }

      Green_factor = 0.0;
      pot_Re1 = 0.0;
      pot_Re2 = 0.0;
      pot_Im1 = 0.0;
      pot_Im2 = 0.0;

    }
# 103 "FFT_pot_dot.c"
  printf("Data time derivative of potential in k-space assigned!\n");
  printf("-----------------------------------------------------------------\n");



  in = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = (fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);

  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      in[m][0] = gp[m].potDot_k[0];
      in[m][1] = gp[m].potDot_k[1];
    }



  plan_k2r = fftw_plan_dft_3d(GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (+1), (1U << 6));
  fftw_execute(plan_k2r);

  printf("FFT of potential derivative in r finished!\n");
  printf("-----------------------------------------\n");



  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      potDot_r[m][0] = GV.fftw_norm * GV.conv_norm * out[m][0] / GV.r2k_norm;

    }
# 140 "FFT_pot_dot.c"
  fftw_destroy_plan( plan_k2r );


  free(in);

  fftw_free(out);

  printf("FFT_pot_dot code finished!\n");
  printf("--------------------------\n");


  printf("Writing binary file with PotDot\n");
  printf("--------------------------\n");

  pf = fopen("./../Processed_data/PotDot.bin", "w");

  fwrite(&GV.BoxSize, sizeof(double), 1, pf);
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf);
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf);
  fwrite(&GV.z_RS, sizeof(double), 1, pf);
  fwrite(&GV.H0, sizeof(double), 1, pf);


  for(i=0; i<GV.NCELLS; i++)
    {
      for(j=0; j<GV.NCELLS; j++)
 {
   for(k=0; k<GV.NCELLS; k++)
     {
       m = (k)+GV.NCELLS*((j)+GV.NCELLS*(i));
       pos_aux[0] = i * GV.CellSize;
       pos_aux[1] = j * GV.CellSize;
       pos_aux[2] = k * GV.CellSize;

       fwrite(&pos_aux[0], sizeof(double), 3, pf);
       fwrite(&potDot_r[m][0], sizeof(double), 1, pf);
     }
 }
    }
  fclose(pf);

  free(potDot_r);

  return 0;
}
# 19 "FFT_of_densities.c" 2
# 1 "FFT_potDot_linear.c" 1







double growth_rate_OmegaL0(double a_SF)
{
  double GR_OmegaL0, a_cube;
  a_cube = pow(a_SF, 3.0);
  GR_OmegaL0 = 1.0/( pow( (1.0+GV.Omega_L0*a_cube), 0.6) );

  printf("-----------------------------------------------------------------\n");
  printf("First approximation to f(t)\n");
  printf("OmegaL0=%lf,  growth rate f(t)=%lf\n",
  GV.Omega_L0, GR_OmegaL0);
  printf("-----------------------------------------------------------------\n");

  return GR_OmegaL0;

}
# 32 "FFT_potDot_linear.c"
double growth_rate_OmegaM(double a_SF)
{
  double OmegaM_ofa, mu, GR_OmegaM, z;

  mu = a_SF * pow((GV.Omega_L0/GV.Omega_M0), 1.0/3.0);
  OmegaM_ofa = GV.Omega_M0 / ( (double) (1 + pow(mu, 3.0)) );
  GR_OmegaM = pow(OmegaM_ofa, 0.6);


  printf("-----------------------------------------------------------------\n");
  printf("Second approximation to f(t)\n");
  printf("mu=%lf, OmegaM(a)=%lf, growth rate f(t)=%lf\n",
  mu, OmegaM_ofa, GR_OmegaM);
  printf("-----------------------------------------------------------------\n");

  return GR_OmegaM;
}
# 61 "FFT_potDot_linear.c"
int potential_dot_linear( double **potDot_r_l_app1, double **potDot_r_l_app2 )
{
  int m, i, j, k;
  double pos_aux[3];
  double alpha, fn_app1, fn_app2, factor;
  double Green_factor;
  FILE *pf1=((void *)0), *pf2=((void *)0);


  fftw_complex *in=((void *)0);
  fftw_complex *in2=((void *)0);
  fftw_complex *out=((void *)0);
  fftw_plan plan_k2r;
  fftw_plan plan_r2k;



  fn_app1 = 1.0 - ( growth_rate_OmegaL0(GV.a_SF) );
  fn_app2 = 1.0 - ( growth_rate_OmegaM(GV.a_SF) );

  printf("GR_OmegaL0=%lf GR_OmegaM=%lf a_SF=%lf\n",
  growth_rate_OmegaL0(GV.a_SF), growth_rate_OmegaM(GV.a_SF), GV.a_SF);
  printf("---------------------------------------\n");



  factor = (-3.0/2.0) * GV.H0 * GV.H0 * (GV.Hz / GV.a_SF) * GV.Omega_M0;

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      if(gp[m].k_mod_sin > GV.ZERO)
   {
     Green_factor = -1.0 / gp[m].k_mod_sin;
     alpha = factor * Green_factor;


     gp[m].potDot_k_l_app1[0] = alpha * gp[m].DenCon_K[0] * fn_app1;
     gp[m].potDot_k_l_app1[1] = alpha * gp[m].DenCon_K[1] * fn_app1;


     gp[m].potDot_k_l_app2[0] = alpha * gp[m].DenCon_K[0] * fn_app2;
     gp[m].potDot_k_l_app2[1] = alpha * gp[m].DenCon_K[1] * fn_app2;
   }
      else
   {
     gp[m].potDot_k_l_app1[0] = 0.0;
     gp[m].potDot_k_l_app1[1] = 0.0;
     gp[m].potDot_k_l_app2[0] = 0.0;
     gp[m].potDot_k_l_app2[1] = 0.0;
   }
      Green_factor = 0.0;

    }
# 141 "FFT_potDot_linear.c"
  printf("Time derivative of potential in k-space saved!\n");
  printf("--------------------------------------------------\n");






  in = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );

  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      in[m][0] = gp[m].potDot_k_l_app1[0];
      in[m][1] = gp[m].potDot_k_l_app1[1];
    }



  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (+1), (1U << 6) );
  fftw_execute(plan_k2r);
  printf("FFT of potential derivative in r finished!\n");
  printf("-----------------------------------------\n");



  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      potDot_r_l_app1[m][0] = GV.fftw_norm * GV.conv_norm * out[m][0] / GV.r2k_norm;

    }
# 194 "FFT_potDot_linear.c"
  free(in);

  fftw_free(out);






  in = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS);
  out = ( fftw_complex *) fftw_malloc( sizeof( fftw_complex ) * GV.NTOTALCELLS );

  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      in[m][0] = gp[m].potDot_k_l_app2[0];
      in[m][1] = gp[m].potDot_k_l_app2[1];
    }



  plan_k2r = fftw_plan_dft_3d( GV.NCELLS, GV.NCELLS, GV.NCELLS, in, out, (+1), (1U << 6) );
  fftw_execute(plan_k2r);
  printf("FFT of potential derivative in r finished!\n");
  printf("-----------------------------------------\n");



  for( m=0; m<GV.NTOTALCELLS; m++ )
    {
      potDot_r_l_app2[m][0] = GV.fftw_norm * GV.conv_norm * out[m][0] / GV.r2k_norm;

    }
# 249 "FFT_potDot_linear.c"
  free(in);

  fftw_free(out);


  fftw_destroy_plan( plan_k2r );

  printf("FFT_pot_dot lineal code finished!\n");
  printf("--------------------------\n");

  printf("Saving data in binary file for both approximations\n");
  printf("--------------------------\n");


  pf1 = fopen("./../Processed_data/PotDot_app1.bin", "w");
  pf2 = fopen("./../Processed_data/PotDot_app2.bin", "w");


  fwrite(&GV.BoxSize, sizeof(double), 1, pf1);
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf1);
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf1);
  fwrite(&GV.z_RS, sizeof(double), 1, pf1);
  fwrite(&GV.H0, sizeof(double), 1, pf1);

  fwrite(&GV.BoxSize, sizeof(double), 1, pf2);
  fwrite(&GV.Omega_M0, sizeof(double), 1, pf2);
  fwrite(&GV.Omega_L0, sizeof(double), 1, pf2);
  fwrite(&GV.z_RS, sizeof(double), 1, pf2);
  fwrite(&GV.H0, sizeof(double), 1, pf2);

  for(i=0; i<GV.NCELLS; i++)
    {
      for(j=0; j<GV.NCELLS; j++)
 {
   for(k=0; k<GV.NCELLS; k++)
     {
       m = (k)+GV.NCELLS*((j)+GV.NCELLS*(i));
       pos_aux[0] = i * GV.CellSize;
       pos_aux[1] = j * GV.CellSize;
       pos_aux[2] = k * GV.CellSize;

       fwrite(&pos_aux[0], sizeof(double), 3, pf1);
       fwrite(&potDot_r_l_app1[m][0], sizeof(double), 1, pf1);

       fwrite(&pos_aux[0], sizeof(double), 3, pf2);
       fwrite(&potDot_r_l_app2[m][0], sizeof(double), 1, pf2);
     }
 }
    }

  fclose(pf1);
  fclose(pf2);

  return 0;
}
# 20 "FFT_of_densities.c" 2
# 28 "FFT_of_densities.c"
int main( int argc, char *argv[] )
{
  int m, i, j, k;
  char *infile=((void *)0);
  FILE *pf=((void *)0);


  double *DenConCell = ((void *)0);
  double *poten_r = ((void *)0);
  double **poten_k = ((void *)0);
  double **p_r = ((void *)0);







  double **potDot_r_l_app1 = ((void *)0);
  double **potDot_r_l_app2 = ((void *)0);



  if(argc < 2)
    {
      printf("Error: Incomplete number of parameters. Execute as follows:\n");
      printf("%s Parameters_file\n", argv[0]);
      exit(0);
    }

  infile = argv[1];


  read_parameters( infile );



  GV.ZERO = 1.0e-300;
  GV.NTOTALCELLS = GV.NCELLS*GV.NCELLS*GV.NCELLS;
  printf("Variables are ready to use!\n");
  printf("-----------------------------------------------------------------\n");


  gp = (struct grid *) malloc((size_t) GV.NTOTALCELLS*sizeof(struct grid));
  DenConCell = (double *) calloc(GV.NTOTALCELLS, sizeof(double) );

  poten_r = (double *) calloc(GV.NTOTALCELLS, sizeof(double) );
  poten_k = (double **) calloc(GV.NTOTALCELLS, sizeof(double *) );

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      poten_k[m] = (double *) calloc(2, sizeof(double));
    }
# 107 "FFT_of_densities.c"
  read_data( GV.FILENAME, DenConCell, p_r );
  printf("Ascii data file has been read succesfully!\n");
  printf("-----------------------------------------------------------------\n");




  GV.Hz = GV.H0 * sqrt(GV.Omega_L0 + GV.Omega_M0 * pow( (1+GV.z_RS), 3 ) );
  GV.CellSize = GV.BoxSize/(1.0*GV.NCELLS);

  printf("Simulation parameters\n");
  printf("GV.NCELLS:%12d GV.NTOTALCELLS:%12d\n"
  "GV.BoxSize:%16.8lf GV.CellSize:%16.8lf\n",
  GV.NCELLS,
  GV.NTOTALCELLS,
  GV.BoxSize,
  GV.CellSize);

  printf("----------------------------------------------------------------\n");
  printf("Cosmological parameters\n");
  printf("GV.z_RS=%lf GV.H0=%lf \nGV.Hz=%lf GV.a_SF=%lf\n",
  GV.z_RS,
  GV.H0,
  GV.Hz,
  GV.a_SF);
  printf("-----------------------------------------------------------------\n");



  GV.r2k_norm = (GV.BoxSize * GV.BoxSize * GV.BoxSize ) / (1.0 * GV.NTOTALCELLS);
  GV.k2r_norm = 1.0 / ( GV.BoxSize * GV.BoxSize * GV.BoxSize );
  GV.fftw_norm = 1.0 / sqrt(GV.NTOTALCELLS);
  GV.conv_norm = 1.0 / ( (2*3.14159265358979323846)*(2*3.14159265358979323846)*(2*3.14159265358979323846) );

  printf("r2k norm = %lf, k2r norm = %lf\n", GV.r2k_norm, GV.k2r_norm);
  printf("r2k 1D = %lf\n", GV.BoxSize / (1.0*GV.NCELLS) );



  transform( DenConCell );
  free(DenConCell);
  printf("FFT of density contrast finished!\n");
  printf("-----------------------------------------------------------------\n");



  potential( poten_r, poten_k );
  printf("FFT of gravitational potential finished!\n");
  printf("-----------------------------------------------------------------\n");
# 177 "FFT_of_densities.c"
  potDot_r_l_app1 = (double **) calloc(GV.NTOTALCELLS, sizeof(double *));
  potDot_r_l_app2 = (double **) calloc(GV.NTOTALCELLS, sizeof(double *));

  for(m=0; m<GV.NTOTALCELLS; m++)
    {
      potDot_r_l_app1[m] = (double *) calloc(2, sizeof(double));
      potDot_r_l_app2[m] = (double *) calloc(2, sizeof(double));
    }

  potential_dot_linear(potDot_r_l_app1, potDot_r_l_app2);
  printf("FFT of time derivative of gravitational potential in linear approximation finished!\n");
  printf("-----------------------------------------------------------------\n");



  printf("All FFT transforms have finished succesfully!\n");
  printf("-----------------------------------------------------------------\n");



  free(gp);

  printf("-----------------------------------------------------------------\n");
  printf("All codes have run succesfully!\n");
  printf("FFT code finished!\n");
  printf("-----------------------------------------------------------------\n");

  return 0;
}
