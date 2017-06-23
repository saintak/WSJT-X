subroutine bpdecode174(llr,apmask,maxiterations,decoded,cw,nharderror)
!
! A log-domain belief propagation decoder for the (174,87) code.
!
integer, parameter:: N=174, K=87, M=N-K
integer*1 codeword(N),cw(N),apmask(N)
integer  colorder(N)
integer*1 decoded(K)
integer Nm(7,M)  ! 5, 6, or 7 bits per check 
integer Mn(3,N)  ! 3 checks per bit
integer synd(M)
real tov(3,N)
real toc(7,M)
real tanhtoc(7,M)
real zn(N)
real llr(N)
real Tmn
integer nrw(M)

data colorder/            &
   0,  1,  2,  3, 30,  4,  5,  6,  7,  8,  9, 10, 11, 32, 12, 40, 13, 14, 15, 16,&
  17, 18, 37, 45, 29, 19, 20, 21, 41, 22, 42, 31, 33, 34, 44, 35, 47, 51, 50, 43,&
  36, 52, 63, 46, 25, 55, 27, 24, 23, 53, 39, 49, 59, 38, 48, 61, 60, 57, 28, 62,&
  56, 58, 65, 66, 26, 70, 64, 69, 68, 67, 74, 71, 54, 76, 72, 75, 78, 77, 80, 79,&
  73, 83, 84, 81, 82, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99,&
 100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,&
 120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,&
 140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,&
 160,161,162,163,164,165,166,167,168,169,170,171,172,173/

