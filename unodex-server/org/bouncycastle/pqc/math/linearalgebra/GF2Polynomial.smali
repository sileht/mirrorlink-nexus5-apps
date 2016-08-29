.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final bitMask:[I

.field private static final parity:[Z

.field private static rand:Ljava/util/Random;

.field private static final reverseRightMask:[I

.field private static final squaringTable:[S


# instance fields
.field private blocks:I

.field private len:I

.field private value:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    const/16 v0, 0x100

    new-array v0, v0, [Z

    aput-boolean v3, v0, v3

    aput-boolean v4, v0, v4

    aput-boolean v4, v0, v7

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    aput-boolean v4, v0, v5

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    aput-boolean v4, v0, v6

    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    const/16 v1, 0x14

    aput-boolean v3, v0, v1

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    const/16 v1, 0x1a

    aput-boolean v4, v0, v1

    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    const/16 v1, 0x20

    aput-boolean v4, v0, v1

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    const/16 v1, 0x23

    aput-boolean v4, v0, v1

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    const/16 v1, 0x28

    aput-boolean v3, v0, v1

    const/16 v1, 0x29

    aput-boolean v4, v0, v1

    const/16 v1, 0x2a

    aput-boolean v4, v0, v1

    const/16 v1, 0x2b

    aput-boolean v3, v0, v1

    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    const/16 v1, 0x2f

    aput-boolean v4, v0, v1

    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    const/16 v1, 0x31

    aput-boolean v4, v0, v1

    const/16 v1, 0x32

    aput-boolean v4, v0, v1

    const/16 v1, 0x33

    aput-boolean v3, v0, v1

    const/16 v1, 0x34

    aput-boolean v4, v0, v1

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    const/16 v1, 0x37

    aput-boolean v4, v0, v1

    const/16 v1, 0x38

    aput-boolean v4, v0, v1

    const/16 v1, 0x39

    aput-boolean v3, v0, v1

    const/16 v1, 0x3a

    aput-boolean v3, v0, v1

    const/16 v1, 0x3b

    aput-boolean v4, v0, v1

    const/16 v1, 0x3c

    aput-boolean v3, v0, v1

    const/16 v1, 0x3d

    aput-boolean v4, v0, v1

    const/16 v1, 0x3e

    aput-boolean v4, v0, v1

    const/16 v1, 0x3f

    aput-boolean v3, v0, v1

    const/16 v1, 0x40

    aput-boolean v4, v0, v1

    const/16 v1, 0x41

    aput-boolean v3, v0, v1

    const/16 v1, 0x42

    aput-boolean v3, v0, v1

    const/16 v1, 0x43

    aput-boolean v4, v0, v1

    const/16 v1, 0x44

    aput-boolean v3, v0, v1

    const/16 v1, 0x45

    aput-boolean v4, v0, v1

    const/16 v1, 0x46

    aput-boolean v4, v0, v1

    const/16 v1, 0x47

    aput-boolean v3, v0, v1

    const/16 v1, 0x48

    aput-boolean v3, v0, v1

    const/16 v1, 0x49

    aput-boolean v4, v0, v1

    const/16 v1, 0x4a

    aput-boolean v4, v0, v1

    const/16 v1, 0x4b

    aput-boolean v3, v0, v1

    const/16 v1, 0x4c

    aput-boolean v4, v0, v1

    const/16 v1, 0x4d

    aput-boolean v3, v0, v1

    const/16 v1, 0x4e

    aput-boolean v3, v0, v1

    const/16 v1, 0x4f

    aput-boolean v4, v0, v1

    const/16 v1, 0x50

    aput-boolean v3, v0, v1

    const/16 v1, 0x51

    aput-boolean v4, v0, v1

    const/16 v1, 0x52

    aput-boolean v4, v0, v1

    const/16 v1, 0x53

    aput-boolean v3, v0, v1

    const/16 v1, 0x54

    aput-boolean v4, v0, v1

    const/16 v1, 0x55

    aput-boolean v3, v0, v1

    const/16 v1, 0x56

    aput-boolean v3, v0, v1

    const/16 v1, 0x57

    aput-boolean v4, v0, v1

    const/16 v1, 0x58

    aput-boolean v4, v0, v1

    const/16 v1, 0x59

    aput-boolean v3, v0, v1

    const/16 v1, 0x5a

    aput-boolean v3, v0, v1

    const/16 v1, 0x5b

    aput-boolean v4, v0, v1

    const/16 v1, 0x5c

    aput-boolean v3, v0, v1

    const/16 v1, 0x5d

    aput-boolean v4, v0, v1

    const/16 v1, 0x5e

    aput-boolean v4, v0, v1

    const/16 v1, 0x5f

    aput-boolean v3, v0, v1

    const/16 v1, 0x60

    aput-boolean v3, v0, v1

    const/16 v1, 0x61

    aput-boolean v4, v0, v1

    const/16 v1, 0x62

    aput-boolean v4, v0, v1

    const/16 v1, 0x63

    aput-boolean v3, v0, v1

    const/16 v1, 0x64

    aput-boolean v4, v0, v1

    const/16 v1, 0x65

    aput-boolean v3, v0, v1

    const/16 v1, 0x66

    aput-boolean v3, v0, v1

    const/16 v1, 0x67

    aput-boolean v4, v0, v1

    const/16 v1, 0x68

    aput-boolean v4, v0, v1

    const/16 v1, 0x69

    aput-boolean v3, v0, v1

    const/16 v1, 0x6a

    aput-boolean v3, v0, v1

    const/16 v1, 0x6b

    aput-boolean v4, v0, v1

    const/16 v1, 0x6c

    aput-boolean v3, v0, v1

    const/16 v1, 0x6d

    aput-boolean v4, v0, v1

    const/16 v1, 0x6e

    aput-boolean v4, v0, v1

    const/16 v1, 0x6f

    aput-boolean v3, v0, v1

    const/16 v1, 0x70

    aput-boolean v4, v0, v1

    const/16 v1, 0x71

    aput-boolean v3, v0, v1

    const/16 v1, 0x72

    aput-boolean v3, v0, v1

    const/16 v1, 0x73

    aput-boolean v4, v0, v1

    const/16 v1, 0x74

    aput-boolean v3, v0, v1

    const/16 v1, 0x75

    aput-boolean v4, v0, v1

    const/16 v1, 0x76

    aput-boolean v4, v0, v1

    const/16 v1, 0x77

    aput-boolean v3, v0, v1

    const/16 v1, 0x78

    aput-boolean v3, v0, v1

    const/16 v1, 0x79

    aput-boolean v4, v0, v1

    const/16 v1, 0x7a

    aput-boolean v4, v0, v1

    const/16 v1, 0x7b

    aput-boolean v3, v0, v1

    const/16 v1, 0x7c

    aput-boolean v4, v0, v1

    const/16 v1, 0x7d

    aput-boolean v3, v0, v1

    const/16 v1, 0x7e

    aput-boolean v3, v0, v1

    const/16 v1, 0x7f

    aput-boolean v4, v0, v1

    const/16 v1, 0x80

    aput-boolean v4, v0, v1

    const/16 v1, 0x81

    aput-boolean v3, v0, v1

    const/16 v1, 0x82

    aput-boolean v3, v0, v1

    const/16 v1, 0x83

    aput-boolean v4, v0, v1

    const/16 v1, 0x84

    aput-boolean v3, v0, v1

    const/16 v1, 0x85

    aput-boolean v4, v0, v1

    const/16 v1, 0x86

    aput-boolean v4, v0, v1

    const/16 v1, 0x87

    aput-boolean v3, v0, v1

    const/16 v1, 0x88

    aput-boolean v3, v0, v1

    const/16 v1, 0x89

    aput-boolean v4, v0, v1

    const/16 v1, 0x8a

    aput-boolean v4, v0, v1

    const/16 v1, 0x8b

    aput-boolean v3, v0, v1

    const/16 v1, 0x8c

    aput-boolean v4, v0, v1

    const/16 v1, 0x8d

    aput-boolean v3, v0, v1

    const/16 v1, 0x8e

    aput-boolean v3, v0, v1

    const/16 v1, 0x8f

    aput-boolean v4, v0, v1

    const/16 v1, 0x90

    aput-boolean v3, v0, v1

    const/16 v1, 0x91

    aput-boolean v4, v0, v1

    const/16 v1, 0x92

    aput-boolean v4, v0, v1

    const/16 v1, 0x93

    aput-boolean v3, v0, v1

    const/16 v1, 0x94

    aput-boolean v4, v0, v1

    const/16 v1, 0x95

    aput-boolean v3, v0, v1

    const/16 v1, 0x96

    aput-boolean v3, v0, v1

    const/16 v1, 0x97

    aput-boolean v4, v0, v1

    const/16 v1, 0x98

    aput-boolean v4, v0, v1

    const/16 v1, 0x99

    aput-boolean v3, v0, v1

    const/16 v1, 0x9a

    aput-boolean v3, v0, v1

    const/16 v1, 0x9b

    aput-boolean v4, v0, v1

    const/16 v1, 0x9c

    aput-boolean v3, v0, v1

    const/16 v1, 0x9d

    aput-boolean v4, v0, v1

    const/16 v1, 0x9e

    aput-boolean v4, v0, v1

    const/16 v1, 0x9f

    aput-boolean v3, v0, v1

    const/16 v1, 0xa0

    aput-boolean v3, v0, v1

    const/16 v1, 0xa1

    aput-boolean v4, v0, v1

    const/16 v1, 0xa2

    aput-boolean v4, v0, v1

    const/16 v1, 0xa3

    aput-boolean v3, v0, v1

    const/16 v1, 0xa4

    aput-boolean v4, v0, v1

    const/16 v1, 0xa5

    aput-boolean v3, v0, v1

    const/16 v1, 0xa6

    aput-boolean v3, v0, v1

    const/16 v1, 0xa7

    aput-boolean v4, v0, v1

    const/16 v1, 0xa8

    aput-boolean v4, v0, v1

    const/16 v1, 0xa9

    aput-boolean v3, v0, v1

    const/16 v1, 0xaa

    aput-boolean v3, v0, v1

    const/16 v1, 0xab

    aput-boolean v4, v0, v1

    const/16 v1, 0xac

    aput-boolean v3, v0, v1

    const/16 v1, 0xad

    aput-boolean v4, v0, v1

    const/16 v1, 0xae

    aput-boolean v4, v0, v1

    const/16 v1, 0xaf

    aput-boolean v3, v0, v1

    const/16 v1, 0xb0

    aput-boolean v4, v0, v1

    const/16 v1, 0xb1

    aput-boolean v3, v0, v1

    const/16 v1, 0xb2

    aput-boolean v3, v0, v1

    const/16 v1, 0xb3

    aput-boolean v4, v0, v1

    const/16 v1, 0xb4

    aput-boolean v3, v0, v1

    const/16 v1, 0xb5

    aput-boolean v4, v0, v1

    const/16 v1, 0xb6

    aput-boolean v4, v0, v1

    const/16 v1, 0xb7

    aput-boolean v3, v0, v1

    const/16 v1, 0xb8

    aput-boolean v3, v0, v1

    const/16 v1, 0xb9

    aput-boolean v4, v0, v1

    const/16 v1, 0xba

    aput-boolean v4, v0, v1

    const/16 v1, 0xbb

    aput-boolean v3, v0, v1

    const/16 v1, 0xbc

    aput-boolean v4, v0, v1

    const/16 v1, 0xbd

    aput-boolean v3, v0, v1

    const/16 v1, 0xbe

    aput-boolean v3, v0, v1

    const/16 v1, 0xbf

    aput-boolean v4, v0, v1

    const/16 v1, 0xc0

    aput-boolean v3, v0, v1

    const/16 v1, 0xc1

    aput-boolean v4, v0, v1

    const/16 v1, 0xc2

    aput-boolean v4, v0, v1

    const/16 v1, 0xc3

    aput-boolean v3, v0, v1

    const/16 v1, 0xc4

    aput-boolean v4, v0, v1

    const/16 v1, 0xc5

    aput-boolean v3, v0, v1

    const/16 v1, 0xc6

    aput-boolean v3, v0, v1

    const/16 v1, 0xc7

    aput-boolean v4, v0, v1

    const/16 v1, 0xc8

    aput-boolean v4, v0, v1

    const/16 v1, 0xc9

    aput-boolean v3, v0, v1

    const/16 v1, 0xca

    aput-boolean v3, v0, v1

    const/16 v1, 0xcb

    aput-boolean v4, v0, v1

    const/16 v1, 0xcc

    aput-boolean v3, v0, v1

    const/16 v1, 0xcd

    aput-boolean v4, v0, v1

    const/16 v1, 0xce

    aput-boolean v4, v0, v1

    const/16 v1, 0xcf

    aput-boolean v3, v0, v1

    const/16 v1, 0xd0

    aput-boolean v4, v0, v1

    const/16 v1, 0xd1

    aput-boolean v3, v0, v1

    const/16 v1, 0xd2

    aput-boolean v3, v0, v1

    const/16 v1, 0xd3

    aput-boolean v4, v0, v1

    const/16 v1, 0xd4

    aput-boolean v3, v0, v1

    const/16 v1, 0xd5

    aput-boolean v4, v0, v1

    const/16 v1, 0xd6

    aput-boolean v4, v0, v1

    const/16 v1, 0xd7

    aput-boolean v3, v0, v1

    const/16 v1, 0xd8

    aput-boolean v3, v0, v1

    const/16 v1, 0xd9

    aput-boolean v4, v0, v1

    const/16 v1, 0xda

    aput-boolean v4, v0, v1

    const/16 v1, 0xdb

    aput-boolean v3, v0, v1

    const/16 v1, 0xdc

    aput-boolean v4, v0, v1

    const/16 v1, 0xdd

    aput-boolean v3, v0, v1

    const/16 v1, 0xde

    aput-boolean v3, v0, v1

    const/16 v1, 0xdf

    aput-boolean v4, v0, v1

    const/16 v1, 0xe0

    aput-boolean v4, v0, v1

    const/16 v1, 0xe1

    aput-boolean v3, v0, v1

    const/16 v1, 0xe2

    aput-boolean v3, v0, v1

    const/16 v1, 0xe3

    aput-boolean v4, v0, v1

    const/16 v1, 0xe4

    aput-boolean v3, v0, v1

    const/16 v1, 0xe5

    aput-boolean v4, v0, v1

    const/16 v1, 0xe6

    aput-boolean v4, v0, v1

    const/16 v1, 0xe7

    aput-boolean v3, v0, v1

    const/16 v1, 0xe8

    aput-boolean v3, v0, v1

    const/16 v1, 0xe9

    aput-boolean v4, v0, v1

    const/16 v1, 0xea

    aput-boolean v4, v0, v1

    const/16 v1, 0xeb

    aput-boolean v3, v0, v1

    const/16 v1, 0xec

    aput-boolean v4, v0, v1

    const/16 v1, 0xed

    aput-boolean v3, v0, v1

    const/16 v1, 0xee

    aput-boolean v3, v0, v1

    const/16 v1, 0xef

    aput-boolean v4, v0, v1

    const/16 v1, 0xf0

    aput-boolean v3, v0, v1

    const/16 v1, 0xf1

    aput-boolean v4, v0, v1

    const/16 v1, 0xf2

    aput-boolean v4, v0, v1

    const/16 v1, 0xf3

    aput-boolean v3, v0, v1

    const/16 v1, 0xf4

    aput-boolean v4, v0, v1

    const/16 v1, 0xf5

    aput-boolean v3, v0, v1

    const/16 v1, 0xf6

    aput-boolean v3, v0, v1

    const/16 v1, 0xf7

    aput-boolean v4, v0, v1

    const/16 v1, 0xf8

    aput-boolean v4, v0, v1

    const/16 v1, 0xf9

    aput-boolean v3, v0, v1

    const/16 v1, 0xfa

    aput-boolean v3, v0, v1

    const/16 v1, 0xfb

    aput-boolean v4, v0, v1

    const/16 v1, 0xfc

    aput-boolean v3, v0, v1

    const/16 v1, 0xfd

    aput-boolean v4, v0, v1

    const/16 v1, 0xfe

    aput-boolean v4, v0, v1

    const/16 v1, 0xff

    aput-boolean v3, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    const/16 v0, 0x100

    new-array v0, v0, [S

    aput-short v3, v0, v3

    aput-short v4, v0, v4

    aput-short v5, v0, v7

    const/4 v1, 0x3

    const/4 v2, 0x5

    aput-short v2, v0, v1

    aput-short v6, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x11

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x14

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x15

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x40

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x41

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x44

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x45

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x50

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x54

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x55

    aput-short v2, v0, v1

    const/16 v1, 0x100

    aput-short v1, v0, v6

    const/16 v1, 0x11

    const/16 v2, 0x101

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x104

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x105

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x110

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x111

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x114

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x115

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x140

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x141

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x144

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x145

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x150

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x151

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x154

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x155

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x400

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x401

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x404

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x405

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x410

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x411

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x414

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x415

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x440

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x441

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x444

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x445

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x450

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x451

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x454

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x455

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x500

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x501

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x504

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x505

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x510

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x511

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x514

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x515

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x540

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x541

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x544

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x545

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x550

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x551

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x554

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x555

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x1000

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x1001

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x1004

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x1005

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x1010

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x1011

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x1014

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x1015

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x1040

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x1041

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x1044

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x1045

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x1050

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x1051

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x1054

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x1055

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1100

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1101

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1104

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1105

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1110

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1111

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x1114

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x1115

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x1140

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x1141

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x1144

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x1145

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x1150

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x1151

    aput-short v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x1154

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x1155

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x1400

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1401

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1404

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1405

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1410

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1411

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1414

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x1415

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x1440

    aput-short v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x1441

    aput-short v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x1444

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x1445

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x1450

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x1451

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x1454

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x1455

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x1500

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x1501

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x1504

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x1505

    aput-short v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x1510

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x1511

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x1514

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x1515

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x1540

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x1541

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x1544

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x1545

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x1550

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x1551

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x1554

    aput-short v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x1555

    aput-short v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x4000

    aput-short v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x4001

    aput-short v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x4004

    aput-short v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x4005

    aput-short v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x4010

    aput-short v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x4011

    aput-short v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x4014

    aput-short v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x4015

    aput-short v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x4040

    aput-short v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x4041

    aput-short v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x4044

    aput-short v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x4045

    aput-short v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x4050

    aput-short v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x4051

    aput-short v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x4054

    aput-short v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x4055

    aput-short v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x4100

    aput-short v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x4101

    aput-short v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x4104

    aput-short v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x4105

    aput-short v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x4110

    aput-short v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x4111

    aput-short v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x4114

    aput-short v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x4115

    aput-short v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x4140

    aput-short v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x4141

    aput-short v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x4144

    aput-short v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x4145

    aput-short v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x4150

    aput-short v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x4151

    aput-short v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x4154

    aput-short v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x4155

    aput-short v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x4400

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x4401

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x4404

    aput-short v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x4405

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x4410

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x4411

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x4414

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x4415

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x4440

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x4441

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x4444

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x4445

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x4450

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x4451

    aput-short v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x4454

    aput-short v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x4455

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x4500

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x4501

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x4504

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x4505

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x4510

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x4511

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x4514

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x4515

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x4540

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x4541

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x4544

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x4545

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x4550

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x4551

    aput-short v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x4554

    aput-short v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x4555

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x5000

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x5001

    aput-short v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x5004

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x5005

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x5010

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x5011

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x5014

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x5015

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x5040

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x5041

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x5044

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x5045

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x5050

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x5051

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x5054

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x5055

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x5100

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x5101

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x5104

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x5105

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x5110

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x5111

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x5114

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x5115

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x5140

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x5141

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x5144

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x5145

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x5150

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x5151

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x5154

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x5155

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x5400

    aput-short v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x5401

    aput-short v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x5404

    aput-short v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x5405

    aput-short v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x5410

    aput-short v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x5411

    aput-short v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x5414

    aput-short v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x5415

    aput-short v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x5440

    aput-short v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x5441

    aput-short v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x5444

    aput-short v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x5445

    aput-short v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x5450

    aput-short v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x5451

    aput-short v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x5454

    aput-short v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x5455

    aput-short v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x5500

    aput-short v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x5501

    aput-short v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x5504

    aput-short v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x5505

    aput-short v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x5510

    aput-short v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x5511

    aput-short v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x5514

    aput-short v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x5515

    aput-short v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x5540

    aput-short v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x5541

    aput-short v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x5544

    aput-short v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x5545

    aput-short v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x5550

    aput-short v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x5551

    aput-short v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x5554

    aput-short v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x5555

    aput-short v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    const/16 v0, 0x21

    new-array v0, v0, [I

    aput v4, v0, v3

    aput v7, v0, v4

    aput v5, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x8

    aput v2, v0, v1

    aput v6, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x8000

    aput v2, v0, v1

    const/high16 v1, 0x10000

    aput v1, v0, v6

    const/16 v1, 0x11

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/16 v1, 0x13

    const/high16 v2, 0x80000

    aput v2, v0, v1

    const/16 v1, 0x14

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/high16 v2, 0x10000000

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    const/16 v0, 0x21

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v4, v0, v4

    const/4 v1, 0x3

    aput v1, v0, v7

    const/4 v1, 0x3

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v1, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xff

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1ff

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3ff

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x7ff

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xfff

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1fff

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3fff

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x7fff

    aput v2, v0, v1

    const v1, 0xffff

    aput v1, v0, v6

    const/16 v1, 0x11

    const v2, 0x1ffff

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x3ffff

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7ffff

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0xfffff

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x1fffff

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x3fffff

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7fffff

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0xffffff

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x1ffffff

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x3ffffff

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7ffffff

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0xfffffff

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x1fffffff

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x3fffffff    # 1.9999999f

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7fffffff

    aput v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, -0x1

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_17

    :goto_6
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void

    :cond_17
    move p1, v0

    goto :goto_6
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_64

    :goto_6
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const-string/jumbo v0, "ZERO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "ONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "RANDOM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string/jumbo v0, "X"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string/jumbo v0, "ALL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: GF2Polynomial was called using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    move p1, v0

    goto :goto_6

    :cond_66
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignZero()V

    :goto_69
    return-void

    :cond_6a
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignOne()V

    goto :goto_69

    :cond_6e
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    goto :goto_69

    :cond_72
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignX()V

    goto :goto_69

    :cond_76
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignAll()V

    goto :goto_69
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .registers 13

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_3f

    :goto_7
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aget-byte v2, v1, v3

    if-eqz v2, :cond_41

    move-object v0, v1

    :goto_20
    array-length v1, v0

    and-int/lit8 v2, v1, 0x3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    move v1, v3

    :goto_2b
    if-lt v1, v2, :cond_4c

    move v1, v3

    :goto_2e
    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    shr-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_62

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_a4

    :goto_3b
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    return-void

    :cond_3f
    move p1, v0

    goto :goto_7

    :cond_41
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [B

    array-length v4, v2

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_20

    :cond_4c
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v6, v4, -0x1

    aget v7, v5, v6

    aget-byte v8, v0, v1

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, -0x1

    sub-int/2addr v9, v1

    shl-int/lit8 v9, v9, 0x3

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_62
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v5, v2, -0x1

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v5, v2, -0x2

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_a4
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v4, v4, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_3b
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_1a

    :goto_6
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    return-void

    :cond_1a
    move p1, v0

    goto :goto_6
.end method

.method public constructor <init>(I[B)V
    .registers 13

    const/high16 v9, 0xff0000

    const v8, 0xff00

    const/4 v1, 0x0

    const/high16 v7, -0x1000000

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_4d

    :goto_e
    add-int/lit8 v2, p1, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2b
    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_4f

    add-int/lit8 v1, v2, -0x1

    array-length v2, p2

    shl-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    if-gtz v2, :cond_8a

    :goto_41
    if-gt v2, v0, :cond_99

    :goto_43
    const/4 v0, 0x2

    if-gt v2, v0, :cond_a8

    :goto_46
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    return-void

    :cond_4d
    move p1, v0

    goto :goto_e

    :cond_4f
    array-length v3, p2

    shl-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v1

    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v1

    add-int/lit8 v6, v3, -0x2

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v1

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x18

    and-int/2addr v3, v7

    or-int/2addr v3, v5

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_8a
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v5, v2, -0x1

    aget-byte v5, p2, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v1

    goto :goto_41

    :cond_99
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v0, v1

    add-int/lit8 v4, v2, -0x2

    aget-byte v4, p2, v4

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    aput v3, v0, v1

    goto :goto_43

    :cond_a8
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v0, v1

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, p2, v2

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v7

    or-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_46
.end method

.method public constructor <init>(I[I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_27

    :goto_7
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void

    :cond_27
    move p1, v0

    goto :goto_7
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-void
.end method

.method private doShiftBlocksLeft(I)V
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v2

    if-le v0, v2, :cond_1a

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v3, p1

    invoke-static {v2, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :cond_19
    return-void

    :cond_1a
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_1c
    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_2a

    move v0, v1

    :goto_21
    if-ge v0, p1, :cond_19

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2a
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v0, p1

    aget v3, v3, v4

    aput v3, v2, v0

    goto :goto_1c
.end method

.method private karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 10

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x20

    if-le v1, v2, :cond_80

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x40

    if-le v1, v2, :cond_8f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x80

    if-le v1, v2, :cond_9a

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x100

    if-le v1, v2, :cond_a5

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x200

    if-le v1, v2, :cond_b0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v1, v2, v1

    add-int/lit8 v2, v1, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    shr-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    shr-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    shr-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p1, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v7

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v7, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    :cond_80
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v3

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_8f
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_9a
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_a5
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0

    :cond_b0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult512([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-object v0
.end method

.method private lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v1, p1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static mult128([I[I)[I
    .registers 12

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    array-length v3, p0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_122

    :goto_19
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    array-length v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    array-length v5, p1

    const/4 v6, 0x2

    if-gt v5, v6, :cond_131

    :goto_2e
    const/4 v5, 0x1

    aget v5, v2, v5

    if-eqz v5, :cond_140

    :cond_33
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v5

    const/4 v6, 0x7

    const/4 v7, 0x7

    aget v7, v0, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    const/4 v7, 0x5

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x3

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x2

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v5, v5, v8

    :goto_78
    xor-int/2addr v5, v7

    aput v5, v0, v6

    :goto_7b
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x0

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x0

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    if-eqz v5, :cond_182

    :cond_a8
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v2, v2, v6

    :goto_d1
    xor-int/2addr v2, v5

    aput v2, v0, v4

    const/4 v2, 0x1

    aget v2, v1, v2

    if-eqz v2, :cond_1a4

    :cond_d9
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x4

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v1, v1, v4

    :goto_11e
    xor-int/2addr v1, v3

    aput v1, v0, v2

    return-object v0

    :cond_122
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    array-length v6, p0

    add-int/lit8 v6, v6, -0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_19

    :cond_131
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    array-length v8, p1

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2e

    :cond_140
    const/4 v5, 0x1

    aget v5, v4, v5

    if-nez v5, :cond_33

    const/4 v5, 0x0

    aget v5, v2, v5

    if-eqz v5, :cond_17b

    :cond_14a
    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x5

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v5, v5, v8

    goto/16 :goto_78

    :cond_17b
    const/4 v5, 0x0

    aget v5, v4, v5

    if-nez v5, :cond_14a

    goto/16 :goto_7b

    :cond_182
    const/4 v5, 0x1

    aget v5, v4, v5

    if-nez v5, :cond_a8

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v2, v2, v6

    goto/16 :goto_d1

    :cond_1a4
    const/4 v2, 0x1

    aget v2, v3, v2

    if-nez v2, :cond_d9

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    aget v2, v3, v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v1, v1, v4

    goto/16 :goto_11e
.end method

.method private static mult256([I[I)[I
    .registers 12

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    array-length v3, p0

    const/4 v4, 0x4

    if-gt v3, v4, :cond_210

    :goto_19
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x4

    new-array v4, v4, [I

    array-length v5, p1

    const/4 v6, 0x4

    if-gt v5, v6, :cond_21f

    :goto_2e
    const/4 v5, 0x3

    aget v5, v2, v5

    if-eqz v5, :cond_22e

    :cond_33
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v5

    const/16 v6, 0xf

    const/16 v7, 0xf

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xe

    const/16 v7, 0xe

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xd

    const/16 v7, 0xd

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xc

    const/16 v7, 0xc

    aget v7, v0, v7

    const/4 v8, 0x4

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xb

    const/16 v7, 0xb

    aget v7, v0, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    const/4 v9, 0x7

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xa

    const/16 v7, 0xa

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x6

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x9

    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x5

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    const/16 v7, 0x8

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x4

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x7

    const/4 v7, 0x7

    aget v7, v0, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    const/4 v7, 0x5

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v5, v5, v8

    :goto_cc
    xor-int/2addr v5, v7

    aput v5, v0, v6

    :goto_cf
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x0

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x2

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget v6, v2, v6

    const/4 v7, 0x3

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x0

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget v6, v4, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget v6, v4, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v2

    const/16 v4, 0xb

    const/16 v5, 0xb

    aget v5, v0, v5

    const/4 v6, 0x7

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xa

    const/16 v5, 0xa

    aget v5, v0, v5

    const/4 v6, 0x6

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x9

    const/16 v5, 0x9

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x8

    const/16 v5, 0x8

    aget v5, v0, v5

    const/4 v6, 0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v2, v2, v6

    xor-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0xb

    aget v3, v0, v3

    const/4 v4, 0x7

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0xa

    aget v3, v0, v3

    const/4 v4, 0x6

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x9

    aget v3, v0, v3

    const/4 v4, 0x5

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x8

    aget v3, v0, v3

    const/4 v4, 0x4

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x7

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x6

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x4

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x4

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v1, v1, v4

    xor-int/2addr v1, v3

    aput v1, v0, v2

    return-object v0

    :cond_210
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    array-length v6, p0

    add-int/lit8 v6, v6, -0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_19

    :cond_21f
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    array-length v8, p1

    add-int/lit8 v8, v8, -0x4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2e

    :cond_22e
    const/4 v5, 0x2

    aget v5, v2, v5

    if-nez v5, :cond_33

    const/4 v5, 0x3

    aget v5, v4, v5

    if-nez v5, :cond_33

    const/4 v5, 0x2

    aget v5, v4, v5

    if-nez v5, :cond_33

    const/4 v5, 0x1

    aget v5, v2, v5

    if-eqz v5, :cond_29d

    :cond_242
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v5

    const/16 v6, 0xb

    const/16 v7, 0xb

    aget v7, v0, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xa

    const/16 v7, 0xa

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x9

    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    const/16 v7, 0x8

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x7

    const/4 v7, 0x7

    aget v7, v0, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    const/4 v7, 0x5

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v5, v5, v8

    goto/16 :goto_cc

    :cond_29d
    const/4 v5, 0x1

    aget v5, v4, v5

    if-nez v5, :cond_242

    const/4 v5, 0x0

    aget v5, v2, v5

    if-eqz v5, :cond_2dc

    :cond_2a7
    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v5

    const/16 v6, 0x9

    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    const/16 v7, 0x8

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    const/4 v7, 0x5

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v5, v5, v8

    goto/16 :goto_cc

    :cond_2dc
    const/4 v5, 0x0

    aget v5, v4, v5

    if-nez v5, :cond_2a7

    goto/16 :goto_cf
.end method

.method private static mult32(II)[I
    .registers 16

    const-wide v12, 0xffffffffL

    const/16 v10, 0x20

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x2

    new-array v6, v0, [I

    if-nez p0, :cond_f

    :cond_e
    return-object v6

    :cond_f
    if-eqz p1, :cond_e

    int-to-long v0, p1

    and-long v4, v0, v12

    const-wide/16 v0, 0x0

    move v2, v3

    :goto_17
    if-le v2, v10, :cond_23

    ushr-long v4, v0, v10

    long-to-int v2, v4

    aput v2, v6, v3

    and-long/2addr v0, v12

    long-to-int v0, v0

    aput v0, v6, v9

    return-object v6

    :cond_23
    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    and-int/2addr v7, p0

    if-nez v7, :cond_30

    :goto_2c
    shl-long/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_30
    xor-long/2addr v0, v4

    goto :goto_2c
.end method

.method private static mult512([I[I)[I
    .registers 12

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    array-length v3, p0

    const/16 v4, 0x8

    if-gt v3, v4, :cond_43b

    :goto_1d
    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    array-length v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x8

    new-array v4, v4, [I

    array-length v5, p1

    const/16 v6, 0x8

    if-gt v5, v6, :cond_44c

    :goto_36
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v5

    const/16 v6, 0x1f

    const/16 v7, 0x1f

    aget v7, v0, v7

    const/16 v8, 0xf

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    aget v7, v0, v7

    const/16 v8, 0xe

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1d

    const/16 v7, 0x1d

    aget v7, v0, v7

    const/16 v8, 0xd

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1c

    const/16 v7, 0x1c

    aget v7, v0, v7

    const/16 v8, 0xc

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1b

    const/16 v7, 0x1b

    aget v7, v0, v7

    const/16 v8, 0xb

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    aget v7, v0, v7

    const/16 v8, 0xa

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x19

    const/16 v7, 0x19

    aget v7, v0, v7

    const/16 v8, 0x9

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x18

    const/16 v7, 0x18

    aget v7, v0, v7

    const/16 v8, 0x8

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x17

    const/16 v7, 0x17

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v8, v5, v8

    const/16 v9, 0xf

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x16

    const/16 v7, 0x16

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v5, v8

    const/16 v9, 0xe

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x15

    const/16 v7, 0x15

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v5, v8

    const/16 v9, 0xd

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x14

    const/16 v7, 0x14

    aget v7, v0, v7

    const/4 v8, 0x4

    aget v8, v5, v8

    const/16 v9, 0xc

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x13

    const/16 v7, 0x13

    aget v7, v0, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    const/16 v9, 0xb

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x12

    const/16 v7, 0x12

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    const/16 v9, 0xa

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x11

    const/16 v7, 0x11

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    const/16 v9, 0x9

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x10

    const/16 v7, 0x10

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    const/16 v9, 0x8

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xf

    const/16 v7, 0xf

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xe

    const/16 v7, 0xe

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xd

    const/16 v7, 0xd

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xc

    const/16 v7, 0xc

    aget v7, v0, v7

    const/4 v8, 0x4

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xb

    const/16 v7, 0xb

    aget v7, v0, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xa

    const/16 v7, 0xa

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x9

    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    const/16 v7, 0x8

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v5, v5, v8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x0

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x2

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget v6, v2, v6

    const/4 v7, 0x3

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x4

    const/4 v6, 0x4

    aget v6, v2, v6

    const/4 v7, 0x4

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget v6, v2, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x6

    const/4 v6, 0x6

    aget v6, v2, v6

    const/4 v7, 0x6

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x7

    const/4 v6, 0x7

    aget v6, v2, v6

    const/4 v7, 0x7

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x0

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget v6, v4, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget v6, v4, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x4

    aget v6, v4, v6

    const/4 v7, 0x4

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget v6, v4, v6

    const/4 v7, 0x5

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x6

    aget v6, v4, v6

    const/4 v7, 0x6

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x7

    aget v6, v4, v6

    const/4 v7, 0x7

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v2

    const/16 v4, 0x17

    const/16 v5, 0x17

    aget v5, v0, v5

    const/16 v6, 0xf

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x16

    const/16 v5, 0x16

    aget v5, v0, v5

    const/16 v6, 0xe

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x15

    const/16 v5, 0x15

    aget v5, v0, v5

    const/16 v6, 0xd

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x14

    const/16 v5, 0x14

    aget v5, v0, v5

    const/16 v6, 0xc

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x13

    const/16 v5, 0x13

    aget v5, v0, v5

    const/16 v6, 0xb

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x12

    const/16 v5, 0x12

    aget v5, v0, v5

    const/16 v6, 0xa

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x11

    const/16 v5, 0x11

    aget v5, v0, v5

    const/16 v6, 0x9

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x10

    const/16 v5, 0x10

    aget v5, v0, v5

    const/16 v6, 0x8

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xf

    const/16 v5, 0xf

    aget v5, v0, v5

    const/4 v6, 0x7

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xe

    const/16 v5, 0xe

    aget v5, v0, v5

    const/4 v6, 0x6

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xd

    const/16 v5, 0xd

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xc

    const/16 v5, 0xc

    aget v5, v0, v5

    const/4 v6, 0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xb

    const/16 v5, 0xb

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xa

    const/16 v5, 0xa

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x9

    const/16 v5, 0x9

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x8

    const/16 v5, 0x8

    aget v5, v0, v5

    const/4 v6, 0x0

    aget v2, v2, v6

    xor-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v1

    const/16 v2, 0x17

    const/16 v3, 0x17

    aget v3, v0, v3

    const/16 v4, 0xf

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x16

    const/16 v3, 0x16

    aget v3, v0, v3

    const/16 v4, 0xe

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x15

    const/16 v3, 0x15

    aget v3, v0, v3

    const/16 v4, 0xd

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x14

    const/16 v3, 0x14

    aget v3, v0, v3

    const/16 v4, 0xc

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x13

    const/16 v3, 0x13

    aget v3, v0, v3

    const/16 v4, 0xb

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x12

    const/16 v3, 0x12

    aget v3, v0, v3

    const/16 v4, 0xa

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x11

    const/16 v3, 0x11

    aget v3, v0, v3

    const/16 v4, 0x9

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x10

    const/16 v3, 0x10

    aget v3, v0, v3

    const/16 v4, 0x8

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0xf

    aget v3, v0, v3

    const/4 v4, 0x7

    aget v4, v1, v4

    const/16 v5, 0xf

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0xe

    aget v3, v0, v3

    const/4 v4, 0x6

    aget v4, v1, v4

    const/16 v5, 0xe

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0xd

    aget v3, v0, v3

    const/4 v4, 0x5

    aget v4, v1, v4

    const/16 v5, 0xd

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0xc

    aget v3, v0, v3

    const/4 v4, 0x4

    aget v4, v1, v4

    const/16 v5, 0xc

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0xb

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    const/16 v5, 0xb

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0xa

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/16 v5, 0xa

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x9

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/16 v5, 0x9

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x8

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v1, v4

    const/16 v5, 0x8

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v0, v3

    const/4 v4, 0x7

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v0, v3

    const/4 v4, 0x6

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    const/4 v4, 0x5

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x4

    aget v3, v0, v3

    const/4 v4, 0x4

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v1, v1, v4

    xor-int/2addr v1, v3

    aput v1, v0, v2

    return-object v0

    :cond_43b
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    array-length v6, p0

    add-int/lit8 v6, v6, -0x8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1d

    :cond_44c
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    array-length v8, p1

    add-int/lit8 v8, v8, -0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_36
.end method

.method private static mult64([I[I)[I
    .registers 14

    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x4

    new-array v3, v0, [I

    aget v4, p0, v1

    array-length v0, p0

    if-gt v0, v10, :cond_62

    move v0, v1

    :goto_d
    aget v5, p1, v1

    array-length v2, p1

    if-gt v2, v10, :cond_65

    move v2, v1

    :goto_13
    if-eqz v0, :cond_68

    :cond_15
    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v6

    aget v7, v3, v9

    aget v8, v6, v10

    xor-int/2addr v7, v8

    aput v7, v3, v9

    aget v7, v3, v11

    aget v8, v6, v1

    aget v9, v6, v10

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v3, v11

    aget v7, v3, v10

    aget v6, v6, v1

    xor-int/2addr v6, v7

    aput v6, v3, v10

    :goto_31
    xor-int/2addr v0, v4

    xor-int/2addr v2, v5

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v0

    aget v2, v3, v11

    aget v6, v0, v10

    xor-int/2addr v2, v6

    aput v2, v3, v11

    aget v2, v3, v10

    aget v0, v0, v1

    xor-int/2addr v0, v2

    aput v0, v3, v10

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v0

    aget v2, v3, v11

    aget v4, v0, v10

    xor-int/2addr v2, v4

    aput v2, v3, v11

    aget v2, v3, v10

    aget v4, v0, v1

    aget v5, v0, v10

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    aput v2, v3, v10

    aget v2, v3, v1

    aget v0, v0, v1

    xor-int/2addr v0, v2

    aput v0, v3, v1

    return-object v3

    :cond_62
    aget v0, p0, v10

    goto :goto_d

    :cond_65
    aget v2, p1, v10

    goto :goto_13

    :cond_68
    if-nez v2, :cond_15

    goto :goto_31
.end method

.method private upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 7

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, p1, :cond_13

    :goto_12
    return-object v1

    :cond_13
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12
.end method

.method private zeroUnusedBits()V
    .registers 6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v4, v4, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_6
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .registers 3

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void
.end method

.method public assignAll()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public assignOne()V
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v1, v0, v3

    return-void

    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public assignX()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v1, 0x2

    aput v1, v0, v2

    return-void

    :cond_c
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public assignZero()V
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public divide(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v4, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, v5, :cond_3f

    iget v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :goto_32
    if-gez v0, :cond_49

    aput-object v2, v1, v6

    aput-object v3, v1, v7

    return-object v1

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v0, v1, v6

    aput-object v3, v1, v7

    return-object v1

    :cond_49
    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v0, v5

    goto :goto_32
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ne v0, v2, :cond_17

    move v0, v1

    :goto_11
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_17
    return v1

    :cond_18
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_25
    return v1
.end method

.method public expandN(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v0, p1, :cond_27

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_28

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v0, v0

    if-ge v0, v1, :cond_29

    new-array v0, v1, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-void

    :cond_27
    return-void

    :cond_28
    return-void

    :cond_29
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_2b
    if-lt v0, v1, :cond_30

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    return-void

    :cond_30
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method public gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_6
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_1c
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3e

    return-object v1

    :cond_23
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Both operands of gcd equal zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    :cond_38
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0

    :cond_3e
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1c
.end method

.method public getBit(I)I
    .registers 6

    const/4 v0, 0x0

    if-gez p1, :cond_4

    :cond_3
    return v0

    :cond_4
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v3, p1, 0x1f

    aget v2, v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public getLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    return-void
.end method

.method public isIrreducible()Z
    .registers 10

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v4, v0, -0x1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const-string/jumbo v5, "X"

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :goto_20
    shr-int/lit8 v5, v4, 0x1

    if-le v0, v5, :cond_26

    return v1

    :cond_25
    return v8

    :cond_26
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v6, 0x20

    const-string/jumbo v7, "X"

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v6

    if-eqz v6, :cond_42

    return v8

    :cond_42
    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v5

    if-eqz v5, :cond_4f

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_4f
    return v8
.end method

.method public isOne()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_18

    return v1

    :cond_e
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    if-nez v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    return v3

    :cond_18
    return v3
.end method

.method public isZero()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eqz v0, :cond_c

    move v0, v1

    :goto_7
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_d

    return v3

    :cond_c
    return v3

    :cond_d
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    if-nez v2, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public multiplyClassic(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 10

    const/16 v7, 0x1f

    const/4 v1, 0x0

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/16 v0, 0x20

    new-array v4, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    aput-object v0, v4, v1

    const/4 v0, 0x1

    :goto_1e
    if-le v0, v7, :cond_26

    move v0, v1

    :goto_21
    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_33

    return-object v3

    :cond_26
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_33
    move v2, v1

    :goto_34
    if-le v2, v7, :cond_3c

    move v2, v1

    :goto_37
    if-le v2, v7, :cond_50

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3c
    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v6, v6, v2

    and-int/2addr v5, v6

    if-nez v5, :cond_4a

    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_4a
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto :goto_47

    :cond_50
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftBlocksLeft()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37
.end method

.method public quotient(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, v4, :cond_37

    iget v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :goto_2e
    if-gez v0, :cond_3d

    return-object v1

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    return-object v0

    :cond_3d
    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v0, v4

    goto :goto_2e
.end method

.method public randomize()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public randomize(Ljava/util/Random;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public reduceN()V
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :cond_3
    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1b

    :goto_b
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    :goto_f
    if-nez v2, :cond_1e

    shl-int/lit8 v2, v0, 0x5

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    return-void

    :cond_1b
    if-gtz v0, :cond_3

    goto :goto_b

    :cond_1e
    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method reducePentanomial(I[I)V
    .registers 23

    ushr-int/lit8 v3, p1, 0x5

    and-int/lit8 v2, p1, 0x1f

    rsub-int/lit8 v4, v2, 0x20

    const/4 v2, 0x0

    aget v2, p2, v2

    sub-int v2, p1, v2

    ushr-int/lit8 v5, v2, 0x5

    const/4 v2, 0x0

    aget v2, p2, v2

    sub-int v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v6, v2, 0x20

    const/4 v2, 0x1

    aget v2, p2, v2

    sub-int v2, p1, v2

    ushr-int/lit8 v7, v2, 0x5

    const/4 v2, 0x1

    aget v2, p2, v2

    sub-int v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v8, v2, 0x20

    const/4 v2, 0x2

    aget v2, p2, v2

    sub-int v2, p1, v2

    ushr-int/lit8 v9, v2, 0x5

    const/4 v2, 0x2

    aget v2, p2, v2

    sub-int v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v10, v2, 0x20

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, -0x2

    ushr-int/lit8 v2, v2, 0x5

    :goto_3c
    if-gt v2, v3, :cond_cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v3

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    and-int/lit8 v2, p1, 0x1f

    const-wide v14, 0xffffffffL

    shl-long/2addr v14, v2

    and-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v11, 0x0

    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-long v14, v14

    rsub-int/lit8 v4, v4, 0x20

    ushr-long v16, v12, v4

    xor-long v14, v14, v16

    long-to-int v4, v14

    aput v4, v2, v11

    sub-int v2, v3, v5

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_18d

    :goto_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v5

    aget v5, v2, v4

    int-to-long v14, v5

    rsub-int/lit8 v5, v6, 0x20

    ushr-long v16, v12, v5

    xor-long v14, v14, v16

    long-to-int v5, v14

    aput v5, v2, v4

    sub-int v2, v3, v7

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_19f

    :goto_84
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v7

    aget v5, v2, v4

    int-to-long v6, v5

    rsub-int/lit8 v5, v8, 0x20

    ushr-long v14, v12, v5

    xor-long/2addr v6, v14

    long-to-int v5, v6

    aput v5, v2, v4

    sub-int v2, v3, v9

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1b1

    :goto_9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v9

    aget v5, v2, v4

    int-to-long v6, v5

    rsub-int/lit8 v5, v10, 0x20

    ushr-long v8, v12, v5

    xor-long/2addr v6, v8

    long-to-int v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v2, v3

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v6, p1, 0x1f

    aget v5, v5, v6

    and-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void

    :cond_cc
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v11, v11, v2

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v3

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v4

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v3

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v4, 0x20

    ushr-long v18, v12, v15

    xor-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v5

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v6

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v5

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v6, 0x20

    ushr-long v18, v12, v15

    xor-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v7

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v8

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v7

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v8, 0x20

    ushr-long v18, v12, v15

    xor-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v9

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v10

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v9

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v10, 0x20

    ushr-long/2addr v12, v15

    xor-long v12, v12, v16

    long-to-int v12, v12

    aput v12, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v12, 0x0

    aput v12, v11, v2

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3c

    :cond_18d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v5

    add-int/lit8 v4, v4, -0x1

    aget v11, v2, v4

    shl-long v14, v12, v6

    long-to-int v14, v14

    xor-int/2addr v11, v14

    aput v11, v2, v4

    goto/16 :goto_6c

    :cond_19f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v7

    add-int/lit8 v4, v4, -0x1

    aget v5, v2, v4

    shl-long v14, v12, v8

    long-to-int v6, v14

    xor-int/2addr v5, v6

    aput v5, v2, v4

    goto/16 :goto_84

    :cond_1b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v9

    add-int/lit8 v4, v4, -0x1

    aget v5, v2, v4

    shl-long v6, v12, v10

    long-to-int v6, v6

    xor-int/2addr v5, v6

    aput v5, v2, v4

    goto/16 :goto_9b
.end method

.method reduceTrinomial(II)V
    .registers 17

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v0, p1, 0x1f

    rsub-int/lit8 v2, v0, 0x20

    sub-int v0, p1, p2

    ushr-int/lit8 v3, v0, 0x5

    sub-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1f

    rsub-int/lit8 v4, v0, 0x20

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, -0x2

    ushr-int/lit8 v0, v0, 0x5

    :goto_16
    if-gt v0, v1, :cond_68

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v0, v0, v1

    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    and-int/lit8 v0, p1, 0x1f

    const-wide v8, 0xffffffffL

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v5, 0x0

    const/4 v8, 0x0

    aget v8, v0, v8

    int-to-long v8, v8

    rsub-int/lit8 v2, v2, 0x20

    ushr-long v10, v6, v2

    xor-long/2addr v8, v10

    long-to-int v2, v8

    aput v2, v0, v5

    sub-int v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_b5

    :goto_41
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v2, v1, v3

    aget v3, v0, v2

    int-to-long v8, v3

    rsub-int/lit8 v3, v4, 0x20

    ushr-long v4, v6, v3

    xor-long/2addr v4, v8

    long-to-int v3, v4

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void

    :cond_68
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    aget v9, v5, v8

    shl-long v10, v6, v2

    long-to-int v10, v10

    xor-int/2addr v9, v10

    aput v9, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v1

    aget v9, v5, v8

    int-to-long v10, v9

    rsub-int/lit8 v9, v2, 0x20

    ushr-long v12, v6, v9

    xor-long/2addr v10, v12

    long-to-int v9, v10

    aput v9, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v3

    add-int/lit8 v8, v8, -0x1

    aget v9, v5, v8

    shl-long v10, v6, v4

    long-to-int v10, v10

    xor-int/2addr v9, v10

    aput v9, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v3

    aget v9, v5, v8

    int-to-long v10, v9

    rsub-int/lit8 v9, v4, 0x20

    ushr-long/2addr v6, v9

    xor-long/2addr v6, v10

    long-to-int v6, v6

    aput v6, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_16

    :cond_b5
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v2, v1, v3

    add-int/lit8 v2, v2, -0x1

    aget v5, v0, v2

    shl-long v8, v6, v4

    long-to-int v8, v8

    xor-int/2addr v5, v8

    aput v5, v0, v2

    goto/16 :goto_41
.end method

.method public remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, v3, :cond_2a

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    :goto_20
    sub-int/2addr v0, v3

    if-gez v0, :cond_2b

    return-object v1

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    return-object v1

    :cond_2b
    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_20
.end method

.method public resetBit(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-gez p1, :cond_8

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_26

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    return-void

    :cond_26
    return-void
.end method

.method public setBit(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-gez p1, :cond_8

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_24

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void

    :cond_24
    return-void
.end method

.method shiftBlocksLeft()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v1, v1

    if-le v0, v1, :cond_28

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :goto_27
    return-void

    :cond_28
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_2a
    add-int/lit8 v0, v0, -0x1

    if-ge v0, v5, :cond_33

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v4, v0, v4

    goto :goto_27

    :cond_33
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    goto :goto_2a
.end method

.method public shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 8

    const/4 v6, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_e
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1c

    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v0, v6

    shl-int/lit8 v2, v2, 0x1

    aput v2, v0, v6

    return-object v1

    :cond_1c
    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    shl-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    goto :goto_e
.end method

.method public shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 10

    const/4 v7, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    const/16 v0, 0x20

    if-ge p1, v0, :cond_14

    :goto_f
    and-int/lit8 v2, p1, 0x1f

    if-nez v2, :cond_1a

    :goto_13
    return-object v1

    :cond_14
    ushr-int/lit8 v0, p1, 0x5

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->doShiftBlocksLeft(I)V

    goto :goto_f

    :cond_1a
    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_1c
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    if-ge v0, v3, :cond_2a

    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v0, v7

    shl-int v2, v3, v2

    aput v2, v0, v7

    goto :goto_13

    :cond_2a
    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    shl-int/2addr v4, v2

    aput v4, v3, v0

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    iget-object v5, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    rsub-int/lit8 v6, v2, 0x20

    ushr-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v0

    goto :goto_1c
.end method

.method public shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V
    .registers 10

    if-eqz p2, :cond_11

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    ushr-int/lit8 v1, p2, 0x5

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_c
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_15

    return-void

    :cond_11
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void

    :cond_15
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v2, v3, :cond_2e

    :cond_1d
    :goto_1d
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v0, v1

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/lit8 v6, p2, 0x1f

    shl-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    goto :goto_c

    :cond_2e
    and-int/lit8 v2, p2, 0x1f

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/lit8 v6, p2, 0x1f

    rsub-int/lit8 v6, v6, 0x20

    ushr-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    goto :goto_1d
.end method

.method public shiftLeftThis()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ge v0, v6, :cond_62

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v0, v5

    shl-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    :cond_1c
    return-void

    :cond_1d
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v1, v1

    if-gt v0, v1, :cond_50

    :goto_30
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_32
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v6, :cond_1c

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    shl-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_32

    :cond_50
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_30

    :cond_62
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_10
.end method

.method public shiftRight()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_13
    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_2c

    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_46

    :goto_2b
    return-object v1

    :cond_2c
    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_46
    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v5, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v0, v2

    goto :goto_2b
.end method

.method public shiftRightThis()V
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_11
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_2a

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_44

    :goto_29
    return-void

    :cond_2a
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_44
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_29
.end method

.method public squareThisBitwise()V
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_12
    if-gez v4, :cond_26

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v0, v5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void

    :cond_25
    return-void

    :cond_26
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v0, v4

    const/4 v0, 0x1

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_2e
    const/16 v6, 0x10

    if-lt v0, v6, :cond_36

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_12

    :cond_36
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_46

    :goto_3a
    const/high16 v6, 0x10000

    and-int/2addr v6, v3

    if-nez v6, :cond_4e

    :goto_3f
    shl-int/lit8 v2, v2, 0x2

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_46
    shl-int/lit8 v6, v4, 0x1

    aget v7, v5, v6

    or-int/2addr v7, v2

    aput v7, v5, v6

    goto :goto_3a

    :cond_4e
    shl-int/lit8 v6, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v7, v5, v6

    or-int/2addr v7, v2

    aput v7, v5, v6

    goto :goto_3f
.end method

.method public squareThisPreCalc()V
    .registers 10

    const/high16 v8, 0xff0000

    const v7, 0xff00

    const/high16 v6, -0x1000000

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_36

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    :goto_1d
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_85

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    :goto_2e
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void

    :cond_35
    return-void

    :cond_36
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_38
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_45

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_2e

    :cond_45
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x10

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v6

    ushr-int/lit8 v5, v5, 0x18

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v7

    ushr-int/lit8 v5, v5, 0x8

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_38

    :cond_85
    shl-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v7

    ushr-int/lit8 v5, v5, 0x8

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x10

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v6

    ushr-int/lit8 v5, v5, 0x18

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d
.end method

.method public subtract(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .registers 3

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void
.end method

.method public testBit(I)Z
    .registers 6

    const/4 v0, 0x0

    if-gez p1, :cond_4

    :cond_3
    return v0

    :cond_4
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v3, p1, 0x1f

    aget v2, v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public toByteArray()[B
    .registers 10

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v2, 0x3

    new-array v4, v2, [B

    move v1, v0

    :goto_e
    shr-int/lit8 v5, v2, 0x2

    if-lt v1, v5, :cond_15

    :goto_12
    if-lt v0, v3, :cond_56

    return-object v4

    :cond_15
    shl-int/lit8 v5, v1, 0x2

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, -0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v1

    const v8, 0xff00

    and-int/2addr v7, v8

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, -0x2

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v1

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    ushr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, -0x3

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v1

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_56
    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v5, v5, -0x1

    aget v2, v2, v5

    const/16 v5, 0xff

    shl-int/2addr v5, v1

    and-int/2addr v2, v5

    ushr-int v1, v2, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-nez v0, :cond_d

    :cond_5
    new-instance v0, Ljava/math/BigInteger;

    new-array v1, v2, [B

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    :cond_d
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toIntegerArray()[I
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x10

    const/4 v2, 0x0

    new-array v3, v5, [C

    const/16 v0, 0x30

    aput-char v0, v3, v2

    const/16 v0, 0x31

    aput-char v0, v3, v6

    const/16 v0, 0x32

    aput-char v0, v3, v7

    const/16 v0, 0x33

    aput-char v0, v3, v8

    const/4 v0, 0x4

    const/16 v1, 0x34

    aput-char v1, v3, v0

    const/4 v0, 0x5

    const/16 v1, 0x35

    aput-char v1, v3, v0

    const/4 v0, 0x6

    const/16 v1, 0x36

    aput-char v1, v3, v0

    const/4 v0, 0x7

    const/16 v1, 0x37

    aput-char v1, v3, v0

    const/16 v0, 0x8

    const/16 v1, 0x38

    aput-char v1, v3, v0

    const/16 v0, 0x9

    const/16 v1, 0x39

    aput-char v1, v3, v0

    const/16 v0, 0xa

    const/16 v1, 0x61

    aput-char v1, v3, v0

    const/16 v0, 0xb

    const/16 v1, 0x62

    aput-char v1, v3, v0

    const/16 v0, 0xc

    const/16 v1, 0x63

    aput-char v1, v3, v0

    const/16 v0, 0xd

    const/16 v1, 0x64

    aput-char v1, v3, v0

    const/16 v0, 0xe

    const/16 v1, 0x65

    aput-char v1, v3, v0

    const/16 v0, 0xf

    const/16 v1, 0x66

    aput-char v1, v3, v0

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v0, "0000"

    aput-object v0, v4, v2

    const-string/jumbo v0, "0001"

    aput-object v0, v4, v6

    const-string/jumbo v0, "0010"

    aput-object v0, v4, v7

    const-string/jumbo v0, "0011"

    aput-object v0, v4, v8

    const/4 v0, 0x4

    const-string/jumbo v1, "0100"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "0101"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "0110"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "0111"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "1000"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "1001"

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "1010"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    const-string/jumbo v1, "1011"

    aput-object v1, v4, v0

    const/16 v0, 0xc

    const-string/jumbo v1, "1100"

    aput-object v1, v4, v0

    const/16 v0, 0xd

    const-string/jumbo v1, "1101"

    aput-object v1, v4, v0

    const/16 v0, 0xe

    const-string/jumbo v1, "1110"

    aput-object v1, v4, v0

    const/16 v0, 0xf

    const-string/jumbo v1, "1111"

    aput-object v1, v4, v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    if-eq p1, v5, :cond_d3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_d0
    if-gez v1, :cond_1cc

    :cond_d2
    return-object v0

    :cond_d3
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_da
    if-ltz v1, :cond_d2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_da

    :cond_1cc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_d0
.end method

.method public vectorMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ne v1, v2, :cond_d

    move v1, v0

    :goto_8
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v0, v2, :cond_13

    return v1

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    and-int/lit16 v4, v2, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v1, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v1, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v1, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-boolean v2, v3, v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 8

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v0, v3, :cond_1a

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_14
    if-lt v1, v2, :cond_2f

    :cond_16
    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-object v0

    :cond_1a
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_1f
    if-ge v1, v2, :cond_16

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    xor-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    xor-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public xorBit(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-gez p1, :cond_8

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_24

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    return-void

    :cond_24
    return-void
.end method

.method public xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_f

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void

    :cond_f
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
