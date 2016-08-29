.class public final Lorg/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [[B

    const/16 v1, 0x100

    new-array v1, v1, [B

    const/16 v2, -0x57

    aput-byte v2, v1, v4

    const/16 v2, 0x67

    aput-byte v2, v1, v5

    const/16 v2, -0x4d

    aput-byte v2, v1, v6

    const/16 v2, -0x18

    aput-byte v2, v1, v7

    aput-byte v8, v1, v8

    const/4 v2, 0x5

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, -0x5d

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x76

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, -0x66

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, -0x6e

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x78

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, -0x1c

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, -0x23

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, -0x2f

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x38

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0xd

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, -0x3a

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x35

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, -0x68

    aput-byte v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x18

    aput-byte v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, -0x9

    aput-byte v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, -0x14

    aput-byte v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x6c

    aput-byte v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x43

    aput-byte v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0x75

    aput-byte v3, v1, v2

    const/16 v2, 0x1a

    const/16 v3, 0x37

    aput-byte v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x26

    aput-byte v3, v1, v2

    const/16 v2, 0x1c

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x13

    aput-byte v3, v1, v2

    const/16 v2, 0x1e

    const/16 v3, -0x6c

    aput-byte v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x48

    aput-byte v3, v1, v2

    const/16 v2, 0x20

    const/16 v3, -0xe

    aput-byte v3, v1, v2

    const/16 v2, 0x21

    const/16 v3, -0x30

    aput-byte v3, v1, v2

    const/16 v2, 0x22

    const/16 v3, -0x75

    aput-byte v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x30

    aput-byte v3, v1, v2

    const/16 v2, 0x24

    const/16 v3, -0x7c

    aput-byte v3, v1, v2

    const/16 v2, 0x25

    const/16 v3, 0x54

    aput-byte v3, v1, v2

    const/16 v2, 0x26

    const/16 v3, -0x21

    aput-byte v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0x23

    aput-byte v3, v1, v2

    const/16 v2, 0x28

    const/16 v3, 0x19

    aput-byte v3, v1, v2

    const/16 v2, 0x29

    const/16 v3, 0x5b

    aput-byte v3, v1, v2

    const/16 v2, 0x2a

    const/16 v3, 0x3d

    aput-byte v3, v1, v2

    const/16 v2, 0x2b

    const/16 v3, 0x59

    aput-byte v3, v1, v2

    const/16 v2, 0x2c

    const/16 v3, -0xd

    aput-byte v3, v1, v2

    const/16 v2, 0x2d

    const/16 v3, -0x52

    aput-byte v3, v1, v2

    const/16 v2, 0x2e

    const/16 v3, -0x5e

    aput-byte v3, v1, v2

    const/16 v2, 0x2f

    const/16 v3, -0x7e

    aput-byte v3, v1, v2

    const/16 v2, 0x30

    const/16 v3, 0x63

    aput-byte v3, v1, v2

    const/16 v2, 0x31

    aput-byte v5, v1, v2

    const/16 v2, 0x32

    const/16 v3, -0x7d

    aput-byte v3, v1, v2

    const/16 v2, 0x33

    const/16 v3, 0x2e

    aput-byte v3, v1, v2

    const/16 v2, 0x34

    const/16 v3, -0x27

    aput-byte v3, v1, v2

    const/16 v2, 0x35

    const/16 v3, 0x51

    aput-byte v3, v1, v2

    const/16 v2, 0x36

    const/16 v3, -0x65

    aput-byte v3, v1, v2

    const/16 v2, 0x37

    const/16 v3, 0x7c

    aput-byte v3, v1, v2

    const/16 v2, 0x38

    const/16 v3, -0x5a

    aput-byte v3, v1, v2

    const/16 v2, 0x39

    const/16 v3, -0x15

    aput-byte v3, v1, v2

    const/16 v2, 0x3a

    const/16 v3, -0x5b

    aput-byte v3, v1, v2

    const/16 v2, 0x3b

    const/16 v3, -0x42

    aput-byte v3, v1, v2

    const/16 v2, 0x3c

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/16 v2, 0x3d

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    const/16 v2, 0x3e

    const/16 v3, -0x1d

    aput-byte v3, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    const/16 v2, 0x40

    const/16 v3, -0x40

    aput-byte v3, v1, v2

    const/16 v2, 0x41

    const/16 v3, -0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x42

    const/16 v3, 0x3a

    aput-byte v3, v1, v2

    const/16 v2, 0x43

    const/16 v3, -0xb

    aput-byte v3, v1, v2

    const/16 v2, 0x44

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    const/16 v2, 0x45

    const/16 v3, 0x2c

    aput-byte v3, v1, v2

    const/16 v2, 0x46

    const/16 v3, 0x25

    aput-byte v3, v1, v2

    const/16 v2, 0x47

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    const/16 v2, 0x48

    const/16 v3, -0x45

    aput-byte v3, v1, v2

    const/16 v2, 0x49

    const/16 v3, 0x4e

    aput-byte v3, v1, v2

    const/16 v2, 0x4a

    const/16 v3, -0x77

    aput-byte v3, v1, v2

    const/16 v2, 0x4b

    const/16 v3, 0x6b

    aput-byte v3, v1, v2

    const/16 v2, 0x4c

    const/16 v3, 0x53

    aput-byte v3, v1, v2

    const/16 v2, 0x4d

    const/16 v3, 0x6a

    aput-byte v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, -0x4c

    aput-byte v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, -0xf

    aput-byte v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, -0x1f

    aput-byte v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, -0x1a

    aput-byte v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, -0x43

    aput-byte v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x45

    aput-byte v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, -0x1e

    aput-byte v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, -0xc

    aput-byte v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, -0x4a

    aput-byte v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x66

    aput-byte v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, -0x34

    aput-byte v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, -0x6b

    aput-byte v3, v1, v2

    const/16 v2, 0x5a

    aput-byte v7, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x56

    aput-byte v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, -0x2c

    aput-byte v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x1c

    aput-byte v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x1e

    aput-byte v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, -0x29

    aput-byte v3, v1, v2

    const/16 v2, 0x60

    const/4 v3, -0x5

    aput-byte v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, -0x3d

    aput-byte v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, -0x72

    aput-byte v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, -0x4b

    aput-byte v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, -0x17

    aput-byte v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, -0x31

    aput-byte v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, -0x41

    aput-byte v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, -0x46

    aput-byte v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, -0x16

    aput-byte v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x77

    aput-byte v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x39

    aput-byte v3, v1, v2

    const/16 v2, 0x6b

    const/16 v3, -0x51

    aput-byte v3, v1, v2

    const/16 v2, 0x6c

    const/16 v3, 0x33

    aput-byte v3, v1, v2

    const/16 v2, 0x6d

    const/16 v3, -0x37

    aput-byte v3, v1, v2

    const/16 v2, 0x6e

    const/16 v3, 0x62

    aput-byte v3, v1, v2

    const/16 v2, 0x6f

    const/16 v3, 0x71

    aput-byte v3, v1, v2

    const/16 v2, 0x70

    const/16 v3, -0x7f

    aput-byte v3, v1, v2

    const/16 v2, 0x71

    const/16 v3, 0x79

    aput-byte v3, v1, v2

    const/16 v2, 0x72

    const/16 v3, 0x9

    aput-byte v3, v1, v2

    const/16 v2, 0x73

    const/16 v3, -0x53

    aput-byte v3, v1, v2

    const/16 v2, 0x74

    const/16 v3, 0x24

    aput-byte v3, v1, v2

    const/16 v2, 0x75

    const/16 v3, -0x33

    aput-byte v3, v1, v2

    const/16 v2, 0x76

    const/4 v3, -0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x77

    const/16 v3, -0x28

    aput-byte v3, v1, v2

    const/16 v2, 0x78

    const/16 v3, -0x1b

    aput-byte v3, v1, v2

    const/16 v2, 0x79

    const/16 v3, -0x3b

    aput-byte v3, v1, v2

    const/16 v2, 0x7a

    const/16 v3, -0x47

    aput-byte v3, v1, v2

    const/16 v2, 0x7b

    const/16 v3, 0x4d

    aput-byte v3, v1, v2

    const/16 v2, 0x7c

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    const/16 v2, 0x7d

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    const/16 v2, 0x7e

    const/16 v3, -0x7a

    aput-byte v3, v1, v2

    const/16 v2, 0x7f

    const/16 v3, -0x19

    aput-byte v3, v1, v2

    const/16 v2, 0x80

    const/16 v3, -0x5f

    aput-byte v3, v1, v2

    const/16 v2, 0x81

    const/16 v3, 0x1d

    aput-byte v3, v1, v2

    const/16 v2, 0x82

    const/16 v3, -0x56

    aput-byte v3, v1, v2

    const/16 v2, 0x83

    const/16 v3, -0x13

    aput-byte v3, v1, v2

    const/16 v2, 0x84

    const/4 v3, 0x6

    aput-byte v3, v1, v2

    const/16 v2, 0x85

    const/16 v3, 0x70

    aput-byte v3, v1, v2

    const/16 v2, 0x86

    const/16 v3, -0x4e

    aput-byte v3, v1, v2

    const/16 v2, 0x87

    const/16 v3, -0x2e

    aput-byte v3, v1, v2

    const/16 v2, 0x88

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const/16 v2, 0x89

    const/16 v3, 0x7b

    aput-byte v3, v1, v2

    const/16 v2, 0x8a

    const/16 v3, -0x60

    aput-byte v3, v1, v2

    const/16 v2, 0x8b

    const/16 v3, 0x11

    aput-byte v3, v1, v2

    const/16 v2, 0x8c

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    const/16 v2, 0x8d

    const/16 v3, -0x3e

    aput-byte v3, v1, v2

    const/16 v2, 0x8e

    const/16 v3, 0x27

    aput-byte v3, v1, v2

    const/16 v2, 0x8f

    const/16 v3, -0x70

    aput-byte v3, v1, v2

    const/16 v2, 0x90

    const/16 v3, 0x20

    aput-byte v3, v1, v2

    const/16 v2, 0x91

    const/16 v3, -0xa

    aput-byte v3, v1, v2

    const/16 v2, 0x92

    const/16 v3, 0x60

    aput-byte v3, v1, v2

    const/16 v2, 0x93

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    const/16 v2, 0x94

    const/16 v3, -0x6a

    aput-byte v3, v1, v2

    const/16 v2, 0x95

    const/16 v3, 0x5c

    aput-byte v3, v1, v2

    const/16 v2, 0x96

    const/16 v3, -0x4f

    aput-byte v3, v1, v2

    const/16 v2, 0x97

    const/16 v3, -0x55

    aput-byte v3, v1, v2

    const/16 v2, 0x98

    const/16 v3, -0x62

    aput-byte v3, v1, v2

    const/16 v2, 0x99

    const/16 v3, -0x64

    aput-byte v3, v1, v2

    const/16 v2, 0x9a

    const/16 v3, 0x52

    aput-byte v3, v1, v2

    const/16 v2, 0x9b

    const/16 v3, 0x1b

    aput-byte v3, v1, v2

    const/16 v2, 0x9c

    const/16 v3, 0x5f

    aput-byte v3, v1, v2

    const/16 v2, 0x9d

    const/16 v3, -0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0x9e

    const/16 v3, 0xa

    aput-byte v3, v1, v2

    const/16 v2, 0x9f

    const/16 v3, -0x11

    aput-byte v3, v1, v2

    const/16 v2, 0xa0

    const/16 v3, -0x6f

    aput-byte v3, v1, v2

    const/16 v2, 0xa1

    const/16 v3, -0x7b

    aput-byte v3, v1, v2

    const/16 v2, 0xa2

    const/16 v3, 0x49

    aput-byte v3, v1, v2

    const/16 v2, 0xa3

    const/16 v3, -0x12

    aput-byte v3, v1, v2

    const/16 v2, 0xa4

    const/16 v3, 0x2d

    aput-byte v3, v1, v2

    const/16 v2, 0xa5

    const/16 v3, 0x4f

    aput-byte v3, v1, v2

    const/16 v2, 0xa6

    const/16 v3, -0x71

    aput-byte v3, v1, v2

    const/16 v2, 0xa7

    const/16 v3, 0x3b

    aput-byte v3, v1, v2

    const/16 v2, 0xa8

    const/16 v3, 0x47

    aput-byte v3, v1, v2

    const/16 v2, 0xa9

    const/16 v3, -0x79

    aput-byte v3, v1, v2

    const/16 v2, 0xaa

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0xab

    const/16 v3, 0x46

    aput-byte v3, v1, v2

    const/16 v2, 0xac

    const/16 v3, -0x2a

    aput-byte v3, v1, v2

    const/16 v2, 0xad

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    const/16 v2, 0xae

    const/16 v3, 0x69

    aput-byte v3, v1, v2

    const/16 v2, 0xaf

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    const/16 v2, 0xb0

    const/16 v3, 0x2a

    aput-byte v3, v1, v2

    const/16 v2, 0xb1

    const/16 v3, -0x32

    aput-byte v3, v1, v2

    const/16 v2, 0xb2

    const/16 v3, -0x35

    aput-byte v3, v1, v2

    const/16 v2, 0xb3

    const/16 v3, 0x2f

    aput-byte v3, v1, v2

    const/16 v2, 0xb4

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    const/16 v2, 0xb5

    const/16 v3, -0x69

    aput-byte v3, v1, v2

    const/16 v2, 0xb6

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    const/16 v2, 0xb7

    const/16 v3, 0x7a

    aput-byte v3, v1, v2

    const/16 v2, 0xb8

    const/16 v3, -0x54

    aput-byte v3, v1, v2

    const/16 v2, 0xb9

    const/16 v3, 0x7f

    aput-byte v3, v1, v2

    const/16 v2, 0xba

    const/16 v3, -0x2b

    aput-byte v3, v1, v2

    const/16 v2, 0xbb

    const/16 v3, 0x1a

    aput-byte v3, v1, v2

    const/16 v2, 0xbc

    const/16 v3, 0x4b

    aput-byte v3, v1, v2

    const/16 v2, 0xbd

    const/16 v3, 0xe

    aput-byte v3, v1, v2

    const/16 v2, 0xbe

    const/16 v3, -0x59

    aput-byte v3, v1, v2

    const/16 v2, 0xbf

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    const/16 v2, 0xc0

    const/16 v3, 0x28

    aput-byte v3, v1, v2

    const/16 v2, 0xc1

    const/16 v3, 0x14

    aput-byte v3, v1, v2

    const/16 v2, 0xc2

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    const/16 v2, 0xc3

    const/16 v3, 0x29

    aput-byte v3, v1, v2

    const/16 v2, 0xc4

    const/16 v3, -0x78

    aput-byte v3, v1, v2

    const/16 v2, 0xc5

    const/16 v3, 0x3c

    aput-byte v3, v1, v2

    const/16 v2, 0xc6

    const/16 v3, 0x4c

    aput-byte v3, v1, v2

    const/16 v2, 0xc7

    aput-byte v6, v1, v2

    const/16 v2, 0xc8

    const/16 v3, -0x48

    aput-byte v3, v1, v2

    const/16 v2, 0xc9

    const/16 v3, -0x26

    aput-byte v3, v1, v2

    const/16 v2, 0xca

    const/16 v3, -0x50

    aput-byte v3, v1, v2

    const/16 v2, 0xcb

    const/16 v3, 0x17

    aput-byte v3, v1, v2

    const/16 v2, 0xcc

    const/16 v3, 0x55

    aput-byte v3, v1, v2

    const/16 v2, 0xcd

    const/16 v3, 0x1f

    aput-byte v3, v1, v2

    const/16 v2, 0xce

    const/16 v3, -0x76

    aput-byte v3, v1, v2

    const/16 v2, 0xcf

    const/16 v3, 0x7d

    aput-byte v3, v1, v2

    const/16 v2, 0xd0

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    const/16 v2, 0xd1

    const/16 v3, -0x39

    aput-byte v3, v1, v2

    const/16 v2, 0xd2

    const/16 v3, -0x73

    aput-byte v3, v1, v2

    const/16 v2, 0xd3

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0xd4

    const/16 v3, -0x49

    aput-byte v3, v1, v2

    const/16 v2, 0xd5

    const/16 v3, -0x3c

    aput-byte v3, v1, v2

    const/16 v2, 0xd6

    const/16 v3, -0x61

    aput-byte v3, v1, v2

    const/16 v2, 0xd7

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    const/16 v2, 0xd8

    const/16 v3, 0x7e

    aput-byte v3, v1, v2

    const/16 v2, 0xd9

    const/16 v3, 0x15

    aput-byte v3, v1, v2

    const/16 v2, 0xda

    const/16 v3, 0x22

    aput-byte v3, v1, v2

    const/16 v2, 0xdb

    const/16 v3, 0x12

    aput-byte v3, v1, v2

    const/16 v2, 0xdc

    const/16 v3, 0x58

    aput-byte v3, v1, v2

    const/16 v2, 0xdd

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0xde

    const/16 v3, -0x67

    aput-byte v3, v1, v2

    const/16 v2, 0xdf

    const/16 v3, 0x34

    aput-byte v3, v1, v2

    const/16 v2, 0xe0

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    const/16 v2, 0xe1

    const/16 v3, 0x50

    aput-byte v3, v1, v2

    const/16 v2, 0xe2

    const/16 v3, -0x22

    aput-byte v3, v1, v2

    const/16 v2, 0xe3

    const/16 v3, 0x68

    aput-byte v3, v1, v2

    const/16 v2, 0xe4

    const/16 v3, 0x65

    aput-byte v3, v1, v2

    const/16 v2, 0xe5

    const/16 v3, -0x44

    aput-byte v3, v1, v2

    const/16 v2, 0xe6

    const/16 v3, -0x25

    aput-byte v3, v1, v2

    const/16 v2, 0xe7

    const/4 v3, -0x8

    aput-byte v3, v1, v2

    const/16 v2, 0xe8

    const/16 v3, -0x38

    aput-byte v3, v1, v2

    const/16 v2, 0xe9

    const/16 v3, -0x58

    aput-byte v3, v1, v2

    const/16 v2, 0xea

    const/16 v3, 0x2b

    aput-byte v3, v1, v2

    const/16 v2, 0xeb

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    const/16 v2, 0xec

    const/16 v3, -0x24

    aput-byte v3, v1, v2

    const/16 v2, 0xed

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    const/16 v2, 0xee

    const/16 v3, 0x32

    aput-byte v3, v1, v2

    const/16 v2, 0xef

    const/16 v3, -0x5c

    aput-byte v3, v1, v2

    const/16 v2, 0xf0

    const/16 v3, -0x36

    aput-byte v3, v1, v2

    const/16 v2, 0xf1

    const/16 v3, 0x10

    aput-byte v3, v1, v2

    const/16 v2, 0xf2

    const/16 v3, 0x21

    aput-byte v3, v1, v2

    const/16 v2, 0xf3

    const/16 v3, -0x10

    aput-byte v3, v1, v2

    const/16 v2, 0xf4

    const/16 v3, -0x2d

    aput-byte v3, v1, v2

    const/16 v2, 0xf5

    const/16 v3, 0x5d

    aput-byte v3, v1, v2

    const/16 v2, 0xf6

    const/16 v3, 0xf

    aput-byte v3, v1, v2

    const/16 v2, 0xf7

    aput-byte v4, v1, v2

    const/16 v2, 0xf8

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    const/16 v2, 0xf9

    const/16 v3, -0x63

    aput-byte v3, v1, v2

    const/16 v2, 0xfa

    const/16 v3, 0x36

    aput-byte v3, v1, v2

    const/16 v2, 0xfb

    const/16 v3, 0x42

    aput-byte v3, v1, v2

    const/16 v2, 0xfc

    const/16 v3, 0x4a

    aput-byte v3, v1, v2

    const/16 v2, 0xfd

    const/16 v3, 0x5e

    aput-byte v3, v1, v2

    const/16 v2, 0xfe

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/16 v2, 0xff

    const/16 v3, -0x20

    aput-byte v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x100

    new-array v1, v1, [B

    const/16 v2, 0x75

    aput-byte v2, v1, v4

    const/16 v2, -0xd

    aput-byte v2, v1, v5

    const/16 v2, -0x3a

    aput-byte v2, v1, v6

    const/16 v2, -0xc

    aput-byte v2, v1, v7

    const/16 v2, -0x25

    aput-byte v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0x7b

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, -0x5

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, -0x38

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x4a

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, -0x2d

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, -0x1a

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x6b

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x45

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x7d

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, -0x18

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x4b

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, -0x2a

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x32

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, -0x28

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x37

    aput-byte v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x71

    aput-byte v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, -0xf

    aput-byte v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, -0x1f

    aput-byte v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x30

    aput-byte v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0xf

    aput-byte v3, v1, v2

    const/16 v2, 0x1a

    const/4 v3, -0x8

    aput-byte v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    aput-byte v3, v1, v2

    const/16 v2, 0x1c

    const/16 v3, -0x79

    aput-byte v3, v1, v2

    const/16 v2, 0x1d

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    const/16 v2, 0x1e

    const/4 v3, 0x6

    aput-byte v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0x5e

    aput-byte v3, v1, v2

    const/16 v2, 0x21

    const/16 v3, -0x46

    aput-byte v3, v1, v2

    const/16 v2, 0x22

    const/16 v3, -0x52

    aput-byte v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x5b

    aput-byte v3, v1, v2

    const/16 v2, 0x24

    const/16 v3, -0x76

    aput-byte v3, v1, v2

    const/16 v2, 0x25

    aput-byte v4, v1, v2

    const/16 v2, 0x26

    const/16 v3, -0x44

    aput-byte v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, -0x63

    aput-byte v3, v1, v2

    const/16 v2, 0x28

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0x29

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/16 v2, 0x2a

    const/16 v3, -0x4f

    aput-byte v3, v1, v2

    const/16 v2, 0x2b

    const/16 v3, 0xe

    aput-byte v3, v1, v2

    const/16 v2, 0x2c

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    const/16 v2, 0x2d

    const/16 v3, 0x5d

    aput-byte v3, v1, v2

    const/16 v2, 0x2e

    const/16 v3, -0x2e

    aput-byte v3, v1, v2

    const/16 v2, 0x2f

    const/16 v3, -0x2b

    aput-byte v3, v1, v2

    const/16 v2, 0x30

    const/16 v3, -0x60

    aput-byte v3, v1, v2

    const/16 v2, 0x31

    const/16 v3, -0x7c

    aput-byte v3, v1, v2

    const/16 v2, 0x32

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x33

    const/16 v3, 0x14

    aput-byte v3, v1, v2

    const/16 v2, 0x34

    const/16 v3, -0x4b

    aput-byte v3, v1, v2

    const/16 v2, 0x35

    const/16 v3, -0x70

    aput-byte v3, v1, v2

    const/16 v2, 0x36

    const/16 v3, 0x2c

    aput-byte v3, v1, v2

    const/16 v2, 0x37

    const/16 v3, -0x5d

    aput-byte v3, v1, v2

    const/16 v2, 0x38

    const/16 v3, -0x4e

    aput-byte v3, v1, v2

    const/16 v2, 0x39

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    const/16 v2, 0x3a

    const/16 v3, 0x4c

    aput-byte v3, v1, v2

    const/16 v2, 0x3b

    const/16 v3, 0x54

    aput-byte v3, v1, v2

    const/16 v2, 0x3c

    const/16 v3, -0x6e

    aput-byte v3, v1, v2

    const/16 v2, 0x3d

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x3e

    const/16 v3, 0x36

    aput-byte v3, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0x51

    aput-byte v3, v1, v2

    const/16 v2, 0x40

    const/16 v3, 0x38

    aput-byte v3, v1, v2

    const/16 v2, 0x41

    const/16 v3, -0x50

    aput-byte v3, v1, v2

    const/16 v2, 0x42

    const/16 v3, -0x43

    aput-byte v3, v1, v2

    const/16 v2, 0x43

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    const/16 v2, 0x44

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    const/16 v2, 0x45

    const/16 v3, 0x60

    aput-byte v3, v1, v2

    const/16 v2, 0x46

    const/16 v3, 0x62

    aput-byte v3, v1, v2

    const/16 v2, 0x47

    const/16 v3, -0x6a

    aput-byte v3, v1, v2

    const/16 v2, 0x48

    const/16 v3, 0x6c

    aput-byte v3, v1, v2

    const/16 v2, 0x49

    const/16 v3, 0x42

    aput-byte v3, v1, v2

    const/16 v2, 0x4a

    const/16 v3, -0x9

    aput-byte v3, v1, v2

    const/16 v2, 0x4b

    const/16 v3, 0x10

    aput-byte v3, v1, v2

    const/16 v2, 0x4c

    const/16 v3, 0x7c

    aput-byte v3, v1, v2

    const/16 v2, 0x4d

    const/16 v3, 0x28

    aput-byte v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x27

    aput-byte v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, -0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x13

    aput-byte v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, -0x6b

    aput-byte v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, -0x64

    aput-byte v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, -0x39

    aput-byte v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x24

    aput-byte v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x46

    aput-byte v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x3b

    aput-byte v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x70

    aput-byte v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, -0x36

    aput-byte v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, -0x1d

    aput-byte v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, -0x7b

    aput-byte v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, -0x35

    aput-byte v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x11

    aput-byte v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, -0x30

    aput-byte v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, -0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, -0x48

    aput-byte v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, -0x5a

    aput-byte v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, -0x7d

    aput-byte v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x20

    aput-byte v3, v1, v2

    const/16 v2, 0x63

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, -0x61

    aput-byte v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x77

    aput-byte v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, -0x3d

    aput-byte v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, -0x34

    aput-byte v3, v1, v2

    const/16 v2, 0x68

    aput-byte v7, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    const/16 v2, 0x6b

    const/16 v3, -0x41

    aput-byte v3, v1, v2

    const/16 v2, 0x6c

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    const/16 v2, 0x6d

    const/16 v3, -0x19

    aput-byte v3, v1, v2

    const/16 v2, 0x6e

    const/16 v3, 0x2b

    aput-byte v3, v1, v2

    const/16 v2, 0x6f

    const/16 v3, -0x1e

    aput-byte v3, v1, v2

    const/16 v2, 0x70

    const/16 v3, 0x79

    aput-byte v3, v1, v2

    const/16 v2, 0x71

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    const/16 v2, 0x72

    const/16 v3, -0x56

    aput-byte v3, v1, v2

    const/16 v2, 0x73

    const/16 v3, -0x7e

    aput-byte v3, v1, v2

    const/16 v2, 0x74

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const/16 v2, 0x75

    const/16 v3, 0x3a

    aput-byte v3, v1, v2

    const/16 v2, 0x76

    const/16 v3, -0x16

    aput-byte v3, v1, v2

    const/16 v2, 0x77

    const/16 v3, -0x47

    aput-byte v3, v1, v2

    const/16 v2, 0x78

    const/16 v3, -0x1c

    aput-byte v3, v1, v2

    const/16 v2, 0x79

    const/16 v3, -0x66

    aput-byte v3, v1, v2

    const/16 v2, 0x7a

    const/16 v3, -0x5c

    aput-byte v3, v1, v2

    const/16 v2, 0x7b

    const/16 v3, -0x69

    aput-byte v3, v1, v2

    const/16 v2, 0x7c

    const/16 v3, 0x7e

    aput-byte v3, v1, v2

    const/16 v2, 0x7d

    const/16 v3, -0x26

    aput-byte v3, v1, v2

    const/16 v2, 0x7e

    const/16 v3, 0x7a

    aput-byte v3, v1, v2

    const/16 v2, 0x7f

    const/16 v3, 0x17

    aput-byte v3, v1, v2

    const/16 v2, 0x80

    const/16 v3, 0x66

    aput-byte v3, v1, v2

    const/16 v2, 0x81

    const/16 v3, -0x6c

    aput-byte v3, v1, v2

    const/16 v2, 0x82

    const/16 v3, -0x5f

    aput-byte v3, v1, v2

    const/16 v2, 0x83

    const/16 v3, 0x1d

    aput-byte v3, v1, v2

    const/16 v2, 0x84

    const/16 v3, 0x3d

    aput-byte v3, v1, v2

    const/16 v2, 0x85

    const/16 v3, -0x10

    aput-byte v3, v1, v2

    const/16 v2, 0x86

    const/16 v3, -0x22

    aput-byte v3, v1, v2

    const/16 v2, 0x87

    const/16 v3, -0x4d

    aput-byte v3, v1, v2

    const/16 v2, 0x88

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    const/16 v2, 0x89

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    const/16 v2, 0x8a

    const/16 v3, -0x59

    aput-byte v3, v1, v2

    const/16 v2, 0x8b

    const/16 v3, 0x1c

    aput-byte v3, v1, v2

    const/16 v2, 0x8c

    const/16 v3, -0x11

    aput-byte v3, v1, v2

    const/16 v2, 0x8d

    const/16 v3, -0x2f

    aput-byte v3, v1, v2

    const/16 v2, 0x8e

    const/16 v3, 0x53

    aput-byte v3, v1, v2

    const/16 v2, 0x8f

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    const/16 v2, 0x90

    const/16 v3, -0x71

    aput-byte v3, v1, v2

    const/16 v2, 0x91

    const/16 v3, 0x33

    aput-byte v3, v1, v2

    const/16 v2, 0x92

    const/16 v3, 0x26

    aput-byte v3, v1, v2

    const/16 v2, 0x93

    const/16 v3, 0x5f

    aput-byte v3, v1, v2

    const/16 v2, 0x94

    const/16 v3, -0x14

    aput-byte v3, v1, v2

    const/16 v2, 0x95

    const/16 v3, 0x76

    aput-byte v3, v1, v2

    const/16 v2, 0x96

    const/16 v3, 0x2a

    aput-byte v3, v1, v2

    const/16 v2, 0x97

    const/16 v3, 0x49

    aput-byte v3, v1, v2

    const/16 v2, 0x98

    const/16 v3, -0x7f

    aput-byte v3, v1, v2

    const/16 v2, 0x99

    const/16 v3, -0x78

    aput-byte v3, v1, v2

    const/16 v2, 0x9a

    const/16 v3, -0x12

    aput-byte v3, v1, v2

    const/16 v2, 0x9b

    const/16 v3, 0x21

    aput-byte v3, v1, v2

    const/16 v2, 0x9c

    const/16 v3, -0x3c

    aput-byte v3, v1, v2

    const/16 v2, 0x9d

    const/16 v3, 0x1a

    aput-byte v3, v1, v2

    const/16 v2, 0x9e

    const/16 v3, -0x15

    aput-byte v3, v1, v2

    const/16 v2, 0x9f

    const/16 v3, -0x27

    aput-byte v3, v1, v2

    const/16 v2, 0xa0

    const/16 v3, -0x3b

    aput-byte v3, v1, v2

    const/16 v2, 0xa1

    const/16 v3, 0x39

    aput-byte v3, v1, v2

    const/16 v2, 0xa2

    const/16 v3, -0x67

    aput-byte v3, v1, v2

    const/16 v2, 0xa3

    const/16 v3, -0x33

    aput-byte v3, v1, v2

    const/16 v2, 0xa4

    const/16 v3, -0x53

    aput-byte v3, v1, v2

    const/16 v2, 0xa5

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    const/16 v2, 0xa6

    const/16 v3, -0x75

    aput-byte v3, v1, v2

    const/16 v2, 0xa7

    aput-byte v5, v1, v2

    const/16 v2, 0xa8

    const/16 v3, 0x18

    aput-byte v3, v1, v2

    const/16 v2, 0xa9

    const/16 v3, 0x23

    aput-byte v3, v1, v2

    const/16 v2, 0xaa

    const/16 v3, -0x23

    aput-byte v3, v1, v2

    const/16 v2, 0xab

    const/16 v3, 0x1f

    aput-byte v3, v1, v2

    const/16 v2, 0xac

    const/16 v3, 0x4e

    aput-byte v3, v1, v2

    const/16 v2, 0xad

    const/16 v3, 0x2d

    aput-byte v3, v1, v2

    const/16 v2, 0xae

    const/4 v3, -0x7

    aput-byte v3, v1, v2

    const/16 v2, 0xaf

    const/16 v3, 0x48

    aput-byte v3, v1, v2

    const/16 v2, 0xb0

    const/16 v3, 0x4f

    aput-byte v3, v1, v2

    const/16 v2, 0xb1

    const/16 v3, -0xe

    aput-byte v3, v1, v2

    const/16 v2, 0xb2

    const/16 v3, 0x65

    aput-byte v3, v1, v2

    const/16 v2, 0xb3

    const/16 v3, -0x72

    aput-byte v3, v1, v2

    const/16 v2, 0xb4

    const/16 v3, 0x78

    aput-byte v3, v1, v2

    const/16 v2, 0xb5

    const/16 v3, 0x5c

    aput-byte v3, v1, v2

    const/16 v2, 0xb6

    const/16 v3, 0x58

    aput-byte v3, v1, v2

    const/16 v2, 0xb7

    const/16 v3, 0x19

    aput-byte v3, v1, v2

    const/16 v2, 0xb8

    const/16 v3, -0x73

    aput-byte v3, v1, v2

    const/16 v2, 0xb9

    const/16 v3, -0x1b

    aput-byte v3, v1, v2

    const/16 v2, 0xba

    const/16 v3, -0x68

    aput-byte v3, v1, v2

    const/16 v2, 0xbb

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    const/16 v2, 0xbc

    const/16 v3, 0x67

    aput-byte v3, v1, v2

    const/16 v2, 0xbd

    const/16 v3, 0x7f

    aput-byte v3, v1, v2

    const/16 v2, 0xbe

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    const/16 v2, 0xbf

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    const/16 v2, 0xc0

    const/16 v3, -0x51

    aput-byte v3, v1, v2

    const/16 v2, 0xc1

    const/16 v3, 0x63

    aput-byte v3, v1, v2

    const/16 v2, 0xc2

    const/16 v3, -0x4a

    aput-byte v3, v1, v2

    const/16 v2, 0xc3

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    const/16 v2, 0xc4

    const/16 v3, -0xb

    aput-byte v3, v1, v2

    const/16 v2, 0xc5

    const/16 v3, -0x49

    aput-byte v3, v1, v2

    const/16 v2, 0xc6

    const/16 v3, 0x3c

    aput-byte v3, v1, v2

    const/16 v2, 0xc7

    const/16 v3, -0x5b

    aput-byte v3, v1, v2

    const/16 v2, 0xc8

    const/16 v3, -0x32

    aput-byte v3, v1, v2

    const/16 v2, 0xc9

    const/16 v3, -0x17

    aput-byte v3, v1, v2

    const/16 v2, 0xca

    const/16 v3, 0x68

    aput-byte v3, v1, v2

    const/16 v2, 0xcb

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    const/16 v2, 0xcc

    const/16 v3, -0x20

    aput-byte v3, v1, v2

    const/16 v2, 0xcd

    const/16 v3, 0x4d

    aput-byte v3, v1, v2

    const/16 v2, 0xce

    const/16 v3, 0x43

    aput-byte v3, v1, v2

    const/16 v2, 0xcf

    const/16 v3, 0x69

    aput-byte v3, v1, v2

    const/16 v2, 0xd0

    const/16 v3, 0x29

    aput-byte v3, v1, v2

    const/16 v2, 0xd1

    const/16 v3, 0x2e

    aput-byte v3, v1, v2

    const/16 v2, 0xd2

    const/16 v3, -0x54

    aput-byte v3, v1, v2

    const/16 v2, 0xd3

    const/16 v3, 0x15

    aput-byte v3, v1, v2

    const/16 v2, 0xd4

    const/16 v3, 0x59

    aput-byte v3, v1, v2

    const/16 v2, 0xd5

    const/16 v3, -0x58

    aput-byte v3, v1, v2

    const/16 v2, 0xd6

    const/16 v3, 0xa

    aput-byte v3, v1, v2

    const/16 v2, 0xd7

    const/16 v3, -0x62

    aput-byte v3, v1, v2

    const/16 v2, 0xd8

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    const/16 v2, 0xd9

    const/16 v3, 0x47

    aput-byte v3, v1, v2

    const/16 v2, 0xda

    const/16 v3, -0x21

    aput-byte v3, v1, v2

    const/16 v2, 0xdb

    const/16 v3, 0x34

    aput-byte v3, v1, v2

    const/16 v2, 0xdc

    const/16 v3, 0x35

    aput-byte v3, v1, v2

    const/16 v2, 0xdd

    const/16 v3, 0x6a

    aput-byte v3, v1, v2

    const/16 v2, 0xde

    const/16 v3, -0x31

    aput-byte v3, v1, v2

    const/16 v2, 0xdf

    const/16 v3, -0x24

    aput-byte v3, v1, v2

    const/16 v2, 0xe0

    const/16 v3, 0x22

    aput-byte v3, v1, v2

    const/16 v2, 0xe1

    const/16 v3, -0x37

    aput-byte v3, v1, v2

    const/16 v2, 0xe2

    const/16 v3, -0x40

    aput-byte v3, v1, v2

    const/16 v2, 0xe3

    const/16 v3, -0x65

    aput-byte v3, v1, v2

    const/16 v2, 0xe4

    const/16 v3, -0x77

    aput-byte v3, v1, v2

    const/16 v2, 0xe5

    const/16 v3, -0x2c

    aput-byte v3, v1, v2

    const/16 v2, 0xe6

    const/16 v3, -0x13

    aput-byte v3, v1, v2

    const/16 v2, 0xe7

    const/16 v3, -0x55

    aput-byte v3, v1, v2

    const/16 v2, 0xe8

    const/16 v3, 0x12

    aput-byte v3, v1, v2

    const/16 v2, 0xe9

    const/16 v3, -0x5e

    aput-byte v3, v1, v2

    const/16 v2, 0xea

    const/16 v3, 0xd

    aput-byte v3, v1, v2

    const/16 v2, 0xeb

    const/16 v3, 0x52

    aput-byte v3, v1, v2

    const/16 v2, 0xec

    const/16 v3, -0x45

    aput-byte v3, v1, v2

    const/16 v2, 0xed

    aput-byte v6, v1, v2

    const/16 v2, 0xee

    const/16 v3, 0x2f

    aput-byte v3, v1, v2

    const/16 v2, 0xef

    const/16 v3, -0x57

    aput-byte v3, v1, v2

    const/16 v2, 0xf0

    const/16 v3, -0x29

    aput-byte v3, v1, v2

    const/16 v2, 0xf1

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    const/16 v2, 0xf2

    const/16 v3, 0x1e

    aput-byte v3, v1, v2

    const/16 v2, 0xf3

    const/16 v3, -0x4c

    aput-byte v3, v1, v2

    const/16 v2, 0xf4

    const/16 v3, 0x50

    aput-byte v3, v1, v2

    const/16 v2, 0xf5

    aput-byte v8, v1, v2

    const/16 v2, 0xf6

    const/16 v3, -0xa

    aput-byte v3, v1, v2

    const/16 v2, 0xf7

    const/16 v3, -0x3e

    aput-byte v3, v1, v2

    const/16 v2, 0xf8

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/16 v2, 0xf9

    const/16 v3, 0x25

    aput-byte v3, v1, v2

    const/16 v2, 0xfa

    const/16 v3, -0x7a

    aput-byte v3, v1, v2

    const/16 v2, 0xfb

    const/16 v3, 0x56

    aput-byte v3, v1, v2

    const/16 v2, 0xfc

    const/16 v3, 0x55

    aput-byte v3, v1, v2

    const/16 v2, 0xfd

    const/16 v3, 0x9

    aput-byte v3, v1, v2

    const/16 v2, 0xfe

    const/16 v3, -0x42

    aput-byte v3, v1, v2

    const/16 v2, 0xff

    const/16 v3, -0x6f

    aput-byte v3, v1, v2

    aput-object v1, v0, v5

    sput-object v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    const/4 v4, 0x2

    const/16 v9, 0x100

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    new-array v2, v4, [I

    new-array v3, v4, [I

    new-array v4, v4, [I

    move v0, v1

    :goto_26
    if-lt v0, v9, :cond_29

    return-void

    :cond_29
    sget-object v5, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v1

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v1

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v1

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v1

    sget-object v5, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v8

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v8

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v8

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v8

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v6, v2, v8

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v6, v4, v1

    aget v7, v4, v1

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v3, v1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v2, v1

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v6, v3, v8

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v6, v3, v1

    aget v7, v2, v1

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v3, v1

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26
.end method

.method private Bits32ToBytes(I[BI)V
    .registers 6

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method private BytesTo32Bits([BI)I
    .registers 5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private F32(I[I)I
    .registers 14

    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v0

    aget v5, p2, v4

    aget v6, p2, v10

    const/4 v7, 0x2

    aget v7, p2, v7

    const/4 v8, 0x3

    aget v8, p2, v8

    iget v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_152

    move v0, v4

    :goto_24
    return v0

    :pswitch_25
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v7, v4

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int/2addr v3, v7

    aget v3, v6, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v7, v4

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v4

    xor-int/2addr v2, v4

    aget v2, v6, v2

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v4, v10

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v4

    xor-int/2addr v1, v4

    aget v1, v3, v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v3, v3, v10

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v3

    xor-int/2addr v0, v3

    aget v0, v2, v0

    :goto_6b
    xor-int/2addr v0, v1

    goto :goto_24

    :pswitch_6d
    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v10

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v3, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v4

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v2, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v4

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v9

    xor-int/2addr v1, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v10

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v8

    xor-int/2addr v0, v8

    :pswitch_a1
    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v10

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v3, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v10

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v2, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v8

    xor-int/2addr v1, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v7

    xor-int/2addr v0, v7

    :pswitch_d5
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v4

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v3, v9

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v3, v8

    aget v3, v7, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v10

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v2, v9

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v2, v8

    aget v2, v7, v2

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v7, v10

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v8, v4

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v4

    xor-int/2addr v1, v4

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v4

    xor-int/2addr v1, v4

    aget v1, v3, v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v3, v3, v10

    sget-object v4, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v4, v10

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v4

    xor-int/2addr v0, v4

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v3

    xor-int/2addr v0, v3

    aget v0, v2, v0

    goto/16 :goto_6b

    nop

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_25
        :pswitch_d5
        :pswitch_a1
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Fe32_3(I)I
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR1(I)I
    .registers 5

    const/4 v0, 0x0

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_9

    :goto_7
    xor-int/2addr v0, v1

    return v0

    :cond_9
    const/16 v0, 0xb4

    goto :goto_7
.end method

.method private LFSR2(I)I
    .registers 5

    const/4 v0, 0x0

    shr-int/lit8 v2, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_f

    move v1, v0

    :goto_8
    xor-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_12

    :goto_d
    xor-int/2addr v0, v1

    return v0

    :cond_f
    const/16 v1, 0xb4

    goto :goto_8

    :cond_12
    const/16 v0, 0x5a

    goto :goto_d
.end method

.method private Mx_X(I)I
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Mx_Y(I)I
    .registers 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private RS_MDS_Encode(II)I
    .registers 6

    const/4 v2, 0x4

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_a

    xor-int v1, p2, p1

    :goto_7
    if-lt v0, v2, :cond_11

    return v1

    :cond_a
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private RS_rem(I)I
    .registers 7

    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v2, v1, 0xff

    shl-int/lit8 v3, v2, 0x1

    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_24

    move v1, v0

    :goto_c
    xor-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_27

    :goto_15
    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v0, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0

    :cond_24
    const/16 v1, 0x14d

    goto :goto_c

    :cond_27
    const/16 v0, 0xa6

    goto :goto_15
.end method

.method private b0(I)I
    .registers 3

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private b1(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b2(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b3(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .registers 16

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int v5, v0, v1

    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int v4, v0, v1

    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int v3, v0, v1

    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int v2, v0, v1

    const/16 v1, 0x27

    const/4 v0, 0x0

    :goto_35
    const/16 v6, 0x10

    if-lt v0, v6, :cond_64

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    xor-int/2addr v0, v3

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    xor-int/2addr v0, v4

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    return-void

    :cond_64
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v6

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v1, -0x1

    aget v1, v9, v1

    add-int/2addr v1, v8

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    add-int v3, v6, v7

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, -0x1

    aget v6, v6, v10

    add-int/2addr v3, v6

    xor-int/2addr v3, v2

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v2, v1

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v7, -0x1

    aget v7, v9, v7

    add-int/2addr v7, v8

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v1, v10, -0x1

    aget v7, v7, v10

    add-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v4, 0x1

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_35
.end method

.method private encryptBlock([BI[BI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v6, 0x2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v2, v2, v0

    xor-int v5, v1, v2

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    xor-int v4, v1, v2

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v2, v2, v6

    xor-int v3, v1, v2

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x3

    aget v2, v2, v6

    xor-int/2addr v2, v1

    const/16 v1, 0x8

    :goto_33
    const/16 v6, 0x10

    if-lt v0, v6, :cond_62

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    xor-int/2addr v0, v3

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    xor-int/2addr v0, v4

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    return-void

    :cond_62
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v6

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v7

    add-int v8, v6, v7

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v8

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v3, v1

    shl-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    mul-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, 0x1

    aget v6, v6, v10

    add-int/2addr v2, v6

    xor-int/2addr v2, v1

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    add-int v8, v1, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v7, 0x1

    aget v7, v9, v7

    add-int/2addr v7, v8

    xor-int/2addr v5, v7

    ushr-int/lit8 v7, v5, 0x1

    shl-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v7

    shl-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v4, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v1, v10, 0x1

    aget v7, v7, v10

    add-int/2addr v6, v7

    xor-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_33
.end method

.method private setKey([B)V
    .registers 19

    const/4 v2, 0x4

    new-array v3, v2, [I

    const/4 v2, 0x4

    new-array v4, v2, [I

    const/4 v2, 0x4

    new-array v5, v2, [I

    const/16 v2, 0x28

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v6, 0x1

    if-lt v2, v6, :cond_45

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v6, 0x4

    if-gt v2, v6, :cond_4e

    const/4 v2, 0x0

    :goto_20
    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    if-lt v2, v6, :cond_57

    const/4 v2, 0x0

    :goto_27
    const/16 v6, 0x14

    if-lt v2, v6, :cond_85

    const/4 v2, 0x0

    aget v7, v5, v2

    const/4 v2, 0x1

    aget v8, v5, v2

    const/4 v2, 0x2

    aget v9, v5, v2

    const/4 v2, 0x3

    aget v10, v5, v2

    const/16 v2, 0x400

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    const/4 v3, 0x0

    :goto_40
    const/16 v2, 0x100

    if-lt v3, v2, :cond_bb

    return-void

    :cond_45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Key size less than 64 bits"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Key size larger than 256 bits"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_57
    mul-int/lit8 v6, v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v7

    aput v7, v3, v2

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v6

    aput v6, v4, v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aget v7, v3, v2

    aget v8, v4, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_85
    const v6, 0x2020202

    mul-int/2addr v6, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v7

    const v8, 0x1010101

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v6

    shl-int/lit8 v8, v6, 0x8

    ushr-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v8

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v9, v2, 0x2

    aput v7, v8, v9

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    shl-int/lit8 v9, v6, 0x9

    ushr-int/lit8 v6, v6, 0x17

    or-int/2addr v6, v9

    aput v6, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_27

    :cond_bb
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_294

    :goto_c4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_40

    :pswitch_c8
    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    :goto_cc
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v12, v3, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aget-byte v2, v15, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v2, v15

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int/2addr v2, v14

    aget v2, v13, v2

    aput v2, v11, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v15, 0x1

    aget-object v14, v14, v15

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int/2addr v4, v14

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v4, v13

    aget v4, v12, v4

    aput v4, v2, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit16 v4, v4, 0x200

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v12, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int/2addr v5, v13

    aget-byte v5, v12, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v5, v12

    aget v5, v11, v5

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit16 v4, v4, 0x201

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v6, v12

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    :goto_189
    aput v5, v2, v4

    goto/16 :goto_c4

    :pswitch_18d
    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    :goto_191
    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v2, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v11

    xor-int/2addr v4, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v11

    xor-int/2addr v5, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v6, v11

    goto/16 :goto_cc

    :pswitch_1d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit16 v4, v4, 0x200

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit16 v4, v4, 0x201

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    goto/16 :goto_189

    :pswitch_251
    sget-object v2, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v4, 0x1

    aget-object v2, v2, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v4

    xor-int/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v6, v11

    goto/16 :goto_191

    nop

    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_251
        :pswitch_1d3
        :pswitch_c8
        :pswitch_18d
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to Twofish init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_21

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_2a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-nez v0, :cond_33

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    :goto_15
    const/16 v0, 0x10

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    goto :goto_15
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    goto :goto_4
.end method