data Mn/       &
    1,   25,  69,  &
    2,   5,   73,  &
    3,   32,  68,  &
    4,   51,  61,  &
    6,   63,  70,  &
    7,   33,  79,  &
    8,   50,  86,  &
    9,   37,  43,  &
    10,  41,  65,  &
    11,  14,  64,  &
    12,  75,  77,  &
    13,  23,  81,  &
    15,  16,  82,  &
    17,  56,  66,  &
    18,  53,  60,  &
    19,  31,  52,  &
    20,  67,  84,  &
    21,  29,  72,  &
    22,  24,  44,  &
    26,  35,  76,  &
    27,  36,  38,  &
    28,  40,  42,  &
    30,  54,  55,  &
    34,  49,  87,  &
    39,  57,  58,  &
    45,  74,  83,  &
    46,  62,  80,  &
    47,  48,  85,  &
    59,  71,  78,  &
    1,   50,  53,  &
    2,   47,  84,  &
    3,   25,  79,  &
    4,   6,   14,  &
    5,   7,   80,  &
    8,   34,  55,  &
    9,   36,  69,  &
    10,  43,  83,  &
    11,  23,  74,  &
    12,  17,  44,  &
    13,  57,  76,  &
    15,  27,  56,  &
    16,  28,  29,  &
    18,  19,  59,  &
    20,  40,  63,  &
    21,  35,  52,  &
    22,  54,  64,  &
    24,  62,  78,  &
    26,  32,  77,  &
    30,  72,  85,  &
    31,  65,  87,  &
    33,  39,  51,  &
    37,  48,  75,  &
    38,  70,  71,  &
    41,  42,  68,  &
    45,  67,  86,  &
    46,  81,  82,  &
    49,  66,  73,  &
    58,  60,  66,  &
    61,  65,  85,  &
    1,   14,  21,  &
    2,   13,  59,  &
    3,   67,  82,  &
    4,   32,  73,  &
    5,   36,  54,  &
    6,   43,  46,  &
    7,   28,  75,  &
    8,   33,  71,  &
    9,   49,  76,  &
    10,  58,  64,  &
    11,  48,  68,  &
    12,  19,  45,  &
    15,  50,  61,  &
    16,  22,  26,  &
    17,  72,  80,  &
    18,  40,  55,  &
    20,  35,  51,  &
    23,  25,  34,  &
    24,  63,  87,  &
    27,  39,  74,  &
    29,  78,  83,  &
    30,  70,  77,  &
    31,  69,  84,  &
    22,  37,  86,  &
    38,  41,  81,  &
    42,  44,  57,  &
    47,  53,  62,  &
    52,  56,  79,  &
    60,  75,  81,  &
    1,   39,  77,  &
    2,   16,  41,  &
    3,   31,  54,  &
    4,   36,  78,  &
    5,   45,  65,  &
    6,   57,  85,  &
    7,   14,  49,  &
    8,   21,  46,  &
    9,   15,  72,  &
    10,  20,  62,  &
    11,  17,  71,  &
    12,  34,  47,  &
    13,  68,  86,  &
    18,  23,  43,  &
    19,  64,  73,  &
    24,  48,  79,  &
    25,  70,  83,  &
    26,  80,  87,  &
    27,  32,  40,  &
    28,  56,  69,  &
    29,  63,  66,  &
    30,  42,  50,  &
    33,  37,  82,  &
    35,  60,  74,  &
    38,  55,  84,  &
    44,  52,  61,  &
    51,  53,  72,  &
    58,  59,  67,  &
    47,  56,  76,  &
    1,   19,  37,  &
    2,   61,  75,  &
    3,   8,   66,  &
    4,   60,  84,  &
    5,   34,  39,  &
    6,   26,  53,  &
    7,   32,  57,  &
    9,   52,  67,  &
    10,  12,  15,  &
    11,  51,  69,  &
    13,  14,  65,  &
    16,  31,  43,  &
    17,  20,  36,  &
    18,  80,  86,  &
    21,  48,  59,  &
    22,  40,  46,  &
    23,  33,  62,  &
    24,  30,  74,  &
    25,  42,  64,  &
    27,  49,  85,  &
    28,  38,  73,  &
    29,  44,  81,  &
    35,  68,  70,  &
    41,  63,  76,  &
    45,  49,  71,  &
    50,  58,  87,  &
    48,  54,  83,  &
    13,  55,  79,  &
    77,  78,  82,  &
    1,   2,   24,  &
    3,   6,   75,  &
    4,   56,  87,  &
    5,   44,  53,  &
    7,   50,  83,  &
    8,   10,  28,  &
    9,   55,  62,  &
    11,  29,  67,  &
    12,  33,  40,  &
    14,  16,  20,  &
    15,  35,  73,  &
    17,  31,  39,  &
    18,  36,  57,  &
    19,  46,  76,  &
    21,  42,  84,  &
    22,  34,  59,  &
    23,  26,  61,  &
    25,  60,  65,  &
    27,  64,  80,  &
    30,  37,  66,  &
    32,  45,  72,  &
    38,  51,  86,  &
    41,  77,  79,  &
    43,  56,  68,  &
    47,  74,  82,  &
    40,  52,  78,  &
    54,  61,  71,  &
    46,  58,  69/

