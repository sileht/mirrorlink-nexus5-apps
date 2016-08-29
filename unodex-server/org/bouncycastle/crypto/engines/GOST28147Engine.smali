.class public Lorg/bouncycastle/crypto/engines/GOST28147Engine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static DSbox_A:[B

.field private static DSbox_Test:[B

.field private static ESbox_A:[B

.field private static ESbox_B:[B

.field private static ESbox_C:[B

.field private static ESbox_D:[B

.field private static ESbox_Test:[B

.field private static Sbox_Default:[B

.field private static sBoxes:Ljava/util/Hashtable;


# instance fields
.field private S:[B

.field private forEncryption:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [B

    aput-byte v7, v0, v3

    const/16 v1, 0xa

    aput-byte v1, v0, v4

    const/16 v1, 0x9

    aput-byte v1, v0, v5

    aput-byte v5, v0, v6

    const/16 v1, 0xd

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v5, v0, v1

    const/16 v1, 0x19

    aput-byte v6, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v4, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v6, v0, v1

    const/16 v1, 0x26

    aput-byte v7, v0, v1

    const/16 v1, 0x27

    aput-byte v5, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v4, v0, v1

    const/16 v1, 0x34

    aput-byte v3, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v7, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    aput-byte v5, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v6, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    aput-byte v7, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v6, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v5, v0, v1

    const/16 v1, 0x50

    aput-byte v7, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    aput-byte v5, v0, v1

    const/16 v1, 0x56

    aput-byte v4, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    aput-byte v6, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    aput-byte v7, v0, v1

    const/16 v1, 0x63

    aput-byte v4, v0, v1

    const/16 v1, 0x64

    aput-byte v6, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    aput-byte v5, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    aput-byte v4, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v7, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    aput-byte v5, v0, v1

    const/16 v1, 0x7a

    aput-byte v6, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    aput-byte v7, v0, v3

    aput-byte v5, v0, v4

    const/16 v1, 0xf

    aput-byte v1, v0, v5

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    const/16 v1, 0x9

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v4, v0, v1

    const/16 v1, 0x16

    aput-byte v6, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v5, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v7, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v6, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    aput-byte v4, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v5, v0, v1

    const/16 v1, 0x2b

    aput-byte v7, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    aput-byte v4, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    aput-byte v7, v0, v1

    const/16 v1, 0x3e

    aput-byte v6, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    aput-byte v6, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    aput-byte v5, v0, v1

    const/16 v1, 0x4d

    aput-byte v4, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v7, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    aput-byte v4, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    aput-byte v6, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    aput-byte v5, v0, v1

    const/16 v1, 0x5f

    aput-byte v7, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    aput-byte v6, v0, v1

    const/16 v1, 0x65

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    aput-byte v7, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    aput-byte v4, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    aput-byte v5, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    aput-byte v5, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    aput-byte v6, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v7, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_Test:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x9

    aput-byte v1, v0, v3

    const/4 v1, 0x6

    aput-byte v1, v0, v4

    aput-byte v6, v0, v5

    aput-byte v5, v0, v6

    const/16 v1, 0x8

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v7, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v6, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v5, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v7, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v4, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v7, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    aput-byte v5, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v6, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    aput-byte v4, v0, v1

    const/16 v1, 0x36

    aput-byte v6, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v7, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    aput-byte v4, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    aput-byte v7, v0, v1

    const/16 v1, 0x4a

    aput-byte v5, v0, v1

    const/16 v1, 0x4b

    aput-byte v6, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    aput-byte v6, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    aput-byte v4, v0, v1

    const/16 v1, 0x55

    aput-byte v5, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v7, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    aput-byte v5, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    aput-byte v7, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    aput-byte v6, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    aput-byte v5, v0, v1

    const/16 v1, 0x7a

    aput-byte v6, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    aput-byte v7, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_A:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x8

    aput-byte v1, v0, v3

    aput-byte v7, v0, v4

    const/16 v1, 0xb

    aput-byte v1, v0, v5

    aput-byte v4, v0, v6

    aput-byte v6, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v5, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v4, v0, v1

    const/16 v1, 0x12

    aput-byte v5, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v7, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v6, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v5, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v6, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    aput-byte v7, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    aput-byte v4, v0, v1

    const/16 v1, 0x37

    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v6, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v7, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    aput-byte v5, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    aput-byte v4, v0, v1

    const/16 v1, 0x49

    aput-byte v7, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v6, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    aput-byte v6, v0, v1

    const/16 v1, 0x52

    aput-byte v5, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    aput-byte v7, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    aput-byte v4, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    aput-byte v5, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    aput-byte v4, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    aput-byte v6, v0, v1

    const/16 v1, 0x68

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    aput-byte v7, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v7, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    aput-byte v6, v0, v1

    const/16 v1, 0x76

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v4, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    aput-byte v5, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_B:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    aput-byte v4, v0, v3

    const/16 v1, 0xb

    aput-byte v1, v0, v4

    const/16 v1, 0xc

    aput-byte v1, v0, v5

    aput-byte v5, v0, v6

    const/16 v1, 0x9

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v7, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v4, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v7, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v6, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v5, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v7, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    aput-byte v6, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v6, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    aput-byte v4, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v7, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    aput-byte v4, v0, v1

    const/16 v1, 0x47

    aput-byte v5, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    aput-byte v6, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    aput-byte v4, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    aput-byte v5, v0, v1

    const/16 v1, 0x57

    aput-byte v7, v0, v1

    const/16 v1, 0x58

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    aput-byte v6, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    aput-byte v5, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    aput-byte v6, v0, v1

    const/16 v1, 0x6a

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    aput-byte v7, v0, v1

    const/16 v1, 0x6d

    aput-byte v4, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    aput-byte v7, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    aput-byte v5, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    aput-byte v4, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v6, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_C:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0xf

    aput-byte v1, v0, v3

    const/16 v1, 0xc

    aput-byte v1, v0, v4

    aput-byte v5, v0, v5

    const/16 v1, 0xa

    aput-byte v1, v0, v6

    const/4 v1, 0x6

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    aput-byte v7, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v6, v0, v1

    const/16 v1, 0x13

    aput-byte v7, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v4, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v7, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v6, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    aput-byte v5, v0, v1

    const/16 v1, 0x30

    aput-byte v4, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    aput-byte v3, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v7, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    aput-byte v6, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    aput-byte v5, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    aput-byte v6, v0, v1

    const/16 v1, 0x4a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    aput-byte v7, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v4, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    aput-byte v6, v0, v1

    const/16 v1, 0x54

    aput-byte v5, v0, v1

    const/16 v1, 0x55

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    aput-byte v4, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    aput-byte v7, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v6, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    aput-byte v4, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    aput-byte v5, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    aput-byte v7, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    aput-byte v4, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v7, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    aput-byte v6, v0, v1

    const/16 v1, 0x7a

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v5, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_D:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    aput-byte v7, v0, v3

    const/16 v1, 0xa

    aput-byte v1, v0, v4

    const/16 v1, 0x9

    aput-byte v1, v0, v5

    aput-byte v5, v0, v6

    const/16 v1, 0xd

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v5, v0, v1

    const/16 v1, 0x19

    aput-byte v6, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v4, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v6, v0, v1

    const/16 v1, 0x26

    aput-byte v7, v0, v1

    const/16 v1, 0x27

    aput-byte v5, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v4, v0, v1

    const/16 v1, 0x34

    aput-byte v3, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v7, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    aput-byte v5, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v6, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    aput-byte v7, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v6, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v5, v0, v1

    const/16 v1, 0x50

    aput-byte v7, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    aput-byte v5, v0, v1

    const/16 v1, 0x56

    aput-byte v4, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    aput-byte v6, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    aput-byte v7, v0, v1

    const/16 v1, 0x63

    aput-byte v4, v0, v1

    const/16 v1, 0x64

    aput-byte v6, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    aput-byte v5, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    aput-byte v4, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v7, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    aput-byte v5, v0, v1

    const/16 v1, 0x7a

    aput-byte v6, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_Test:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0xa

    aput-byte v1, v0, v3

    aput-byte v7, v0, v4

    const/4 v1, 0x5

    aput-byte v1, v0, v5

    const/4 v1, 0x6

    aput-byte v1, v0, v6

    const/16 v1, 0x8

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    aput-byte v6, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v5, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v5, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v4, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v6, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v7, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v6, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v7, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    aput-byte v3, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v4, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v6, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    aput-byte v7, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    aput-byte v5, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    aput-byte v4, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    aput-byte v6, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    aput-byte v5, v0, v1

    const/16 v1, 0x53

    aput-byte v7, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    aput-byte v4, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v6, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    aput-byte v7, v0, v1

    const/16 v1, 0x63

    aput-byte v4, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    aput-byte v6, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    aput-byte v5, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    aput-byte v4, v0, v1

    const/16 v1, 0x71

    aput-byte v6, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    aput-byte v7, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v5, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_A:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string/jumbo v0, "Default"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    const-string/jumbo v0, "E-TEST"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_Test:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    const-string/jumbo v0, "E-A"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_A:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    const-string/jumbo v0, "E-B"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_B:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    const-string/jumbo v0, "E-C"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_C:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    const-string/jumbo v0, "E-D"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_D:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    const-string/jumbo v0, "D-TEST"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_Test:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    const-string/jumbo v0, "D-A"

    sget-object v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_A:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    sget-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    return-void
.end method

.method private GOST28147Func([I[BI[BI)V
    .registers 16

    const/16 v8, 0x8

    const/4 v2, 0x7

    const/4 v7, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v1

    add-int/lit8 v0, p3, 0x4

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v0

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->forEncryption:Z

    if-nez v3, :cond_29

    move v3, v5

    :goto_14
    if-lt v3, v8, :cond_53

    move v4, v5

    :goto_17
    if-lt v4, v7, :cond_60

    :cond_19
    aget v2, p1, v5

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v2

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->intTobytes(I[BI)V

    add-int/lit8 v1, p5, 0x4

    invoke-direct {p0, v0, p4, v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->intTobytes(I[BI)V

    return-void

    :cond_29
    move v4, v5

    :goto_2a
    if-lt v4, v7, :cond_3b

    :goto_2c
    if-lez v2, :cond_19

    aget v3, p1, v2

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v3

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_2c

    :cond_3b
    move v3, v1

    move v1, v0

    move v0, v5

    :goto_3e
    if-lt v0, v8, :cond_46

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    move v1, v3

    goto :goto_2a

    :cond_46
    aget v6, p1, v0

    invoke-direct {p0, v3, v6}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v6

    xor-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_3e

    :cond_53
    aget v4, p1, v3

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v4

    xor-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    move v1, v4

    goto :goto_14

    :cond_60
    move v3, v1

    move v1, v0

    move v0, v2

    :goto_63
    if-gez v0, :cond_6b

    :cond_65
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    move v1, v3

    goto :goto_17

    :cond_6b
    const/4 v6, 0x2

    if-eq v4, v6, :cond_7b

    :goto_6e
    aget v6, p1, v0

    invoke-direct {p0, v3, v6}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v6

    xor-int/2addr v1, v6

    add-int/lit8 v0, v0, -0x1

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_63

    :cond_7b
    if-eqz v0, :cond_65

    goto :goto_6e
.end method

.method private GOST28147_mainStep(II)I
    .registers 7

    add-int v0, p2, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v2, v0, 0x0

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x0

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x10

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x20

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x30

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x40

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x14

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x50

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x18

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x60

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v0, v0, 0x1c

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x70

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x1c

    add-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xb

    ushr-int/lit8 v0, v0, 0x15

    or-int/2addr v0, v1

    return v0
.end method

.method private static addSBox(Ljava/lang/String;[B)V
    .registers 4

    sget-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private bytesToint([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private generateWorkingKey(Z[B)[I
    .registers 7

    const/16 v3, 0x8

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->forEncryption:Z

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_f

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_c
    if-ne v0, v3, :cond_18

    return-object v1

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    mul-int/lit8 v2, v0, 0x4

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static getSBox(Ljava/lang/String;)[B
    .registers 3

    sget-object v0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_15

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"D-Test\", \"D-A\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private intTobytes(I[BI)V
    .registers 6

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "GOST28147"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-nez v0, :cond_b

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_3d

    if-nez p2, :cond_48

    :cond_a
    :goto_a
    return-void

    :cond_b
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v0

    array-length v1, v0

    sget-object v2, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    array-length v2, v2

    if-ne v1, v2, :cond_34

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    :goto_31
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    goto :goto_a

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid S-box passed to GOST28147 init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    goto :goto_31

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to GOST28147 init - "

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
.end method

.method public processBlock([BI[BI)I
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    if-eqz v0, :cond_1b

    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_24

    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_2d

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147Func([I[BI[BI)V

    const/16 v0, 0x8

    return v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GOST28147 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
