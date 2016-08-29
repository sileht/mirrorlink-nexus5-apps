.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
.source "Unknown"


# static fields
.field private static final MAXLONG:I = 0x40

.field private static final mBitmask:[J

.field private static final mIBY64:[I

.field private static final mMaxmask:[J


# instance fields
.field private mBit:I

.field private mLength:I

.field private mPol:[J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [J

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v4

    const-wide/16 v2, 0x2

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x4

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x8

    aput-wide v2, v0, v7

    const-wide/16 v2, 0x10

    aput-wide v2, v0, v8

    const/4 v1, 0x5

    const-wide/16 v2, 0x20

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide/16 v2, 0x40

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide/16 v2, 0x80

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide/16 v2, 0x100

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x200

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide/16 v2, 0x400

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide/16 v2, 0x800

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide/16 v2, 0x1000

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide/16 v2, 0x2000

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide/16 v2, 0x4000

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide/32 v2, 0x8000

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide/32 v2, 0x10000

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide/32 v2, 0x20000

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide/32 v2, 0x40000

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide/32 v2, 0x80000

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide/32 v2, 0x100000

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide/32 v2, 0x200000

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide/32 v2, 0x400000

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide/32 v2, 0x800000

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide/32 v2, 0x1000000

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide/32 v2, 0x2000000

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide/32 v2, 0x4000000

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide/32 v2, 0x8000000

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide/32 v2, 0x10000000

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide/32 v2, 0x20000000

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide/32 v2, 0x40000000

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide v2, 0x80000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide v2, 0x100000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide v2, 0x200000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide v2, 0x400000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide v2, 0x800000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide v2, 0x1000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide v2, 0x2000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide v2, 0x4000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide v2, 0x8000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide v2, 0x10000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide v2, 0x20000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide v2, 0x40000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide v2, 0x80000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide v2, 0x100000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide v2, 0x200000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide v2, 0x400000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide v2, 0x800000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide/high16 v2, 0x1000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide/high16 v2, 0x2000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide/high16 v2, 0x4000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide/high16 v2, 0x8000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide/high16 v2, 0x10000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide/high16 v2, 0x20000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide/high16 v2, 0x40000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide/high16 v2, 0x80000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide/high16 v2, 0x100000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide/high16 v2, 0x200000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide/high16 v2, 0x400000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide/high16 v2, 0x800000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide/high16 v2, 0x1000000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide/high16 v2, 0x2000000000000000L

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v0, 0x40

    new-array v0, v0, [J

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v4

    const-wide/16 v2, 0x3

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x7

    aput-wide v2, v0, v6

    const-wide/16 v2, 0xf

    aput-wide v2, v0, v7

    const-wide/16 v2, 0x1f

    aput-wide v2, v0, v8

    const/4 v1, 0x5

    const-wide/16 v2, 0x3f

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide/16 v2, 0x7f

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide/16 v2, 0xff

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide/16 v2, 0x1ff

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x3ff

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide/16 v2, 0x7ff

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide/16 v2, 0xfff

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide/16 v2, 0x1fff

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide/16 v2, 0x3fff

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide/16 v2, 0x7fff

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide/32 v2, 0xffff

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide/32 v2, 0x1ffff

    aput-wide v2, v0, v1

    const/16 v1, 0x11

    const-wide/32 v2, 0x3ffff

    aput-wide v2, v0, v1

    const/16 v1, 0x12

    const-wide/32 v2, 0x7ffff

    aput-wide v2, v0, v1

    const/16 v1, 0x13

    const-wide/32 v2, 0xfffff

    aput-wide v2, v0, v1

    const/16 v1, 0x14

    const-wide/32 v2, 0x1fffff

    aput-wide v2, v0, v1

    const/16 v1, 0x15

    const-wide/32 v2, 0x3fffff

    aput-wide v2, v0, v1

    const/16 v1, 0x16

    const-wide/32 v2, 0x7fffff

    aput-wide v2, v0, v1

    const/16 v1, 0x17

    const-wide/32 v2, 0xffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x18

    const-wide/32 v2, 0x1ffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x19

    const-wide/32 v2, 0x3ffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x1a

    const-wide/32 v2, 0x7ffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x1b

    const-wide/32 v2, 0xfffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x1c

    const-wide/32 v2, 0x1fffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x1d

    const-wide/32 v2, 0x3fffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x1e

    const-wide/32 v2, 0x7fffffff

    aput-wide v2, v0, v1

    const/16 v1, 0x1f

    const-wide v2, 0xffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x20

    const-wide v2, 0x1ffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x21

    const-wide v2, 0x3ffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x22

    const-wide v2, 0x7ffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x23

    const-wide v2, 0xfffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x24

    const-wide v2, 0x1fffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x25

    const-wide v2, 0x3fffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x26

    const-wide v2, 0x7fffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x27

    const-wide v2, 0xffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x28

    const-wide v2, 0x1ffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x29

    const-wide v2, 0x3ffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x2a

    const-wide v2, 0x7ffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x2b

    const-wide v2, 0xfffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x2c

    const-wide v2, 0x1fffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x2d

    const-wide v2, 0x3fffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x2e

    const-wide v2, 0x7fffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x2f

    const-wide v2, 0xffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x30

    const-wide v2, 0x1ffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x31

    const-wide v2, 0x3ffffffffffffL    # 5.562684646268E-309

    aput-wide v2, v0, v1

    const/16 v1, 0x32

    const-wide v2, 0x7ffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x33

    const-wide v2, 0xfffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x34

    const-wide v2, 0x1fffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x35

    const-wide v2, 0x3fffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x36

    const-wide v2, 0x7fffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x37

    const-wide v2, 0xffffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x38

    const-wide v2, 0x1ffffffffffffffL    # 4.77830972673648E-299

    aput-wide v2, v0, v1

    const/16 v1, 0x39

    const-wide v2, 0x3ffffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x3a

    const-wide v2, 0x7ffffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x3b

    const-wide v2, 0xfffffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x3c

    const-wide v2, 0x1fffffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x3d

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v2, v0, v1

    const/16 v1, 0x3e

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v1

    const/16 v1, 0x3f

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    const/16 v0, 0x180

    new-array v0, v0, [I

    aput v4, v0, v4

    aput v4, v0, v5

    aput v4, v0, v6

    aput v4, v0, v7

    aput v4, v0, v8

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    const/16 v1, 0x14

    aput v4, v0, v1

    const/16 v1, 0x15

    aput v4, v0, v1

    const/16 v1, 0x16

    aput v4, v0, v1

    const/16 v1, 0x17

    aput v4, v0, v1

    const/16 v1, 0x18

    aput v4, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    const/16 v1, 0x1a

    aput v4, v0, v1

    const/16 v1, 0x1b

    aput v4, v0, v1

    const/16 v1, 0x1c

    aput v4, v0, v1

    const/16 v1, 0x1d

    aput v4, v0, v1

    const/16 v1, 0x1e

    aput v4, v0, v1

    const/16 v1, 0x1f

    aput v4, v0, v1

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v1, 0x21

    aput v4, v0, v1

    const/16 v1, 0x22

    aput v4, v0, v1

    const/16 v1, 0x23

    aput v4, v0, v1

    const/16 v1, 0x24

    aput v4, v0, v1

    const/16 v1, 0x25

    aput v4, v0, v1

    const/16 v1, 0x26

    aput v4, v0, v1

    const/16 v1, 0x27

    aput v4, v0, v1

    const/16 v1, 0x28

    aput v4, v0, v1

    const/16 v1, 0x29

    aput v4, v0, v1

    const/16 v1, 0x2a

    aput v4, v0, v1

    const/16 v1, 0x2b

    aput v4, v0, v1

    const/16 v1, 0x2c

    aput v4, v0, v1

    const/16 v1, 0x2d

    aput v4, v0, v1

    const/16 v1, 0x2e

    aput v4, v0, v1

    const/16 v1, 0x2f

    aput v4, v0, v1

    const/16 v1, 0x30

    aput v4, v0, v1

    const/16 v1, 0x31

    aput v4, v0, v1

    const/16 v1, 0x32

    aput v4, v0, v1

    const/16 v1, 0x33

    aput v4, v0, v1

    const/16 v1, 0x34

    aput v4, v0, v1

    const/16 v1, 0x35

    aput v4, v0, v1

    const/16 v1, 0x36

    aput v4, v0, v1

    const/16 v1, 0x37

    aput v4, v0, v1

    const/16 v1, 0x38

    aput v4, v0, v1

    const/16 v1, 0x39

    aput v4, v0, v1

    const/16 v1, 0x3a

    aput v4, v0, v1

    const/16 v1, 0x3b

    aput v4, v0, v1

    const/16 v1, 0x3c

    aput v4, v0, v1

    const/16 v1, 0x3d

    aput v4, v0, v1

    const/16 v1, 0x3e

    aput v4, v0, v1

    const/16 v1, 0x3f

    aput v4, v0, v1

    const/16 v1, 0x40

    aput v5, v0, v1

    const/16 v1, 0x41

    aput v5, v0, v1

    const/16 v1, 0x42

    aput v5, v0, v1

    const/16 v1, 0x43

    aput v5, v0, v1

    const/16 v1, 0x44

    aput v5, v0, v1

    const/16 v1, 0x45

    aput v5, v0, v1

    const/16 v1, 0x46

    aput v5, v0, v1

    const/16 v1, 0x47

    aput v5, v0, v1

    const/16 v1, 0x48

    aput v5, v0, v1

    const/16 v1, 0x49

    aput v5, v0, v1

    const/16 v1, 0x4a

    aput v5, v0, v1

    const/16 v1, 0x4b

    aput v5, v0, v1

    const/16 v1, 0x4c

    aput v5, v0, v1

    const/16 v1, 0x4d

    aput v5, v0, v1

    const/16 v1, 0x4e

    aput v5, v0, v1

    const/16 v1, 0x4f

    aput v5, v0, v1

    const/16 v1, 0x50

    aput v5, v0, v1

    const/16 v1, 0x51

    aput v5, v0, v1

    const/16 v1, 0x52

    aput v5, v0, v1

    const/16 v1, 0x53

    aput v5, v0, v1

    const/16 v1, 0x54

    aput v5, v0, v1

    const/16 v1, 0x55

    aput v5, v0, v1

    const/16 v1, 0x56

    aput v5, v0, v1

    const/16 v1, 0x57

    aput v5, v0, v1

    const/16 v1, 0x58

    aput v5, v0, v1

    const/16 v1, 0x59

    aput v5, v0, v1

    const/16 v1, 0x5a

    aput v5, v0, v1

    const/16 v1, 0x5b

    aput v5, v0, v1

    const/16 v1, 0x5c

    aput v5, v0, v1

    const/16 v1, 0x5d

    aput v5, v0, v1

    const/16 v1, 0x5e

    aput v5, v0, v1

    const/16 v1, 0x5f

    aput v5, v0, v1

    const/16 v1, 0x60

    aput v5, v0, v1

    const/16 v1, 0x61

    aput v5, v0, v1

    const/16 v1, 0x62

    aput v5, v0, v1

    const/16 v1, 0x63

    aput v5, v0, v1

    const/16 v1, 0x64

    aput v5, v0, v1

    const/16 v1, 0x65

    aput v5, v0, v1

    const/16 v1, 0x66

    aput v5, v0, v1

    const/16 v1, 0x67

    aput v5, v0, v1

    const/16 v1, 0x68

    aput v5, v0, v1

    const/16 v1, 0x69

    aput v5, v0, v1

    const/16 v1, 0x6a

    aput v5, v0, v1

    const/16 v1, 0x6b

    aput v5, v0, v1

    const/16 v1, 0x6c

    aput v5, v0, v1

    const/16 v1, 0x6d

    aput v5, v0, v1

    const/16 v1, 0x6e

    aput v5, v0, v1

    const/16 v1, 0x6f

    aput v5, v0, v1

    const/16 v1, 0x70

    aput v5, v0, v1

    const/16 v1, 0x71

    aput v5, v0, v1

    const/16 v1, 0x72

    aput v5, v0, v1

    const/16 v1, 0x73

    aput v5, v0, v1

    const/16 v1, 0x74

    aput v5, v0, v1

    const/16 v1, 0x75

    aput v5, v0, v1

    const/16 v1, 0x76

    aput v5, v0, v1

    const/16 v1, 0x77

    aput v5, v0, v1

    const/16 v1, 0x78

    aput v5, v0, v1

    const/16 v1, 0x79

    aput v5, v0, v1

    const/16 v1, 0x7a

    aput v5, v0, v1

    const/16 v1, 0x7b

    aput v5, v0, v1

    const/16 v1, 0x7c

    aput v5, v0, v1

    const/16 v1, 0x7d

    aput v5, v0, v1

    const/16 v1, 0x7e

    aput v5, v0, v1

    const/16 v1, 0x7f

    aput v5, v0, v1

    const/16 v1, 0x80

    aput v6, v0, v1

    const/16 v1, 0x81

    aput v6, v0, v1

    const/16 v1, 0x82

    aput v6, v0, v1

    const/16 v1, 0x83

    aput v6, v0, v1

    const/16 v1, 0x84

    aput v6, v0, v1

    const/16 v1, 0x85

    aput v6, v0, v1

    const/16 v1, 0x86

    aput v6, v0, v1

    const/16 v1, 0x87

    aput v6, v0, v1

    const/16 v1, 0x88

    aput v6, v0, v1

    const/16 v1, 0x89

    aput v6, v0, v1

    const/16 v1, 0x8a

    aput v6, v0, v1

    const/16 v1, 0x8b

    aput v6, v0, v1

    const/16 v1, 0x8c

    aput v6, v0, v1

    const/16 v1, 0x8d

    aput v6, v0, v1

    const/16 v1, 0x8e

    aput v6, v0, v1

    const/16 v1, 0x8f

    aput v6, v0, v1

    const/16 v1, 0x90

    aput v6, v0, v1

    const/16 v1, 0x91

    aput v6, v0, v1

    const/16 v1, 0x92

    aput v6, v0, v1

    const/16 v1, 0x93

    aput v6, v0, v1

    const/16 v1, 0x94

    aput v6, v0, v1

    const/16 v1, 0x95

    aput v6, v0, v1

    const/16 v1, 0x96

    aput v6, v0, v1

    const/16 v1, 0x97

    aput v6, v0, v1

    const/16 v1, 0x98

    aput v6, v0, v1

    const/16 v1, 0x99

    aput v6, v0, v1

    const/16 v1, 0x9a

    aput v6, v0, v1

    const/16 v1, 0x9b

    aput v6, v0, v1

    const/16 v1, 0x9c

    aput v6, v0, v1

    const/16 v1, 0x9d

    aput v6, v0, v1

    const/16 v1, 0x9e

    aput v6, v0, v1

    const/16 v1, 0x9f

    aput v6, v0, v1

    const/16 v1, 0xa0

    aput v6, v0, v1

    const/16 v1, 0xa1

    aput v6, v0, v1

    const/16 v1, 0xa2

    aput v6, v0, v1

    const/16 v1, 0xa3

    aput v6, v0, v1

    const/16 v1, 0xa4

    aput v6, v0, v1

    const/16 v1, 0xa5

    aput v6, v0, v1

    const/16 v1, 0xa6

    aput v6, v0, v1

    const/16 v1, 0xa7

    aput v6, v0, v1

    const/16 v1, 0xa8

    aput v6, v0, v1

    const/16 v1, 0xa9

    aput v6, v0, v1

    const/16 v1, 0xaa

    aput v6, v0, v1

    const/16 v1, 0xab

    aput v6, v0, v1

    const/16 v1, 0xac

    aput v6, v0, v1

    const/16 v1, 0xad

    aput v6, v0, v1

    const/16 v1, 0xae

    aput v6, v0, v1

    const/16 v1, 0xaf

    aput v6, v0, v1

    const/16 v1, 0xb0

    aput v6, v0, v1

    const/16 v1, 0xb1

    aput v6, v0, v1

    const/16 v1, 0xb2

    aput v6, v0, v1

    const/16 v1, 0xb3

    aput v6, v0, v1

    const/16 v1, 0xb4

    aput v6, v0, v1

    const/16 v1, 0xb5

    aput v6, v0, v1

    const/16 v1, 0xb6

    aput v6, v0, v1

    const/16 v1, 0xb7

    aput v6, v0, v1

    const/16 v1, 0xb8

    aput v6, v0, v1

    const/16 v1, 0xb9

    aput v6, v0, v1

    const/16 v1, 0xba

    aput v6, v0, v1

    const/16 v1, 0xbb

    aput v6, v0, v1

    const/16 v1, 0xbc

    aput v6, v0, v1

    const/16 v1, 0xbd

    aput v6, v0, v1

    const/16 v1, 0xbe

    aput v6, v0, v1

    const/16 v1, 0xbf

    aput v6, v0, v1

    const/16 v1, 0xc0

    aput v7, v0, v1

    const/16 v1, 0xc1

    aput v7, v0, v1

    const/16 v1, 0xc2

    aput v7, v0, v1

    const/16 v1, 0xc3

    aput v7, v0, v1

    const/16 v1, 0xc4

    aput v7, v0, v1

    const/16 v1, 0xc5

    aput v7, v0, v1

    const/16 v1, 0xc6

    aput v7, v0, v1

    const/16 v1, 0xc7

    aput v7, v0, v1

    const/16 v1, 0xc8

    aput v7, v0, v1

    const/16 v1, 0xc9

    aput v7, v0, v1

    const/16 v1, 0xca

    aput v7, v0, v1

    const/16 v1, 0xcb

    aput v7, v0, v1

    const/16 v1, 0xcc

    aput v7, v0, v1

    const/16 v1, 0xcd

    aput v7, v0, v1

    const/16 v1, 0xce

    aput v7, v0, v1

    const/16 v1, 0xcf

    aput v7, v0, v1

    const/16 v1, 0xd0

    aput v7, v0, v1

    const/16 v1, 0xd1

    aput v7, v0, v1

    const/16 v1, 0xd2

    aput v7, v0, v1

    const/16 v1, 0xd3

    aput v7, v0, v1

    const/16 v1, 0xd4

    aput v7, v0, v1

    const/16 v1, 0xd5

    aput v7, v0, v1

    const/16 v1, 0xd6

    aput v7, v0, v1

    const/16 v1, 0xd7

    aput v7, v0, v1

    const/16 v1, 0xd8

    aput v7, v0, v1

    const/16 v1, 0xd9

    aput v7, v0, v1

    const/16 v1, 0xda

    aput v7, v0, v1

    const/16 v1, 0xdb

    aput v7, v0, v1

    const/16 v1, 0xdc

    aput v7, v0, v1

    const/16 v1, 0xdd

    aput v7, v0, v1

    const/16 v1, 0xde

    aput v7, v0, v1

    const/16 v1, 0xdf

    aput v7, v0, v1

    const/16 v1, 0xe0

    aput v7, v0, v1

    const/16 v1, 0xe1

    aput v7, v0, v1

    const/16 v1, 0xe2

    aput v7, v0, v1

    const/16 v1, 0xe3

    aput v7, v0, v1

    const/16 v1, 0xe4

    aput v7, v0, v1

    const/16 v1, 0xe5

    aput v7, v0, v1

    const/16 v1, 0xe6

    aput v7, v0, v1

    const/16 v1, 0xe7

    aput v7, v0, v1

    const/16 v1, 0xe8

    aput v7, v0, v1

    const/16 v1, 0xe9

    aput v7, v0, v1

    const/16 v1, 0xea

    aput v7, v0, v1

    const/16 v1, 0xeb

    aput v7, v0, v1

    const/16 v1, 0xec

    aput v7, v0, v1

    const/16 v1, 0xed

    aput v7, v0, v1

    const/16 v1, 0xee

    aput v7, v0, v1

    const/16 v1, 0xef

    aput v7, v0, v1

    const/16 v1, 0xf0

    aput v7, v0, v1

    const/16 v1, 0xf1

    aput v7, v0, v1

    const/16 v1, 0xf2

    aput v7, v0, v1

    const/16 v1, 0xf3

    aput v7, v0, v1

    const/16 v1, 0xf4

    aput v7, v0, v1

    const/16 v1, 0xf5

    aput v7, v0, v1

    const/16 v1, 0xf6

    aput v7, v0, v1

    const/16 v1, 0xf7

    aput v7, v0, v1

    const/16 v1, 0xf8

    aput v7, v0, v1

    const/16 v1, 0xf9

    aput v7, v0, v1

    const/16 v1, 0xfa

    aput v7, v0, v1

    const/16 v1, 0xfb

    aput v7, v0, v1

    const/16 v1, 0xfc

    aput v7, v0, v1

    const/16 v1, 0xfd

    aput v7, v0, v1

    const/16 v1, 0xfe

    aput v7, v0, v1

    const/16 v1, 0xff

    aput v7, v0, v1

    const/16 v1, 0x100

    aput v8, v0, v1

    const/16 v1, 0x101

    aput v8, v0, v1

    const/16 v1, 0x102

    aput v8, v0, v1

    const/16 v1, 0x103

    aput v8, v0, v1

    const/16 v1, 0x104

    aput v8, v0, v1

    const/16 v1, 0x105

    aput v8, v0, v1

    const/16 v1, 0x106

    aput v8, v0, v1

    const/16 v1, 0x107

    aput v8, v0, v1

    const/16 v1, 0x108

    aput v8, v0, v1

    const/16 v1, 0x109

    aput v8, v0, v1

    const/16 v1, 0x10a

    aput v8, v0, v1

    const/16 v1, 0x10b

    aput v8, v0, v1

    const/16 v1, 0x10c

    aput v8, v0, v1

    const/16 v1, 0x10d

    aput v8, v0, v1

    const/16 v1, 0x10e

    aput v8, v0, v1

    const/16 v1, 0x10f

    aput v8, v0, v1

    const/16 v1, 0x110

    aput v8, v0, v1

    const/16 v1, 0x111

    aput v8, v0, v1

    const/16 v1, 0x112

    aput v8, v0, v1

    const/16 v1, 0x113

    aput v8, v0, v1

    const/16 v1, 0x114

    aput v8, v0, v1

    const/16 v1, 0x115

    aput v8, v0, v1

    const/16 v1, 0x116

    aput v8, v0, v1

    const/16 v1, 0x117

    aput v8, v0, v1

    const/16 v1, 0x118

    aput v8, v0, v1

    const/16 v1, 0x119

    aput v8, v0, v1

    const/16 v1, 0x11a

    aput v8, v0, v1

    const/16 v1, 0x11b

    aput v8, v0, v1

    const/16 v1, 0x11c

    aput v8, v0, v1

    const/16 v1, 0x11d

    aput v8, v0, v1

    const/16 v1, 0x11e

    aput v8, v0, v1

    const/16 v1, 0x11f

    aput v8, v0, v1

    const/16 v1, 0x120

    aput v8, v0, v1

    const/16 v1, 0x121

    aput v8, v0, v1

    const/16 v1, 0x122

    aput v8, v0, v1

    const/16 v1, 0x123

    aput v8, v0, v1

    const/16 v1, 0x124

    aput v8, v0, v1

    const/16 v1, 0x125

    aput v8, v0, v1

    const/16 v1, 0x126

    aput v8, v0, v1

    const/16 v1, 0x127

    aput v8, v0, v1

    const/16 v1, 0x128

    aput v8, v0, v1

    const/16 v1, 0x129

    aput v8, v0, v1

    const/16 v1, 0x12a

    aput v8, v0, v1

    const/16 v1, 0x12b

    aput v8, v0, v1

    const/16 v1, 0x12c

    aput v8, v0, v1

    const/16 v1, 0x12d

    aput v8, v0, v1

    const/16 v1, 0x12e

    aput v8, v0, v1

    const/16 v1, 0x12f

    aput v8, v0, v1

    const/16 v1, 0x130

    aput v8, v0, v1

    const/16 v1, 0x131

    aput v8, v0, v1

    const/16 v1, 0x132

    aput v8, v0, v1

    const/16 v1, 0x133

    aput v8, v0, v1

    const/16 v1, 0x134

    aput v8, v0, v1

    const/16 v1, 0x135

    aput v8, v0, v1

    const/16 v1, 0x136

    aput v8, v0, v1

    const/16 v1, 0x137

    aput v8, v0, v1

    const/16 v1, 0x138

    aput v8, v0, v1

    const/16 v1, 0x139

    aput v8, v0, v1

    const/16 v1, 0x13a

    aput v8, v0, v1

    const/16 v1, 0x13b

    aput v8, v0, v1

    const/16 v1, 0x13c

    aput v8, v0, v1

    const/16 v1, 0x13d

    aput v8, v0, v1

    const/16 v1, 0x13e

    aput v8, v0, v1

    const/16 v1, 0x13f

    aput v8, v0, v1

    const/16 v1, 0x140

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x141

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x142

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x143

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x144

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x145

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x146

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x147

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x148

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x149

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x14a

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x14b

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x14c

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x14d

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x14e

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x14f

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x150

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x151

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x152

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x153

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x154

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x155

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x156

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x157

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x158

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x159

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x15a

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x15b

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x15c

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x15d

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x15e

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x15f

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x160

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x161

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x162

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x163

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x164

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x165

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x166

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x167

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x168

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x169

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x16a

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x16b

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x16c

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x16d

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x16e

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x16f

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x170

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x171

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x172

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x173

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x174

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x175

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x176

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x177

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x178

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x179

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x17a

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x17b

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x17c

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x17d

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x17e

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x17f

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/util/Random;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_45

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v2, v0

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v4, v4, 0x40

    ushr-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_3a
    return-void

    :cond_3b
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_45
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3b

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v4, v4, 0x40

    ushr-long/2addr v0, v4

    aput-wide v0, v2, v3

    goto :goto_3a
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[B)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;
    .registers 7

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v1

    new-array v2, v1, [J

    const/4 v0, 0x0

    :goto_7
    add-int/lit8 v3, v1, -0x1

    if-lt v0, v3, :cond_1f

    add-int/lit8 v0, v1, -0x1

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v1, v3

    aput-wide v4, v2, v0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

    return-object v0

    :cond_1f
    const-wide/16 v4, -0x1

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v0, v0, [J

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

    return-object v1
.end method

.method private assign(Ljava/math/BigInteger;)V
    .registers 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private assign([B)V
    .registers 12

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-lt v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, v0, 0x3

    aget-wide v4, v1, v2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, p1, v3

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    and-int/lit8 v3, v0, 0x7

    shl-int/lit8 v3, v3, 0x3

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    aput-wide v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private assign([J)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getElement()[J
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getElementReverseOrder()[J
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v1, v1

    new-array v1, v1, [J

    :goto_6
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-lt v0, v2, :cond_b

    return-object v1

    :cond_b
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_19

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    ushr-int/lit8 v2, v0, 0x6

    aget-wide v4, v1, v2

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v6, v0, 0x3f

    aget-wide v6, v3, v6

    or-long/2addr v4, v6

    aput-wide v4, v1, v2

    goto :goto_16
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_17

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_12
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-lt v1, v0, :cond_23

    return-void

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v2, v1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v0, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12
.end method

.method assignOne()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    return-void

    :cond_18
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method assignZero()V
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move v0, v1

    :goto_b
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-lt v0, v2, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v2, v0

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .registers 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->invertThis()V

    return-object v0
.end method

.method public invertThis()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_26

    const/16 v2, 0x1f

    :goto_c
    if-eqz v0, :cond_2c

    :cond_e
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    add-int/lit8 v0, v2, -0x1

    move v3, v0

    move v4, v1

    :goto_20
    if-gez v3, :cond_40

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->squareThis()V

    return-void

    :cond_26
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_2c
    if-ltz v2, :cond_e

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v4, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v6, v3, v2

    and-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-eqz v3, :cond_3d

    move v0, v1

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_40
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move v2, v1

    :goto_47
    if-le v2, v4, :cond_69

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    shl-int/lit8 v0, v4, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v6, v2

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v2, v3

    and-long/2addr v6, v8

    cmp-long v2, v6, v10

    if-eqz v2, :cond_64

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->squareThis()V

    invoke-virtual {v5, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v0, v0, 0x1

    :cond_64
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v4, v0

    goto :goto_20

    :cond_69
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->squareThis()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47
.end method

.method public isOne()Z
    .registers 9

    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    :goto_6
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_f

    :cond_c
    if-nez v2, :cond_22

    :goto_e
    return v2

    :cond_f
    if-eqz v2, :cond_c

    if-nez v2, :cond_17

    :cond_13
    move v2, v1

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v2, v0

    and-long/2addr v4, v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_22
    if-nez v2, :cond_27

    :cond_24
    move v3, v1

    :goto_25
    move v2, v3

    goto :goto_e

    :cond_27
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v0, v2

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v6, v0, v2

    and-long/2addr v4, v6

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v6, v0, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_24

    goto :goto_25
.end method

.method public isZero()Z
    .registers 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    if-lt v0, v4, :cond_9

    :cond_8
    return v2

    :cond_9
    if-eqz v2, :cond_8

    if-nez v2, :cond_11

    :cond_d
    move v2, v1

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v2, v0

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_e
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_57

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-object/from16 v2, p1

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v2, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v8, v2, [J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    iget-object v9, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v10, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v4, 0x3f

    aget-wide v12, v3, v4

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v3, v2

    const/4 v2, 0x0

    :goto_4b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-lt v2, v3, :cond_6a

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    :goto_56
    return-void

    :cond_57
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "The elements have different representation: not yet implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_60
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_66
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareThis()V

    goto :goto_56

    :cond_6a
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_6c
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-lt v3, v5, :cond_b6

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v3, v3, v2

    and-int/lit8 v5, v2, 0x3f

    if-nez v4, :cond_11b

    :goto_7a
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_127

    const/4 v3, 0x0

    aget-wide v4, v6, v3

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_1b8

    const/4 v3, 0x1

    :goto_8f
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v16, v6, v5

    const/4 v5, 0x1

    ushr-long v16, v16, v5

    aput-wide v16, v6, v4

    if-nez v3, :cond_1bb

    :goto_9a
    const/4 v3, 0x0

    aget-wide v4, v7, v3

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_1c4

    const/4 v3, 0x1

    :goto_a8
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v16, v7, v5

    const/4 v5, 0x1

    ushr-long v16, v16, v5

    aput-wide v16, v7, v4

    if-nez v3, :cond_1c7

    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_b6
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v5, v5, v3

    and-int/lit8 v11, v3, 0x3f

    sget-object v16, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget-object v17, v9, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    aget v16, v16, v17

    aget-object v17, v9, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    and-int/lit8 v17, v17, 0x3f

    aget-wide v18, v6, v5

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v20, v5, v11

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v5, v18, v20

    if-eqz v5, :cond_f4

    aget-wide v18, v7, v16

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v16, v5, v17

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_ec

    xor-int/lit8 v4, v4, 0x1

    :cond_ec
    aget-object v5, v9, v3

    const/4 v11, 0x1

    aget v5, v5, v11

    const/4 v11, -0x1

    if-ne v5, v11, :cond_f8

    :cond_f4
    :goto_f4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6c

    :cond_f8
    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget-object v11, v9, v3

    const/16 v16, 0x1

    aget v11, v11, v16

    aget v5, v5, v11

    aget-object v11, v9, v3

    const/16 v16, 0x1

    aget v11, v11, v16

    and-int/lit8 v11, v11, 0x3f

    aget-wide v16, v7, v5

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v18, v5, v11

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_f4

    xor-int/lit8 v4, v4, 0x1

    goto :goto_f4

    :cond_11b
    aget-wide v16, v8, v3

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v4, v4, v5

    xor-long v4, v4, v16

    aput-wide v4, v8, v3

    goto/16 :goto_7a

    :cond_127
    aget-wide v4, v6, v10

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_166

    const/4 v3, 0x1

    :goto_134
    add-int/lit8 v4, v10, -0x1

    move v5, v4

    move v4, v3

    :goto_138
    if-gez v5, :cond_168

    aget-wide v16, v6, v10

    const/4 v3, 0x1

    ushr-long v16, v16, v3

    aput-wide v16, v6, v10

    if-nez v4, :cond_18c

    :goto_143
    aget-wide v4, v7, v10

    const-wide/16 v16, 0x1

    and-long v4, v4, v16

    const-wide/16 v16, 0x1

    cmp-long v3, v4, v16

    if-nez v3, :cond_192

    const/4 v3, 0x1

    :goto_150
    add-int/lit8 v4, v10, -0x1

    move v5, v4

    move v4, v3

    :goto_154
    if-gez v5, :cond_194

    aget-wide v16, v7, v10

    const/4 v3, 0x1

    ushr-long v16, v16, v3

    aput-wide v16, v7, v10

    if-eqz v4, :cond_b3

    aget-wide v4, v7, v10

    xor-long/2addr v4, v14

    aput-wide v4, v7, v10

    goto/16 :goto_b3

    :cond_166
    const/4 v3, 0x0

    goto :goto_134

    :cond_168
    aget-wide v16, v6, v5

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_183

    const/4 v3, 0x1

    :goto_175
    aget-wide v16, v6, v5

    const/4 v11, 0x1

    ushr-long v16, v16, v11

    aput-wide v16, v6, v5

    if-nez v4, :cond_185

    :goto_17e
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v3

    goto :goto_138

    :cond_183
    const/4 v3, 0x0

    goto :goto_175

    :cond_185
    aget-wide v16, v6, v5

    xor-long v16, v16, v12

    aput-wide v16, v6, v5

    goto :goto_17e

    :cond_18c
    aget-wide v4, v6, v10

    xor-long/2addr v4, v14

    aput-wide v4, v6, v10

    goto :goto_143

    :cond_192
    const/4 v3, 0x0

    goto :goto_150

    :cond_194
    aget-wide v16, v7, v5

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_1af

    const/4 v3, 0x1

    :goto_1a1
    aget-wide v16, v7, v5

    const/4 v11, 0x1

    ushr-long v16, v16, v11

    aput-wide v16, v7, v5

    if-nez v4, :cond_1b1

    :goto_1aa
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v3

    goto :goto_154

    :cond_1af
    const/4 v3, 0x0

    goto :goto_1a1

    :cond_1b1
    aget-wide v16, v7, v5

    xor-long v16, v16, v12

    aput-wide v16, v7, v5

    goto :goto_1aa

    :cond_1b8
    const/4 v3, 0x0

    goto/16 :goto_8f

    :cond_1bb
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-wide v4, v6, v4

    xor-long/2addr v4, v14

    aput-wide v4, v6, v3

    goto/16 :goto_9a

    :cond_1c4
    const/4 v3, 0x0

    goto/16 :goto_a8

    :cond_1c7
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-wide v4, v7, v4

    xor-long/2addr v4, v14

    aput-wide v4, v7, v3

    goto/16 :goto_b3
.end method

.method reverseOrder()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElementReverseOrder()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->trace()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v1, 0x3f

    aget-wide v4, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v6, v0, [J

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_42

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    and-int/lit8 v4, v0, 0x3f

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v8, v0, v1

    const/4 v0, 0x1

    move v14, v0

    move-wide v0, v2

    move v2, v14

    :goto_2a
    if-lt v2, v4, :cond_be

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v2, -0x1

    aput-wide v0, v6, v2

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mField:Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-direct {v1, v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;[J)V

    return-object v1

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_42
    const/4 v1, 0x1

    :goto_43
    const/16 v7, 0x40

    if-lt v1, v7, :cond_7b

    aput-wide v2, v6, v0

    and-long v8, v4, v2

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_60

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, v1, v7

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_76

    :cond_60
    and-long/2addr v2, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_bb

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v2, v0, 0x1

    aget-wide v2, v1, v2

    const-wide/16 v8, 0x1

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_bb

    :cond_76
    const-wide/16 v2, 0x0

    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_7b
    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v7, v1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v10, v7, v0

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_97

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v8, v1, -0x1

    aget-wide v8, v7, v8

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_b8

    :cond_97
    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v8, v7, v0

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v7, v1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_b3

    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v8, v1, -0x1

    aget-wide v8, v7, v8

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_b8

    :cond_b3
    sget-object v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v7, v1

    xor-long/2addr v2, v8

    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_bb
    const-wide/16 v2, 0x1

    goto :goto_78

    :cond_be
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v3, v2

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_d6

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v5, v2, -0x1

    aget-wide v10, v3, v5

    and-long/2addr v10, v0

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_f3

    :cond_d6
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v3, v2

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_ee

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v5, v2, -0x1

    aget-wide v10, v3, v5

    and-long/2addr v10, v0

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_f3

    :cond_ee
    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v3, v2

    xor-long/2addr v0, v10

    :cond_f3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2a
.end method

.method public square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .registers 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareThis()V

    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .registers 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->squareRootThis()V

    return-object v0
.end method

.method public squareRootThis()V
    .registers 13

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v0, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v5, v0, -0x1

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v1, 0x3f

    aget-wide v6, v0, v1

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    const-wide/16 v8, 0x1

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_1f
    move v1, v2

    move v3, v0

    :goto_21
    if-gez v1, :cond_29

    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_1f

    :cond_29
    aget-wide v8, v4, v1

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    :goto_35
    aget-wide v8, v4, v1

    const/4 v10, 0x1

    ushr-long/2addr v8, v10

    aput-wide v8, v4, v1

    if-nez v3, :cond_43

    :goto_3d
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_21

    :cond_41
    const/4 v0, 0x0

    goto :goto_35

    :cond_43
    if-eq v1, v2, :cond_4b

    aget-wide v8, v4, v1

    xor-long/2addr v8, v6

    aput-wide v8, v4, v1

    goto :goto_3d

    :cond_4b
    aget-wide v8, v4, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v3, v5

    xor-long/2addr v8, v10

    aput-wide v8, v4, v1

    goto :goto_3d
.end method

.method public squareThis()V
    .registers 13

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v5, v0, -0x1

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v1, 0x3f

    aget-wide v6, v0, v1

    aget-wide v0, v3, v4

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v2, v5

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_20
    const/4 v1, 0x0

    move v2, v0

    :goto_22
    if-lt v1, v4, :cond_42

    aget-wide v0, v3, v4

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v6, v6, v5

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    :goto_32
    aget-wide v6, v3, v4

    const/4 v1, 0x1

    shl-long/2addr v6, v1

    aput-wide v6, v3, v4

    if-nez v2, :cond_64

    :goto_3a
    if-nez v0, :cond_6c

    :goto_3c
    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void

    :cond_40
    const/4 v0, 0x0

    goto :goto_20

    :cond_42
    aget-wide v8, v3, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    :goto_4c
    aget-wide v8, v3, v1

    const/4 v10, 0x1

    shl-long/2addr v8, v10

    aput-wide v8, v3, v1

    if-nez v2, :cond_5a

    :goto_54
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_22

    :cond_58
    const/4 v0, 0x0

    goto :goto_4c

    :cond_5a
    aget-wide v8, v3, v1

    const-wide/16 v10, 0x1

    xor-long/2addr v8, v10

    aput-wide v8, v3, v1

    goto :goto_54

    :cond_62
    const/4 v0, 0x0

    goto :goto_32

    :cond_64
    aget-wide v6, v3, v4

    const-wide/16 v8, 0x1

    xor-long/2addr v6, v8

    aput-wide v6, v3, v4

    goto :goto_3a

    :cond_6c
    aget-wide v0, v3, v4

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, v2, v5

    xor-long/2addr v0, v6

    aput-wide v0, v3, v4

    goto :goto_3c
.end method

.method testBit(I)Z
    .registers 8

    const/4 v0, 0x0

    if-gez p1, :cond_4

    :cond_3
    return v0

    :cond_4
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    if-gt p1, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, p1, 0x6

    aget-wide v2, v1, v2

    sget-object v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v4, p1, 0x3f

    aget-wide v4, v1, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public testRightmostBit()Z
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public toByteArray()[B
    .registers 11

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v1, :cond_e

    return-object v2

    :cond_e
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v5, v0, 0x3

    aget-wide v4, v4, v5

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    const-wide/16 v8, 0xff

    shl-long v6, v8, v6

    and-long/2addr v4, v6

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .registers 4

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 12

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x10

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v3

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    if-eq p1, v6, :cond_15

    if-eq p1, v5, :cond_a0

    :cond_14
    return-object v0

    :cond_15
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object v1, v0

    :goto_19
    if-gez v2, :cond_2a

    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move-object v0, v1

    :goto_20
    if-ltz v2, :cond_14

    const/16 v1, 0x3f

    :goto_24
    if-gez v1, :cond_67

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_20

    :cond_2a
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4d
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_19

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_67
    aget-wide v4, v3, v2

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v6, v6, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_8b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_88
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    :cond_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    :cond_a0
    new-array v4, v5, [C

    const/16 v1, 0x30

    aput-char v1, v4, v2

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v4, v1

    const/16 v1, 0x32

    aput-char v1, v4, v6

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v4, v1

    const/16 v1, 0x34

    aput-char v1, v4, v8

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v4, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v4, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v4, v1

    const/16 v1, 0x38

    aput-char v1, v4, v9

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v4, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v4, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v4, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v4, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v4, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v4, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v4, v1

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_f8
    if-ltz v1, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x3c

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x38

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x34

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x30

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x2c

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x28

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x24

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x1c

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x18

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0x14

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    ushr-long/2addr v6, v5

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    const/16 v2, 0xc

    ushr-long/2addr v6, v2

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    ushr-long/2addr v6, v9

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    ushr-long/2addr v6, v8

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v6, v3, v1

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

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

    goto/16 :goto_f8
.end method

.method public trace()I
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v4, v0, -0x1

    move v3, v1

    move v0, v1

    :goto_9
    if-lt v3, v4, :cond_10

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBit:I

    :goto_d
    if-lt v1, v2, :cond_2b

    return v0

    :cond_10
    move v2, v1

    :goto_11
    const/16 v5, 0x40

    if-lt v2, v5, :cond_19

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    :cond_19
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v5, v3

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v5, v2

    and-long/2addr v6, v8

    cmp-long v5, v6, v10

    if-eqz v5, :cond_28

    xor-int/lit8 v0, v0, 0x1

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2b
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v3, v4

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v3, v1

    and-long/2addr v6, v8

    cmp-long v3, v6, v10

    if-eqz v3, :cond_3a

    xor-int/lit8 v0, v0, 0x1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method