data Nm/               &
    1,   30,  60,  89,   118,  147,  0,   &
    2,   31,  61,  90,   119,  147,  0,   &
    3,   32,  62,  91,   120,  148,  0,   &
    4,   33,  63,  92,   121,  149,  0,   &
    2,   34,  64,  93,   122,  150,  0,   &
    5,   33,  65,  94,   123,  148,  0,   &
    6,   34,  66,  95,   124,  151,  0,   &
    7,   35,  67,  96,   120,  152,  0,   &
    8,   36,  68,  97,   125,  153,  0,   &
    9,   37,  69,  98,   126,  152,  0,   &
    10,  38,  70,  99,   127,  154,  0,   &
    11,  39,  71,  100,  126,  155,  0,   &
    12,  40,  61,  101,  128,  145,  0,   &
    10,  33,  60,  95,   128,  156,  0,   &
    13,  41,  72,  97,   126,  157,  0,   &
    13,  42,  73,  90,   129,  156,  0,   &
    14,  39,  74,  99,   130,  158,  0,   &
    15,  43,  75,  102,  131,  159,  0,   &
    16,  43,  71,  103,  118,  160,  0,   &
    17,  44,  76,  98,   130,  156,  0,   &
    18,  45,  60,  96,   132,  161,  0,   &
    19,  46,  73,  83,   133,  162,  0,   &
    12,  38,  77,  102,  134,  163,  0,   &
    19,  47,  78,  104,  135,  147,  0,   &
    1,   32,  77,  105,  136,  164,  0,   &
    20,  48,  73,  106,  123,  163,  0,   &
    21,  41,  79,  107,  137,  165,  0,   &
    22,  42,  66,  108,  138,  152,  0,   &
    18,  42,  80,  109,  139,  154,  0,   &
    23,  49,  81,  110,  135,  166,  0,   &
    16,  50,  82,  91,   129,  158,  0,   &
    3,   48,  63,  107,  124,  167,  0,   &
    6,   51,  67,  111,  134,  155,  0,   &
    24,  35,  77,  100,  122,  162,  0,   &
    20,  45,  76,  112,  140,  157,  0,   &
    21,  36,  64,  92,   130,  159,  0,   &
    8,   52,  83,  111,  118,  166,  0,   &
    21,  53,  84,  113,  138,  168,  0,   &
    25,  51,  79,  89,   122,  158,  0,   &
    22,  44,  75,  107,  133,  155,  172, &
    9,   54,  84,  90,   141,  169,  0,   &
    22,  54,  85,  110,  136,  161,  0,   &
    8,   37,  65,  102,  129,  170,  0,   &
    19,  39,  85,  114,  139,  150,  0,   &
    26,  55,  71,  93,   142,  167,  0,   &
    27,  56,  65,  96,   133,  160,  174, &
    28,  31,  86,  100,  117,  171,  0,   &
    28,  52,  70,  104,  132,  144,  0,   &
    24,  57,  68,  95,   137,  142,  0,   &
    7,   30,  72,  110,  143,  151,  0,   &
    4,   51,  76,  115,  127,  168,  0,   &
    16,  45,  87,  114,  125,  172,  0,   &
    15,  30,  86,  115,  123,  150,  0,   &
    23,  46,  64,  91,   144,  173,  0,   &
    23,  35,  75,  113,  145,  153,  0,   &
    14,  41,  87,  108,  117,  149,  170, &
    25,  40,  85,  94,   124,  159,  0,   &
    25,  58,  69,  116,  143,  174,  0,   &
    29,  43,  61,  116,  132,  162,  0,   &
    15,  58,  88,  112,  121,  164,  0,   &
    4,   59,  72,  114,  119,  163,  173, &
    27,  47,  86,  98,   134,  153,  0,   &
    5,   44,  78,  109,  141,  0,    0,   &
    10,  46,  69,  103,  136,  165,  0,   &
    9,   50,  59,  93,   128,  164,  0,   &
    14,  57,  58,  109,  120,  166,  0,   &
    17,  55,  62,  116,  125,  154,  0,   &
    3,   54,  70,  101,  140,  170,  0,   &
    1,   36,  82,  108,  127,  174,  0,   &
    5,   53,  81,  105,  140,  0,    0,   &
    29,  53,  67,  99,   142,  173,  0,   &
    18,  49,  74,  97,   115,  167,  0,   &
    2,   57,  63,  103,  138,  157,  0,   &
    26,  38,  79,  112,  135,  171,  0,   &
    11,  52,  66,  88,   119,  148,  0,   &
    20,  40,  68,  117,  141,  160,  0,   &
    11,  48,  81,  89,   146,  169,  0,   &
    29,  47,  80,  92,   146,  172,  0,   &
    6,   32,  87,  104,  145,  169,  0,   &
    27,  34,  74,  106,  131,  165,  0,   &
    12,  56,  84,  88,   139,  0,    0,   &
    13,  56,  62,  111,  146,  171,  0,   &
    26,  37,  80,  105,  144,  151,  0,   &
    17,  31,  82,  113,  121,  161,  0,   &
    28,  49,  59,  94,   137,  0,    0,   &
    7,   55,  83,  101,  131,  168,  0,   &
    24,  50,  78,  106,  143,  149,  0/ 

