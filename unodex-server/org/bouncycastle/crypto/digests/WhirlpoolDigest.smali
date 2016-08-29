.class public final Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final BITCOUNT_ARRAY_SIZE:I = 0x20

.field private static final BYTE_LENGTH:I = 0x40

.field private static final C0:[J

.field private static final C1:[J

.field private static final C2:[J

.field private static final C3:[J

.field private static final C4:[J

.field private static final C5:[J

.field private static final C6:[J

.field private static final C7:[J

.field private static final DIGEST_LENGTH_BYTES:I = 0x40

.field private static final EIGHT:[S

.field private static final REDUCTION_POLYNOMIAL:I = 0x11d

.field private static final ROUNDS:I = 0xa

.field private static final SBOX:[I


# instance fields
.field private _K:[J

.field private _L:[J

.field private _bitCount:[S

.field private _block:[J

.field private _buffer:[B

.field private _bufferPos:I

.field private _hash:[J

.field private final _rc:[J

.field private _state:[J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x0

    const/16 v6, 0x20

    const/16 v5, 0x1f

    const/16 v4, 0x8

    const/16 v3, 0x100

    new-array v0, v3, [I

    const/16 v1, 0x18

    aput v1, v0, v7

    const/4 v1, 0x1

    const/16 v2, 0x23

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xe8

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x87

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xb8

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/16 v1, 0x36

    aput v1, v0, v4

    const/16 v1, 0x9

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xd2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xf5

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x6f

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x91

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xbc

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x9b

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8e

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x7b

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xe0

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xd7

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc2

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xfe

    aput v2, v0, v1

    const/16 v1, 0x57

    aput v1, v0, v5

    const/16 v1, 0x15

    aput v1, v0, v6

    const/16 v1, 0x21

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xe5

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x9f

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xf0

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xda

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x58

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xc9

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xb1

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x6b

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xbd

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x5d

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xf4

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xcb

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x67

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xe4

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x41

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xa7

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x7d

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xd8

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xfb

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xee

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x7c

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xdd

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x9e

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xca

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0xbf

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xad

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x51

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xaa

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x71

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xc8

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xd9

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xf2

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x5b

    aput v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x9a

    aput v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xb0

    aput v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xe9

    aput v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xd5

    aput v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0xbe

    aput v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xcd

    aput v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0xff

    aput v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x7a

    aput v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x90

    aput v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x5f

    aput v2, v0, v1

    const/16 v1, 0x6c

    aput v6, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x68

    aput v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xae

    aput v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x93

    aput v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xf1

    aput v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x79

    aput v4, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xec

    aput v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xdb

    aput v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xa1

    aput v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x81

    aput v7, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0xcf

    aput v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x76

    aput v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x82

    aput v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0xd6

    aput v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0xaf

    aput v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0xf3

    aput v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0xef

    aput v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0xa2

    aput v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0xea

    aput v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x65

    aput v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0xba

    aput v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0xde

    aput v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0xfd

    aput v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x92

    aput v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x75

    aput v2, v0, v1

    const/16 v1, 0x9e

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0xb2

    aput v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0xe6

    aput v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xa3

    aput v5, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0xd4

    aput v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0xa8

    aput v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x96

    aput v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0xf9

    aput v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xc5

    aput v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x59

    aput v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x84

    aput v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x72

    aput v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x5e

    aput v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x78

    aput v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x8c

    aput v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xd1

    aput v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0xa5

    aput v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0xe2

    aput v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x61

    aput v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x9c

    aput v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0xc7

    aput v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0xfc

    aput v2, v0, v1

    const/16 v1, 0xbf

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x99

    aput v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x6d

    aput v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0xfa

    aput v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0xdf

    aput v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xab

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0xce

    aput v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0xb7

    aput v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xeb

    aput v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x94

    aput v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0xf7

    aput v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0xb9

    aput v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xd3

    aput v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0xe7

    aput v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x6e

    aput v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0xc4

    aput v2, v0, v1

    const/16 v1, 0xdb

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x56

    aput v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x44

    aput v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0xa9

    aput v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0xbb

    aput v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0xc1

    aput v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x53

    aput v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0xdc

    aput v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x9d

    aput v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x6c

    aput v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x74

    aput v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xf6

    aput v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xac

    aput v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x89

    aput v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xe1

    aput v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0xb6

    aput v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0xd0

    aput v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xed

    aput v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x98

    aput v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xf8

    aput v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x86

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    new-array v0, v3, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    new-array v0, v6, [S

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    sget-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    aput-short v4, v0, v5

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/16 v2, 0x40

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    const/16 v2, 0x20

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    const/16 v2, 0x8

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_4b
    const/16 v2, 0x100

    move/from16 v0, v20

    if-lt v0, v2, :cond_60

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v2, 0x1

    :goto_5b
    const/16 v3, 0xa

    if-le v2, v3, :cond_11b

    return-void

    :cond_60
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    aget v3, v2, v20

    shl-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v9

    shl-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v5

    xor-int v8, v5, v3

    shl-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v7

    xor-int v10, v7, v3

    sget-object v11, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    move-object/from16 v2, p0

    move v4, v3

    move v6, v3

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v11, v20

    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    move-object/from16 v11, p0

    move v12, v10

    move v13, v3

    move v14, v3

    move v15, v5

    move/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v11 .. v19}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    move-object/from16 v11, p0

    move v12, v9

    move v13, v10

    move v14, v3

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v3

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    move-object/from16 v11, p0

    move v12, v8

    move v13, v9

    move v14, v10

    move v15, v3

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v3

    move/from16 v19, v7

    invoke-direct/range {v11 .. v19}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    move-object/from16 v6, p0

    move v11, v3

    move v12, v3

    move v13, v5

    move v14, v3

    invoke-direct/range {v6 .. v14}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    move-object/from16 v11, p0

    move v12, v3

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v3

    move/from16 v18, v3

    move/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    move-object/from16 v4, p0

    move v6, v3

    move v11, v3

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v12

    aput-wide v12, v2, v20

    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    move-object/from16 v11, p0

    move v12, v3

    move v13, v5

    move v14, v3

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v3

    invoke-direct/range {v11 .. v19}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v4

    aput-wide v4, v2, v20

    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto/16 :goto_4b

    :cond_11b
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    aget-wide v6, v5, v3

    const-wide/high16 v8, -0x100000000000000L

    and-long/2addr v6, v8

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    add-int/lit8 v8, v3, 0x1

    aget-wide v8, v5, v8

    const-wide/high16 v10, 0xff000000000000L

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    add-int/lit8 v8, v3, 0x2

    aget-wide v8, v5, v8

    const-wide v10, 0xff0000000000L

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    add-int/lit8 v8, v3, 0x3

    aget-wide v8, v5, v8

    const-wide v10, 0xff00000000L

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    add-int/lit8 v8, v3, 0x4

    aget-wide v8, v5, v8

    const-wide v10, 0xff000000L

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    add-int/lit8 v8, v3, 0x5

    aget-wide v8, v5, v8

    const-wide/32 v10, 0xff0000

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    add-int/lit8 v8, v3, 0x6

    aget-wide v8, v5, v8

    const-wide/32 v10, 0xff00

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    add-int/lit8 v3, v3, 0x7

    aget-wide v8, v5, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5b
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V
    .registers 4

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method private bytesToLongFromBuffer([BI)J
    .registers 11

    const-wide/16 v6, 0xff

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private convertLongToByteArray(J[BI)V
    .registers 12

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_6

    return-void

    :cond_6
    add-int v1, p4, v0

    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x38

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private copyBitLength()[B
    .registers 4

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private finish()V
    .registers 7

    const/16 v5, 0x20

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->copyBitLength()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_32

    :goto_1e
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-gt v1, v5, :cond_3b

    :goto_22
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-le v1, v5, :cond_40

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    return-void

    :cond_32
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    goto :goto_1e

    :cond_38
    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    :cond_3b
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-nez v1, :cond_38

    goto :goto_22

    :cond_40
    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_22
.end method

.method private increment()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v0, v0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    aget-short v3, v3, v0

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    ushr-int/lit8 v1, v2, 0x8

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v3, v0

    goto :goto_4
.end method

.method private maskWithReductionPolynomial(I)I
    .registers 6

    int-to-long v0, p1

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_c

    xor-int/lit16 p1, p1, 0x11d

    :cond_c
    return p1

    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private packIntoLong(IIIIIIII)J
    .registers 14

    int-to-long v0, p1

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p7

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p8

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private processFilledBuffer([BI)V
    .registers 9

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v2, v2

    if-lt v0, v2, :cond_12

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processBlock()V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void

    :cond_12
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    mul-int/lit8 v4, v0, 0x8

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->bytesToLongFromBuffer([BI)J

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 7

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->finish()V

    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0x8

    if-lt v0, v1, :cond_10

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v0

    return v0

    :cond_10
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v2, v1, v0

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p2

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->convertLongToByteArray(J[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Whirlpool"

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method protected processBlock()V
    .registers 15

    const/16 v13, 0x20

    const/16 v12, 0x18

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-lt v1, v10, :cond_15

    const/4 v1, 0x1

    move v2, v1

    :goto_e
    const/16 v1, 0xa

    if-le v2, v1, :cond_29

    :goto_12
    if-lt v0, v10, :cond_1e2

    return-void

    :cond_15
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v6, v6, v1

    aput-wide v6, v3, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_29
    move v1, v0

    :goto_2a
    if-lt v1, v10, :cond_52

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v4, v4

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v4, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    aget-wide v6, v3, v2

    xor-long/2addr v4, v6

    aput-wide v4, v1, v0

    move v1, v0

    :goto_42
    if-lt v1, v10, :cond_119

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v4, v4

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    :cond_52
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x38

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x1

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x30

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x2

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x28

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x3

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v13

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x4

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v12

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x5

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v11

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x6

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v10

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x7

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2a

    :cond_119
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v4, v4, v1

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x38

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x1

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x30

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x2

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x28

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x3

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v13

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x4

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v12

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x5

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v11

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x6

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v10

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x7

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_42

    :cond_1e2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v2, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    aget-wide v4, v4, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v6, v6, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12
.end method

.method public reset()V
    .registers 5

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 6

    const/4 v3, 0x0

    check-cast p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public update(B)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v1, v1

    if-eq v0, v1, :cond_18

    :goto_14
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->increment()V

    return-void

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    goto :goto_14
.end method

.method public update([BII)V
    .registers 5

    :goto_0
    if-gtz p3, :cond_3

    return-void

    :cond_3
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method
