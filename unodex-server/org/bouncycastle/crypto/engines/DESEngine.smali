.class public Lorg/bouncycastle/crypto/engines/DESEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static final SP1:[I

.field private static final SP2:[I

.field private static final SP3:[I

.field private static final SP4:[I

.field private static final SP5:[I

.field private static final SP6:[I

.field private static final SP7:[I

.field private static final SP8:[I

.field private static final bigbyte:[I

.field private static final bytebit:[S

.field private static final pc1:[B

.field private static final pc2:[B

.field private static final totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [S

    const/16 v1, 0x80

    aput-short v1, v0, v3

    const/16 v1, 0x40

    aput-short v1, v0, v4

    const/16 v1, 0x20

    aput-short v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x10

    aput-short v2, v0, v1

    aput-short v7, v0, v6

    const/4 v1, 0x5

    aput-short v6, v0, v1

    const/4 v1, 0x6

    aput-short v5, v0, v1

    const/4 v1, 0x7

    aput-short v4, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    const/16 v0, 0x18

    new-array v0, v0, [I

    const/high16 v1, 0x800000

    aput v1, v0, v3

    const/high16 v1, 0x400000

    aput v1, v0, v4

    const/high16 v1, 0x200000

    aput v1, v0, v5

    const/4 v1, 0x3

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/high16 v1, 0x80000

    aput v1, v0, v6

    const/4 v1, 0x5

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x10000

    aput v2, v0, v1

    const v1, 0x8000

    aput v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v7, v0, v1

    const/16 v1, 0x15

    aput v6, v0, v1

    const/16 v1, 0x16

    aput v5, v0, v1

    const/16 v1, 0x17

    aput v4, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    const/16 v0, 0x38

    new-array v0, v0, [B

    const/16 v1, 0x38

    aput-byte v1, v0, v3

    const/16 v1, 0x30

    aput-byte v1, v0, v4

    const/16 v1, 0x28

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v4, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v6, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v4, v0, v3

    aput-byte v5, v0, v4

    aput-byte v6, v0, v5

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    aput-byte v7, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    const/16 v0, 0x30

    new-array v0, v0, [B

    const/16 v1, 0xd

    aput-byte v1, v0, v3

    const/16 v1, 0x10

    aput-byte v1, v0, v4

    const/16 v1, 0xa

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    aput-byte v3, v0, v6

    const/4 v1, 0x5

    aput-byte v6, v0, v1

    const/4 v1, 0x6

    aput-byte v5, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v4, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    const/16 v0, 0x40

    new-array v0, v0, [I

    const v1, 0x1010400

    aput v1, v0, v3

    aput v3, v0, v4

    const/high16 v1, 0x10000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x1010404

    aput v2, v0, v1

    const v1, 0x1010004

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10404

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x10000

    aput v2, v0, v1

    const/16 v1, 0x400

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x10000

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v6, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0x26

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x10000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x2d

    aput v6, v0, v1

    const/16 v1, 0x2e

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x1010000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x3c

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x3e

    aput v3, v0, v1

    const/16 v1, 0x3f

    const v2, 0x1010004

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const v1, -0x7fef7fe0

    aput v1, v0, v3

    const v1, -0x7fff8000

    aput v1, v0, v4

    const v1, 0x8000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x108020

    aput v2, v0, v1

    const/high16 v1, 0x100000

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const v1, -0x7fffffe0

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    const/16 v1, 0x21

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x28

    const/high16 v2, -0x7ff00000

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x100000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x39

    aput v3, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x108000

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/16 v1, 0x208

    aput v1, v0, v3

    const v1, 0x8020200

    aput v1, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x3

    const v2, 0x8020008

    aput v2, v0, v1

    const v1, 0x8000200

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const v2, 0x20208

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x8000200

    aput v2, v0, v1

    const v1, 0x20008

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x10

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v7, v0, v1

    const/16 v1, 0x1d

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x24

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x2e

    aput v3, v0, v1

    const/16 v1, 0x2f

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x31

    const/high16 v2, 0x20000

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x8000000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v7, v0, v1

    const/16 v1, 0x35

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x38

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x8020000

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x3d

    aput v7, v0, v1

    const/16 v1, 0x3e

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20200

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const v1, 0x802001

    aput v1, v0, v3

    const/16 v1, 0x2081

    aput v1, v0, v4

    const/16 v1, 0x2081

    aput v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x80

    aput v2, v0, v1

    const v1, 0x802080

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x800081

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x800001

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2001

    aput v2, v0, v1

    aput v3, v0, v7

    const/16 v1, 0x9

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x25

    aput v3, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x27

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v4, v0, v1

    const/16 v1, 0x2c

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x32

    aput v4, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x800000

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x802080

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/16 v1, 0x100

    aput v1, v0, v3

    const v1, 0x2080100

    aput v1, v0, v4

    const/high16 v1, 0x2080000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x42000100    # 32.000977f

    aput v2, v0, v1

    const/high16 v1, 0x80000

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x2080000

    aput v2, v0, v1

    const v1, 0x40080100

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x80000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x42000100    # 32.000977f

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x42080000    # 34.0f

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    const/16 v1, 0x10

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x11

    const/high16 v2, 0x40080000    # 2.125f

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x40080000    # 2.125f

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    const v2, 0x40000100    # 2.000061f

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x42080100    # 34.000977f

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x42080100    # 34.000977f

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x42080000    # 34.0f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x40000100    # 2.000061f

    aput v2, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, 0x42000000    # 32.0f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x42000000    # 32.0f

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x80000

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x42000100    # 32.000977f

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x24

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x2080000

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x42000100    # 32.000977f

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x42080000    # 34.0f

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x2000000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x42080000    # 34.0f

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x42080100    # 34.000977f

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x42000000    # 32.0f

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x42080100    # 34.000977f

    aput v2, v0, v1

    const/16 v1, 0x34

    const/high16 v2, 0x2080000

    aput v2, v0, v1

    const/16 v1, 0x35

    aput v3, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x40080000    # 2.125f

    aput v2, v0, v1

    const/16 v1, 0x37

    const/high16 v2, 0x42000000    # 32.0f

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x40000100    # 2.000061f

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x80000

    aput v2, v0, v1

    const/16 v1, 0x3c

    aput v3, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x40080000    # 2.125f

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x40000100    # 2.000061f

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const v1, 0x20000010

    aput v1, v0, v3

    const/high16 v1, 0x20400000

    aput v1, v0, v4

    const/16 v1, 0x4000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x20404010

    aput v2, v0, v1

    const/high16 v1, 0x20400000

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x10

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x20404010

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const v1, 0x20004000

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0xa

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x28

    const/high16 v2, 0x400000

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x20400000

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x32

    aput v3, v0, v1

    const/16 v1, 0x33

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x20400000

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x3c

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x20000000

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20004010

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/high16 v1, 0x200000

    aput v1, v0, v3

    const v1, 0x4200002

    aput v1, v0, v4

    const v1, 0x4000802    # 1.5050005E-36f

    aput v1, v0, v5

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x800

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x4000802    # 1.5050005E-36f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x200802

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x4200800

    aput v2, v0, v1

    const v1, 0x4200802

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v5, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x4000800    # 1.5050001E-36f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x4000800    # 1.5050001E-36f

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x1d

    aput v5, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x22

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x4000802    # 1.5050005E-36f

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x4000802    # 1.5050005E-36f

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v5, v0, v1

    const/16 v1, 0x28

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x4000000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x4000800    # 1.5050001E-36f

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/high16 v2, 0x200000

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x33

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x35

    aput v3, v0, v1

    const/16 v1, 0x36

    aput v5, v0, v1

    const/16 v1, 0x37

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x38

    aput v3, v0, v1

    const/16 v1, 0x39

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x4200000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x4000800    # 1.5050001E-36f

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x200002

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const v1, 0x10001040

    aput v1, v0, v3

    const/16 v1, 0x1000

    aput v1, v0, v4

    const/high16 v1, 0x40000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x10041040

    aput v2, v0, v1

    const/high16 v1, 0x10000000

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10001040

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x10000000

    aput v2, v0, v1

    const v1, 0x40040

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x10040000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x10

    const/high16 v2, 0x10040000

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/high16 v2, 0x10040000

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/high16 v2, 0x10000000

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x40000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x30

    aput v3, v0, v1

    const/16 v1, 0x31

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x34

    const/high16 v2, 0x10040000

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x37

    aput v3, v0, v1

    const/16 v1, 0x38

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/high16 v2, 0x10000000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x10041000

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .registers 13

    add-int/lit8 v0, p3, 0x0

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p3, 0x5

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x6

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x7

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v2, v1

    const v3, 0xf0f0f0f

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x4

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    const v3, 0x33333333

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v0

    const v3, 0xff00ff

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    xor-int v2, v0, v1

    const v3, -0x55555556

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    and-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    and-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_89
    const/16 v3, 0x8

    if-lt v0, v3, :cond_118

    shl-int/lit8 v0, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    xor-int v1, v2, v0

    const v3, -0x55555556

    and-int/2addr v1, v3

    xor-int/2addr v2, v1

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x1f

    ushr-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v0

    const v3, 0xff00ff

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    const v3, 0x33333333

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v2, v1

    const v3, 0xf0f0f0f

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x4

    xor-int/2addr v0, v2

    add-int/lit8 v2, p5, 0x0

    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x1

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x2

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p4, v2

    add-int/lit8 v0, p5, 0x4

    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, p5, 0x5

    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, p5, 0x6

    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, p5, 0x7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    return-void

    :cond_118
    shl-int/lit8 v3, v1, 0x1c

    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x0

    aget v4, p1, v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v3, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0x3f

    aget v3, v5, v3

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    xor-int/2addr v4, v1

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit8 v4, v4, 0x3f

    aget v4, v5, v4

    or-int/2addr v3, v4

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0x1c

    ushr-int/lit8 v4, v2, 0x4

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v4, p1, v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v3, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0x3f

    aget v3, v5, v3

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v4, p1, v4

    xor-int/2addr v4, v2

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit8 v4, v4, 0x3f

    aget v4, v5, v4

    or-int/2addr v3, v4

    xor-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_89
.end method

.method protected generateWorkingKey(Z[B)[I
    .registers 12

    const/16 v0, 0x20

    new-array v3, v0, [I

    const/16 v0, 0x38

    new-array v4, v0, [Z

    const/16 v0, 0x38

    new-array v5, v0, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    const/16 v0, 0x38

    if-lt v1, v0, :cond_1e

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    const/16 v0, 0x10

    if-lt v2, v0, :cond_38

    const/4 v0, 0x0

    :goto_19
    const/16 v1, 0x20

    if-ne v0, v1, :cond_b0

    return-object v3

    :cond_1e
    sget-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    aget-byte v0, v0, v1

    ushr-int/lit8 v2, v0, 0x3

    aget-byte v2, p2, v2

    sget-object v6, Lorg/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    and-int/lit8 v0, v0, 0x7

    aget-short v0, v6, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_36

    const/4 v0, 0x0

    :goto_30
    aput-boolean v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_36
    const/4 v0, 0x1

    goto :goto_30

    :cond_38
    if-nez p1, :cond_5a

    rsub-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x1

    :goto_3e
    add-int/lit8 v6, v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v6

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v1, 0x0

    :goto_47
    const/16 v7, 0x1c

    if-lt v1, v7, :cond_5d

    const/16 v1, 0x1c

    :goto_4d
    const/16 v7, 0x38

    if-lt v1, v7, :cond_72

    const/4 v1, 0x0

    :goto_52
    const/16 v7, 0x18

    if-lt v1, v7, :cond_87

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_5a
    shl-int/lit8 v0, v2, 0x1

    goto :goto_3e

    :cond_5d
    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v7, v7, v2

    add-int/2addr v7, v1

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_6f

    add-int/lit8 v7, v7, -0x1c

    aget-boolean v7, v4, v7

    :goto_6a
    aput-boolean v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_6f
    aget-boolean v7, v4, v7

    goto :goto_6a

    :cond_72
    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v7, v7, v2

    add-int/2addr v7, v1

    const/16 v8, 0x38

    if-lt v7, v8, :cond_84

    add-int/lit8 v7, v7, -0x1c

    aget-boolean v7, v4, v7

    :goto_7f
    aput-boolean v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_84
    aget-boolean v7, v4, v7

    goto :goto_7f

    :cond_87
    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    aget-byte v7, v7, v1

    aget-boolean v7, v5, v7

    if-nez v7, :cond_9c

    :goto_8f
    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    add-int/lit8 v8, v1, 0x18

    aget-byte v7, v7, v8

    aget-boolean v7, v5, v7

    if-nez v7, :cond_a6

    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_9c
    aget v7, v3, v0

    sget-object v8, Lorg/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v3, v0

    goto :goto_8f

    :cond_a6
    aget v7, v3, v6

    sget-object v8, Lorg/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v3, v6

    goto :goto_99

    :cond_b0
    aget v1, v3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, v3, v2

    const/high16 v4, 0xfc0000

    and-int/2addr v4, v1

    shl-int/lit8 v4, v4, 0x6

    and-int/lit16 v5, v1, 0xfc0

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    const/high16 v5, 0xfc0000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xfc0

    ushr-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    const v5, 0x3f000

    and-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v5

    const v5, 0x3f000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    aput v1, v3, v4

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_19
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to DES init - "

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
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_3f

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/DESEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DES key too long - should be 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    if-eqz v0, :cond_1b

    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_24

    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_2d

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESEngine;->desFunc([I[BI[BI)V

    const/16 v0, 0x8

    return v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DES engine not initialised"

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
