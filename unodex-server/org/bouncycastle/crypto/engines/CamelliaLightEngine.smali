.class public Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final MASK8:I = 0xff

.field private static final SBOX1:[B

.field private static final SIGMA:[I


# instance fields
.field private _keyis128:Z

.field private initialized:Z

.field private ke:[I

.field private kw:[I

.field private state:[I

.field private subkey:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [I

    const v1, -0x5f619981

    aput v1, v0, v3

    const v1, 0x3bcc908b

    aput v1, v0, v4

    const v1, -0x498517a8

    aput v1, v0, v5

    const v1, 0x4caa73b2    # 8.9365904E7f

    aput v1, v0, v6

    const v1, -0x3910c8d1

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x16b07d42

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x54ff53a5

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0xe2c90e4

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x10e527fa

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x2197d2e3

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x4fa9773e

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x4c193e03

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x70

    aput-byte v1, v0, v3

    const/16 v1, -0x7e

    aput-byte v1, v0, v4

    const/16 v1, 0x2c

    aput-byte v1, v0, v5

    const/16 v1, -0x14

    aput-byte v1, v0, v6

    const/16 v1, -0x4d

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v4, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    aput-byte v7, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    aput-byte v6, v0, v1

    const/16 v1, 0x9a

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    aput-byte v5, v0, v1

    const/16 v1, 0xa4

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x60

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    return-void
.end method

.method private bytes2int([BI)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    shl-int/lit8 v1, v1, 0x8

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private camelliaF2([I[II)V
    .registers 13

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    aget v0, p1, v5

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    xor-int/2addr v0, v1

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v1

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    aget v1, p1, v6

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    and-int/lit16 v3, v1, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->rightRotate(II)I

    move-result v0

    xor-int/2addr v0, v1

    aget v2, p1, v7

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v7

    aget v1, p1, v8

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v0

    xor-int/2addr v0, v1

    aput v0, p1, v8

    aget v0, p1, v7

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    xor-int/2addr v0, v1

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v1

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    aget v1, p1, v8

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    and-int/lit16 v3, v1, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->rightRotate(II)I

    move-result v0

    xor-int/2addr v0, v1

    aget v2, p1, v5

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v5

    aget v1, p1, v6

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v0

    xor-int/2addr v0, v1

    aput v0, p1, v6

    return-void
.end method

.method private camelliaFLs([I[II)V
    .registers 11

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget v0, p1, v3

    aget v1, p1, v4

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v4

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    aget v2, p1, v3

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v5

    add-int/lit8 v1, p3, 0x3

    aget v1, p2, v1

    aget v2, p1, v6

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v6

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    aget v2, p1, v5

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    aput v0, p1, v6

    return-void
.end method

.method private static decroldq(I[II[II)V
    .registers 9

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private static decroldqo32(I[II[II)V
    .registers 9

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private int2bytes(I[BI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    rsub-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p3

    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private lRot8(BI)B
    .registers 6

    shl-int v0, p1, p2

    and-int/lit16 v1, p1, 0xff

    rsub-int/lit8 v2, p2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static leftRotate(II)I
    .registers 4

    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private processBlock128([BI[BI)I
    .registers 14

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v1, 0x0

    move v0, v1

    :goto_6
    if-lt v0, v5, :cond_b7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v3, v3, v5

    xor-int/2addr v2, v3

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v8

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v7

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    const/16 v0, 0x10

    return v0

    :cond_b7
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6
.end method

.method private processBlock192or256([BI[BI)I
    .registers 14

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v1, 0x0

    move v0, v1

    :goto_6
    if-lt v0, v5, :cond_db

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v3, 0x8

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x24

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x28

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x2c

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v3, v3, v5

    xor-int/2addr v2, v3

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v8

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v0, v6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v7

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    const/16 v0, 0x10

    return v0

    :cond_db
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6
.end method

.method private static rightRotate(II)I
    .registers 4

    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static roldq(I[II[II)V
    .registers 9

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private static roldqo32(I[II[II)V
    .registers 9

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private sbox2(I)I
    .registers 4

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private sbox3(I)I
    .registers 4

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private sbox4(I)I
    .registers 5

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private setKey(Z[B)V
    .registers 15

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v2, v0, [I

    new-array v3, v8, [I

    new-array v4, v8, [I

    new-array v5, v8, [I

    array-length v0, p2

    sparse-switch v0, :sswitch_data_404

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key sizes are only 16/24/32 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    iput-boolean v9, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    invoke-direct {p0, p2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    const/4 v0, 0x7

    aput v1, v2, v0

    const/4 v0, 0x6

    aput v1, v2, v0

    const/4 v0, 0x5

    aput v1, v2, v0

    aput v1, v2, v8

    :goto_45
    move v0, v1

    :goto_46
    if-lt v0, v8, :cond_1af

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    move v0, v1

    :goto_4e
    if-lt v0, v8, :cond_1bc

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    invoke-direct {p0, v3, v0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    if-nez v0, :cond_1c7

    move v0, v1

    :goto_5a
    if-lt v0, v8, :cond_32e

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    const/16 v5, 0x8

    invoke-direct {p0, v4, v0, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    if-nez p1, :cond_33b

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v5, v2, v1

    aput v5, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v5, 0x5

    aget v6, v2, v9

    aput v6, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v5, 0x6

    aget v6, v2, v10

    aput v6, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v5, 0x7

    aget v6, v2, v11

    aput v6, v0, v5

    const/16 v0, 0x2d

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x1c

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v0, v2, v1, v5, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0xc

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v0, v2, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x28

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x14

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x24

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x18

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v2, v3, v9

    aput v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v2, v3, v10

    aput v2, v0, v11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v2, v3, v11

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v2, v3, v1

    aput v2, v0, v9

    const/16 v0, 0x31

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x2e

    aget v3, v4, v1

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x2f

    aget v3, v4, v9

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x2c

    aget v3, v4, v10

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x2d

    aget v3, v4, v11

    aput v3, v0, v2

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x33

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v0, v4, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    :goto_12e
    return-void

    :sswitch_12f
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    invoke-direct {p0, p2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v8

    const/4 v0, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    const/4 v0, 0x6

    aget v6, v2, v8

    xor-int/lit8 v6, v6, -0x1

    aput v6, v2, v0

    const/4 v0, 0x7

    const/4 v6, 0x5

    aget v6, v2, v6

    xor-int/lit8 v6, v6, -0x1

    aput v6, v2, v0

    :goto_16b
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    goto/16 :goto_45

    :sswitch_16f
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    invoke-direct {p0, p2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v8

    const/4 v0, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    const/4 v0, 0x6

    const/16 v6, 0x18

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    const/4 v0, 0x7

    const/16 v6, 0x1c

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    goto :goto_16b

    :cond_1af
    aget v6, v2, v0

    add-int/lit8 v7, v0, 0x4

    aget v7, v2, v7

    xor-int/2addr v6, v7

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_46

    :cond_1bc
    aget v6, v3, v0

    aget v7, v2, v0

    xor-int/2addr v6, v7

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4e

    :cond_1c7
    if-nez p1, :cond_280

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v2, v1

    aput v4, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x5

    aget v6, v2, v9

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x6

    aget v6, v2, v10

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x7

    aget v6, v2, v11

    aput v6, v0, v4

    const/16 v0, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x1c

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x14

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v2, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x10

    aget v6, v5, v1

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x11

    aget v6, v5, v9

    aput v6, v0, v4

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v0, v2, v1, v4, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v0, v2, v1, v4, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x22

    aget v4, v3, v1

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x23

    aget v4, v3, v9

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x20

    aget v4, v3, v10

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x21

    aget v4, v3, v11

    aput v4, v0, v2

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x18

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v3, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x12

    aget v4, v5, v10

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x13

    aget v4, v5, v11

    aput v4, v0, v2

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0xc

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0x11

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v0, v3, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    goto/16 :goto_12e

    :cond_280
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v2, v1

    aput v4, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v2, v9

    aput v4, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v2, v10

    aput v4, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v4, v2, v11

    aput v4, v0, v11

    const/16 v0, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v0, v2, v1, v4, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0xc

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v2, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x12

    aget v6, v5, v10

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x13

    aget v6, v5, v11

    aput v6, v0, v4

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v0, v2, v1, v4, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x18

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x20

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v3, v1

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v3, v9

    aput v2, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v3, v10

    aput v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v3, v11

    aput v2, v0, v11

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x8

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v0, v3, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v3, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x10

    aget v4, v5, v1

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v2, 0x11

    aget v4, v5, v9

    aput v4, v0, v2

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x14

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v4, 0x1c

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v0, 0x11

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    goto/16 :goto_12e

    :cond_32e
    aget v5, v3, v0

    add-int/lit8 v6, v0, 0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5a

    :cond_33b
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v5, v2, v1

    aput v5, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v5, v2, v9

    aput v5, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v5, v2, v10

    aput v5, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v5, v2, v11

    aput v5, v0, v11

    const/16 v0, 0x2d

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x10

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v0, v2, v1, v5, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x20

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x2c

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v0, v2, v8, v5, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v0, v2, v8, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x18

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x24

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x8

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x14

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v2, 0x8

    aget v5, v3, v9

    aput v5, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v2, 0x9

    aget v5, v3, v10

    aput v5, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v2, 0xa

    aget v5, v3, v11

    aput v5, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v2, 0xb

    aget v5, v3, v1

    aput v5, v0, v2

    const/16 v0, 0x31

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v5, 0x28

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v4, v1

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v4, v9

    aput v2, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v4, v10

    aput v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v2, v4, v11

    aput v2, v0, v11

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v0, 0x33

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v0, v4, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    goto/16 :goto_12e

    nop

    :sswitch_data_404
    .sparse-switch
        0x10 -> :sswitch_1c
        0x18 -> :sswitch_12f
        0x20 -> :sswitch_16f
    .end sparse-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Camellia"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_11

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->setKey(Z[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->initialized:Z

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only simple KeyParameter expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->initialized:Z

    if-eqz v0, :cond_17

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_20

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_29

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    if-nez v0, :cond_32

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->processBlock192or256([BI[BI)I

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Camellia is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaLightEngine;->processBlock128([BI[BI)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