data nrw/   &
  6,6,6,6,6,6,6,6,6,6, &
  6,6,6,6,6,6,6,6,6,6, &
  6,6,6,6,6,6,6,6,6,6, &
  6,6,6,6,6,6,6,6,6,7, &
  6,6,6,6,6,7,6,6,6,6, &
  6,6,6,6,6,7,6,6,6,6, &
  7,6,5,6,6,6,6,6,6,5, &
  6,6,6,6,6,6,6,6,6,6, &
  5,6,6,6,5,6,6/

ncw=3

decoded=0
toc=0
tov=0
tanhtoc=0
! initialize messages to checks
do j=1,M
  do i=1,nrw(j)
    toc(i,j)=llr((Nm(i,j)))
  enddo
enddo

ncnt=0

do iter=0,maxiterations

! Update bit log likelihood ratios (tov=0 in iteration 0).
  do i=1,N
    if( apmask(i) .ne. 1 ) then
      zn(i)=llr(i)+sum(tov(1:ncw,i))
    else
      zn(i)=llr(i)
    endif
  enddo

! Check to see if we have a codeword (check before we do any iteration).
  cw=0
  where( zn .gt. 0. ) cw=1
  ncheck=0
  do i=1,M
    synd(i)=sum(cw(Nm(1:nrw(i),i)))
    if( mod(synd(i),2) .ne. 0 ) ncheck=ncheck+1
!   if( mod(synd(i),2) .ne. 0 ) write(*,*) 'check ',i,' unsatisfied'
  enddo
! write(*,*) 'number of unsatisfied parity checks ',ncheck
  if( ncheck .eq. 0 ) then ! we have a codeword - reorder the columns and return it
    codeword=cw(colorder+1)
    decoded=codeword(M+1:N)
    nerr=0
    do i=1,N
      if( (2*cw(i)-1)*llr(i) .lt. 0.0 ) nerr=nerr+1
    enddo
    nharderror=nerr
    return
  endif

  if( iter.gt.0 ) then  ! this code block implements an early stopping criterion
!  if( iter.gt.10000 ) then  ! this code block implements an early stopping criterion
    nd=ncheck-nclast
    if( nd .lt. 0 ) then ! # of unsatisfied parity checks decreased
      ncnt=0  ! reset counter
    else
      ncnt=ncnt+1
    endif
!    write(*,*) iter,ncheck,nd,ncnt
    if( ncnt .ge. 5 .and. iter .ge. 10 .and. ncheck .gt. 15) then
      nharderror=-1
      return
    endif
  endif
  nclast=ncheck

! Send messages from bits to check nodes 
  do j=1,M
    do i=1,nrw(j)
      ibj=Nm(i,j)
      toc(i,j)=zn(ibj)  
      do kk=1,ncw ! subtract off what the bit had received from the check
        if( Mn(kk,ibj) .eq. j ) then  
          toc(i,j)=toc(i,j)-tov(kk,ibj)
        endif
      enddo
    enddo
  enddo

! send messages from check nodes to variable nodes
  do i=1,M
    tanhtoc(1:7,i)=tanh(-toc(1:7,i)/2)
  enddo

  do j=1,N
    do i=1,ncw
      ichk=Mn(i,j)  ! Mn(:,j) are the checks that include bit j
      Tmn=product(tanhtoc(1:nrw(ichk),ichk),mask=Nm(1:nrw(ichk),ichk).ne.j)
      call platanh(-Tmn,y)
!      y=atanh(-Tmn)
      tov(i,j)=2*y
    enddo
  enddo

enddo
nharderror=-1
return
end subroutine bpdecode174
