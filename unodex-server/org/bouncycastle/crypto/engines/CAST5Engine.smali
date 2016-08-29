.class public Lorg/bouncycastle/crypto/engines/CAST5Engine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field protected static final M32:I = -0x1

.field protected static final MAX_ROUNDS:I = 0x10

.field protected static final RED_ROUNDS:I = 0xc

.field protected static final S1:[I

.field protected static final S2:[I

.field protected static final S3:[I

.field protected static final S4:[I

.field protected static final S5:[I

.field protected static final S6:[I

.field protected static final S7:[I

.field protected static final S8:[I


# instance fields
.field protected _Km:[I

.field protected _Kr:[I

.field private _encrypting:Z

.field private _rounds:I

.field private _workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x30fb40d4

    aput v1, v0, v3

    const v1, -0x605f00f5

    aput v1, v0, v4

    const v1, 0x6beccd2f

    aput v1, v0, v5

    const v1, 0x3f258c7a

    aput v1, v0, v6

    const v1, 0x1e213f2f

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x63ffb22d

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x6003e540

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x306036b7

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x402b50d9

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x7744424b

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x1dfcbf70

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x672f698b

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x6e63a0e0

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x15c361d2

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x3d1899e3    # -115.69944f

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x22d4ff8e

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x28683b6f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x3f802fa7

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0xdc8638

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x775f50e2

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x43c340d3

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x20d079aa

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x77835be6

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x5d2d42d3

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x5e361f2a

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x346c4819

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x61b76d87

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x22540f2f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2abe32e1

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x55abe995

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x22568e3a

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x5d2cbe30

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x66db40c8

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x587bc6d1

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x4dff2f

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x2db9d2de

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x686bc054

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x4a97c1d8    # 4972780.0f

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x527644b7

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x4a0bc859

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x47d34511

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x28ae2ea7

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x6ff7f0ed

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x5a097a1f

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x7d849730

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x6f130ad2

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x22b0c054

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x4371a6cb

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x4b6d2f7f    # 1.5544191E7f

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x50bb64a2

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x2d99b6f0

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x411a7ed3

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x48ccdd70

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x16c4ea61

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x4b711bef

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x4bff345d    # 3.345017E7f

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x2ba3dc0

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x52ce68c1

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x3b092fd2

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x55fc8165

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0x2a4e3553

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x5e53d252

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x5d2b4893

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x3e64f3b0

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x77ddbf0e

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xc6e4f38

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x5b1b4029

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x4f5ba272    # 3.68485632E9f

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x564c1d2f

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x3a63ace7

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x46b61cac

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x4fb99602

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x4e495476

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x38eca723

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x6385c545

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x110f935d

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x57538ad5

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x6a390493

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, -0x19c2c820

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x2a54f6b3

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x3a787d5f

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x6276a0b5

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x19a6fcdf

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x7a42206a

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x29f9d4d5

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x9e4e76f

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x448dd8a2

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x55af7e99

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x38901091

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x394afa15

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x7b383474

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x2ad75a0f

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x78b5ebd9

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x5d2e6c95

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x2ad286af

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x55a92d6f

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, -0x2876bca0

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x425c750d

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x6c4c61da

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x187184c9

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x6c00b32d

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x73e2bb14

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x5f4143c4

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x54623779

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x64459eab

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x3f328b82

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x7718cf82

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x59a2cea6

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x4ee002e

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x7601871a

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x3fab0950

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x325ff6c2

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x7ec7c0fb

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x6963c5c8    # 1.721001E25f

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x76cb5ad6

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x2b668b37

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x35e7f231

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x380782d5

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, -0x3805a30a

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x753ceaef

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x35e79e13

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x47da91d0    # 111907.625f

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0xbf06f7a

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, -0x581dbe62

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x31366241

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x51ef495

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x55a8c4fc

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x4a805d8d    # 4206278.5f

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x548300d0

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x322a3c

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x409b3221

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x45a85972

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x75c6372b

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x50afd341

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x583ecd8b

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x6ea5f40b

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x6b54bfab

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x2b0b1426

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x54b33629

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x449ccd82

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x8040d9b

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x547a3a0d

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x1b55db94

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x552b1cdc

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x305b42c1

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x2deaa3e2

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x61dfb2fe

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x3742da54

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0x1520aa4d

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x2a426168

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x1cedce4e

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x2ad5ad6c

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x6abcd622

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x5241bad8

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x278ef097

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x55ae36f1

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x5587940a

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x22513f1e

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x55ae5865

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x2ad344cc

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x7b5a41f0

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x2c830453

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x1b069505

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x41ece491

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x4b3ccd1a

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x32268d4

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x369ff534

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x31c78193

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x40944e94

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x6a70fb78

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xd03d9c9

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x2b20c622

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x1fef9c26

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x4736f464

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x5ad328d8

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x4cb8336a

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x75bb0fc3

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x67aee405

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x4ffbcc35

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x4a743096

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x1ee0f544

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x403a01b6

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x58f513f0

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x53c6a8f6

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x3f04442f

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x6188b153

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x1fc685d2

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x5727cb79

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x6314be71

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x1cacd68d

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x2ad37c96

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x175cb9d

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x396200f7

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x38a49a10

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x2624bf28

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x13f18887

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x4744ead4

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x4ee3cd8c

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x22db3462

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x7e1c54bd

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0xfeebb07

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x2ddbf14f

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x698a4c03

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x5c53c8ab

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x2b83d851

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0x51c85f4d

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x56907596

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x5a44ea1a

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x580304f0

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, -0x35fbd30f

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x11a37ea

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x72405525

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x35ba3e4a

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x3526ffa0

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x3c84b2f7

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x43cf9127

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x675ad99a

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5648f725

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0xa1a963

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0xced63d0

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x7c63b2cf

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x700b45e1

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0x2a15af0f

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x7a56d78e

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x50e04259

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x2bdcb790

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x5878f40d

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x2d3b4d79

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x42e04198

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xcd0ede7

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x26470db8

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x77e7eb4

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x474d6ad7

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x7c0c5e5c

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x2edce6a7

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x381b7298

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0xa2d0b25

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x547c79ad

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x6e2f1e23

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x7c8e6362

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x426e1fba

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x65a9ba92

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x23c6dff4

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x20c8c571

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x69d425e4

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x1e196901

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x4ebe54f8

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x7cca89b9

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x1a69e783

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x2cc4843

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x5d083a87

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x429ef47d

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x427b169c

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x5ac9f049

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x2270f100

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x5c8165bf

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S1:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x1f201094

    aput v1, v0, v3

    const v1, -0x10f458a5

    aput v1, v0, v4

    const v1, 0x69e3cf7e

    aput v1, v0, v5

    const v1, 0x393f4380

    aput v1, v0, v6

    const v1, -0x19e3086

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x113adf86

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x55889c94

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x72fc0651

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x52581087

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x4e1d7235    # 6.603769E8f

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x2aa59c32

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x21fbc946

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x663bcf11

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x5f0c0794

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x18dcdb7d

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x5e29100d

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x5f4ad085

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x59e83605

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x11ea4f6c

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x160026f7

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x23bbff7a

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x106bbba7

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x457c334d

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x1f3c3205

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x2e25be7f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x3b092ab1

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x6680e3f

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x5a193085

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x1420ddb

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x1b1810a5

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x25a1ff41

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x1e7f07fa

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x1fc41080

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x179bee7a

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x2c853957

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x1a7cf5c

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x67217481

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x77e83f4e

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x79929269

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x24fa9f7b

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x1eec37a5

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x533bff7d

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x28afcadb

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x8159ea1

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x62143154

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0xd554b63

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x5d681121

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x37993ca7

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x3d63cf73

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x311dcb40

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x2b278179

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x5c672b21

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x71f6181

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x39f7627f

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x361e3084

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x1b14a8c5

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x602f64a4

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x29c53264

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x1bbc4635

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x617efcd3

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x2701f50c

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x667b854c

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x5f1c2087

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x45930c74

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x10843094

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x2537a95e

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0xb909002

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x5e00c4e1

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x208cfb6a

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x70ba738c

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x261f5dd9

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x4ec73a34

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x377b097

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x3e4de8df

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x10f1ff78

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x3559648d

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x75bac774

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x1d804366

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x721d9bfd

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x5a797b45

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x17da9ccd

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x7bb17dee

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x128d8098

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x12cc04c

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x31d7f51f

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x27e19ba5

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x2a593dae

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x1b68ab43

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x3a29aa23

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x14998f9c

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x77840b4d

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x5e4957ff

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x7b24d957

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x1f4a98ec

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x21f043b7

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x1a2fa7a0

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x54f03084

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x66ff472

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x5ce55ead

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x2523b8ab

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x4a9da241

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x68561be6

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x7c35946c

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x2d6ed23b

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x1330fe25

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x592c2f46

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x497fc2a4

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, -0x508858f7

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x33b4a34c

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x397bc8d6

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x5ee22b95

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x5f0e5304

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x7e12909f

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x20e74364

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x4ba1ec88

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x21e79c65

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x77e35ede

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x4698d92f

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, -0x7fb65818

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x22b7da7b

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x5e552d25

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x5272d237

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x79d2951c

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, -0x39f276b4

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x488cb402

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x1ba4fe5b

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x5b4f6095

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x1ca815cf

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x5df3cffb

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x778e209d

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x4621d035

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xcc6c9e9

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xbeeff53

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x1cdebae9

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x4babd7cb

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x609cd6c4

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x11be18d7

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x6e1d2d7c

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x50045286    # 8.8800031E9f

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x1e6685f3

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0xccbfe3a

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0x30a22c95

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x31a70850

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x60930f13

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x73f98417

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x5ed967a7

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x139ba3bc

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x52c877a9

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0x3200cc5a

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x5fd4e8bf

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x7cbad9a2

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x2180036f

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x50d99c08

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x34c0b79f    # -1.2535905E7f

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x3d94289b

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x64a3f6ab

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x7fcbd98a

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x25a75e7b

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x1b192e04

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x20c710e6

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x320f4980    # -5.0481152E8f

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x17844d3b

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x31eef84d

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x7e0824e4

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x2ccb49eb

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x7b95c452

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x70088778

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x11a29f0a

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x7af75673

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x2fdd5cdb

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x5ee9ce3f

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x30f66f43

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x4c0513ac

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x157fd7fa

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x107a8634

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x2ead21a8

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x24d002a2

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x70cd31e7

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x306af97a

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x2f03ef8

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x66ce652b

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x3dbd05f1

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x581c1450

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x3971b6fa

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x4725dcf4

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x7f7dcfd8

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x23210c38

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x2ca04e8f

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x88a1bc8

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x413f3aa0

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x61a3c9e8

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x43570ab3

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x38d01006

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x22822e99

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x7d3a8f4c

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x2726b177

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x74e3cb44

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x301e16e6

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x273be979

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x4f00155a

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x61d9b8c6

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0xb24869

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x480031c1

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x8dc283b

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x43daf65a

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x81e6868

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x7619b72f

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x70e3645c

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x2379c860

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x16a7d3b1

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x603c6c49

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x58ec9115

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x394339c2

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x1a513742

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x1097d744

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x520365d6

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x2d6a77ab

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x3527ed4b

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x7de02dea

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x95c6e2e

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x246d0d05

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x5eea29cb

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x145892f5

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x6ea7b081

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x5483697b

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x2667a8cc

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x7ae69fb8

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x73b45316

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x7cc79f2c

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xd23e0f9

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x6c387e8a

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0xae6d249

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x4d7b9ff4

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, -0x27ca8ce3

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x234e39b9

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x53b3a916

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x3ebd81b3

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x230eabb0

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x6438bc87

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0xf4a4e06

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x70a15d4d

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x3e7b9be

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0xa036b7a

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x4fb089bd

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x649da589

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x5cbabea2

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x5c038323

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x3e5d3bb9

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x43d79572

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x7e6dd07c

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x6dfdf1e

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x6c6cc4ef

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x7160a539

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x73bfbe70

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x7c7889fb

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x4523ecf1

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S2:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x72103dc0

    aput v1, v0, v3

    const v1, 0x25fa5d9f

    aput v1, v0, v4

    const v1, -0x146fc241

    aput v1, v0, v5

    const v1, -0x17ef36f9

    aput v1, v0, v6

    const v1, 0x47607fff

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x369fe44b

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x73e039bc

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x51313570

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x414e0641

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x11043516

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x1730e6b0

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x51df07ae

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x6df177fa

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0xf52fab8

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x1ec3727d

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x6d8fef2b

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x11107d9f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x7647db9

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x4d1c1b2c

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x3d4f285e

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x465057e0

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x5217d20

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x5f98d975

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x7d8d86d2

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x553fb2c0

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x489ae22b

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x2b10686c

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x125e3fbc

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x21fffcee

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x7da4e403

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, -0x6daa3a13

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x1257a240

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x4e1a8302    # 6.4806925E8f

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x451f8001

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x528246e7

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x71a8ebf2

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x3373f7bf

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x73607e78

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x5903b118

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x367d4a5b

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x573fe249

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x579fc264

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x67094f31

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0xd42c0a1

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x40fff7c1

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x1fb78dfc

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x71942d3f

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x437be59b

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, -0x664fc241

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x4a2439b5

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x638dc0e6

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x55819d99

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x5e6837e4

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x4a012d6e    # 2116443.5f

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x3a77b5d8

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x333c908f

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x47bc3ded

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x6c0743f1

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7cf676c4

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0xfeddd5f

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x2f7fe850

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x283f8082

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x2507fbf

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x5afb9a04

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x58b82d30

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x1651192e

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x508f40c2

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x58c31380

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x5f98302e

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x727cc3c4

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0xa0fb402

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0xf7fef82

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x73690253

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x5d2c2aae

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x711665b7

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x50da88b8

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x7bd80b60

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x1eac5790

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x796fb449

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x7dad23eb

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x10428265

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x598da683

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x5257bf28

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x45f54504

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x5a28bfd

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x17c13cfb

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x4f91751a

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x6da9963e

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x23efe941

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x56fc0ed2

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x60270df2

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x276e4b6

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x6b029a8c

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x6d867a4e

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x7d892435

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x2778176

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, -0x7506e73

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x4e48f79e    # 8.4291776E8f

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x709e9221

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x1d627bf2

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x7bd0827d

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x340ce5c8

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x6944497e

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x6c4b4eb8

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x10cfc355

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x67b050d8

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x779faf9b

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, -0x6d23a9f3

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x224d1e20

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x7bc85578

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x7d29dc96

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x2756d3dc

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x746f8312

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x4ae02dc0

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x183f831d

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x1a994b5f

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x3c169ea2

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x3cf8209d

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x6094d1e3

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x32635cbf

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x5c76460e

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xea983b

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x2b29877f

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, -0x2b8a8d4

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, -0x8931227

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x4257dd64

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x127dadaa

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x438a074e

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x1f97c090

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x81bdb8a

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x6c5f8142

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x46c735eb

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x684fc301

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x3dc2c0f8

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x72e54d14

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x64380e51

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x68cc7bfb

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x26f0d878

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x12490181

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x5de5ffd4

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x22810796

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0x76a2e214

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, -0x465bfc98

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x6da26a71

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x4b39fffa    # 1.218969E7f

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x45c65117

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x5b002cf5

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x5086cc5

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x6d498623

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x193cbcfa

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x27627545

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x7da30b86

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x61bd8ba0

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x2ee1bd2f

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x3152fb0c

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x127ea392

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x10428db7

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x7d8d568e

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x6d8f3b58

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x127de50b

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x285ba1c8

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x3c62f44f

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x35c0eaa5

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, -0x17fa2dcf

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x428929fb

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x4b03207e

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x4fb66a53

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xe7dc15b

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x1f081fab

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x108618ae

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x302f793

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x600d777

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x694bcc11

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x236a5cae

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x12deca4d

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x2c3f8cc5

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x2d2fd202

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x710a76a

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x1b30ad26

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x6aeaa499

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x494a488c    # 828552.75f

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x464957f4

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x5c8f82bc

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x762c94bb

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x3a609437

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x13ff3657

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x44715253

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0xa874b49

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x288c43c0

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x7c34671c

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x2717ef6

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x4feb5536

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x5d2fd001

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x2d409f3c

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x2bc0fc40

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x50b4ef6d

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x7478cd1

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x6e1888

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x5d1ac0ab

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x46192b44

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x5dfb7fea

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x68a8c7cd

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x28df8299

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x21f070c3

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x72f87b33

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x5433b0cd

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x7688c55d

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x7b00a6b0

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x6b84ffff

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x570075d2

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x6447708

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x76bdfe62

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x4264a5ff

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, -0x7a9cfd20

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x72dbd92b

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x1168e497

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x6ea22fde

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5f08ae2b

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x50859e93

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x1a367899

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x30e0142e

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x61efc8c2

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0xe53da8f

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x337dc63e    # -6.8275728E7f

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x67214cb8

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x4e1a7c2f

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x4823c19e

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x7f10bdce

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x6f5a3c8

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xff0443d

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x606e6dc6

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x60543a49

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x5727c148

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x2be98a1d

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x754be8c8

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x20e1be24

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x506925f1

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x68458425

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, -0x667cc41b

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x600d457d

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0x282f9350

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x7ccb4c9e

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x26e2eee0

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x2b6d8da0

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x642b1e31

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x63cfa600

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x52bce688

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x1b03588a

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x845102b

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x4142ed9c

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x5bcea3ef

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x7ccdc13b

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x2010b9ca

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x5ecc3aff

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x162cace4

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x11cac87d

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S3:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x624cfbe0

    aput v1, v0, v3

    const v1, 0x1fb6e9de

    aput v1, v0, v4

    const v1, -0x58418411

    aput v1, v0, v5

    const v1, -0x2d8c5d68

    aput v1, v0, v6

    const v1, 0x4a4f7bdb    # 3399414.8f

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x64ad8c57

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x7aaefbbd

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x5fdf12f

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7e287aff

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x19f0499d

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x95f35a1

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x79ebf120

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x2fa62bd

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x6497b7b1

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0xc9be09d

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x241e4adf

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x28147f5f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x4fa2b8cd

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x36bcffc0    # -798724.0f

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0xcc32220

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x22cf4d0

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x3f5ac8b1

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x1d2d00d9

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x24147b15

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x11b2eee6

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0xfca5167

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x71ff904c

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x2d195ffe

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x1a05645f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0xc13fefe

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x81b08ca

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x5170121

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x7facff00

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x17c1a102

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x53650b08

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x7fe72701

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x2d4711a1

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x6df4261

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x44616476

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7293ea25

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x317b0021

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0xa8e77ff

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x3dd64b04

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x5d90d9c5

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x7ed48400

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x547eebe6

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x446d4ca0

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x6cf3d6f5

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x2649abdf

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x515f380b

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x36338cc1

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x503f7e93

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x2c88df9f

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x11b638e1

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x72500e03

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x7f14d45

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x541fafd2

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x13728822

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x57971e81

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x1eb098ba

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0x36ccac00    # -734528.0f

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x6920318f

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x81dbb99

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x3cfb5b

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x4d351805    # 1.8989064E8f

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x7f3d5ce3

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x5937993a

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x5d5bcca9

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x25139016

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x606d906f

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x60b9ddd1

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x3991467d

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x5a409272

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x1143c44f

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x43958302

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x2fdeb115

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x22083b8

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x3fb6180c

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x18f8931e

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x281658e6

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x26486e3e

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x74287590

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x7477e4c1

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x4af91f84

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0xcd2f5db

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x79098b02

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x1b15447f

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x28123b23

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x69dead38

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x1574ca16

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x2078e49e

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x211c40b7

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x5ae56107

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x14377b

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x41e8ac8

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x9114003

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, -0x42a61b2e

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x1c2ea92b

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x4fe876d5

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x2f91a340

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x557be8de

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0xeae4a7

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0xce5c2ec

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x4db4bba6

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x18a94201

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x22cc9654

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x13e84fcb

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x6572327

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x66503750

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x56c8c391

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x6b65811c

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x5e146119

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x6e85cb75

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x41f83ffe

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x3dcdaa89

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x76c00b14

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x5bbfc92d

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x2f13c4db

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, -0x487fe549

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x7292c4dc

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x20c763ef

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x3c995a04

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x63c7d780

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xace3205

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, -0x5536ab76

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x135e2839

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x41afa32

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x1d16625a

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x6701902c

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x648a85ac

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x31d477f7

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x6ed94fcf

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x36cc6fdb

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x38f474ba

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x261995b8

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x56e55a79

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x26a4ceb

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x52437eff

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x2f8f76b4

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xdf980a5

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x798b321d

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x1225fb15

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x17a9be04

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x2c18f4df

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x488b8063

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x54d5084c

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x103cb2e0

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x2e096b7c

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x1741a254

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x1a495fcb

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x213d42f6

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x2c1c7c26

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x61c2f50f

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x6552daf9

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x2d3dce08

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x25130f69

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x27e9805e

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x418f2c8

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x1a96a6

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0xd1526ab

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x63315c21

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x5e0a72ec

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x49bafefd

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x187908d9

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x72f2427a

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x311170a7

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x3e9b640c

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x33c1ef29    # -4.9824604E7f

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x2a352c4a

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xcaec388

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x8cffe1f

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x6c728aff

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x71eae2a1

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x1f9af36e

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x30342ed1

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x3e217be9

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x53f84195

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x34bb5e28    # -1.2886488E7f

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x7464f0aa

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x13988c3

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x4e3ad036

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x4b41ce33

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x2787d7fa

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x12a3a4e2

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x6f7de532

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x58fd7eb6

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x2fe11700

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x24adffc2

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0xb66f03b

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x68ee553b

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x1d7b95

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x7d1a182e

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0x109873f6

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x613096

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x3cd26adf

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x525ede01

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x29908415

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x7fbb977f

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x50614c25

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x29c9ed2a

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x5ce2a465

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x58cf0cd4

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x2f55c018

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x75a33f6f

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x2b61d319

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0xce454a9

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x29f5327a

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x15f1919

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x77079103

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, -0x215fc50a

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x78a8565e

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x211ca921

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x21f05cbe

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, -0x748a1c79

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x4c3af9af

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x475a3c11

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x2711492e

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, -0x1adc4189

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x3deabad7

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x2f69efdf

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x50198505

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0xb8f3b4e

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0xc1f14a5

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x2933678a

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x39e4460c

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x1fda8538

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x1987832f

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x35ff8c99

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x566ebb08

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x296b299e

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x492fc295

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x6d994155

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x4a989197

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, -0x642c2226

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x2081fad1

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x24da8fe4

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x1b5e51ee

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x9acdb1a

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x6afce36c

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x316cc04

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x79bbdec2

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x4823a630

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x7965291f

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0x332902bd

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x41823979

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x6cd4320a

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x49a83cb3

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x4edfd282

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x7ae5290c

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x3cb9536b

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x7ae1df02

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x67ccaa82

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x13ecf0b0

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x2c004c8e

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x3f85c5c1

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0xaef7ed2

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S4:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x7ec90c04

    aput v1, v0, v3

    const v1, 0x2c6e74b9

    aput v1, v0, v4

    const v1, -0x64f19921

    aput v1, v0, v5

    const v1, -0x59cc86ef

    aput v1, v0, v6

    const v1, -0x47958001

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x1dd358f5

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x44dd9d44

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x1731167f

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x8fbf1fa

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x180aee34

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x2dfae500

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x735aba00

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x2ab722d8

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x386381cb

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x5309dbc6

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x69befd7a

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x195d1881

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0xf38df33

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x3bb6b7ea

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x330a3e80

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x38851640

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x15b0a848

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x1974e735

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x4caadeff    # 8.9585656E7f

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x5f480a01

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x412b2aa

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x259814fc

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x41d0efe2

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x4e40b48d    # 8.0826451E8f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x248eb6fb

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, -0x7245e302

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x41a99b02

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x1a550a04

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x45709a35

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x7251f4e7

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x6a5ae8db

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x3ef91329

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x685a67f6

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x3ac64656

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x4d79fe6a    # 2.62137504E8f

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0xd0c089d

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x68af8040

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x12f361aa

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x11b4958b

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x1e14a578

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x78f61950

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x281f8eaa

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x4e29fea7    # 7.130096E8f

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x6366e52d

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x2d1c000    # 3.0819993E-37f

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x3b5371fb

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x6c880a8f

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xc05372a

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x578535f2

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x2261be02

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x29bd5f37

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x20ec5d80

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x74b55bd2

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x682199c0

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x2bde1a14

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x53fb3ce8

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x3752124d

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x28a87fc9

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x3d959981

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x5c1ff900

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x1c72c67

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xc4eff0b

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x62407ea

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x55d0b04f

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x4fb96976

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x6f386afb

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x4f57588c

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x10aa5e01

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x1a635d3e

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x5949d2d9

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x1995bd9d

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x209affe1

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0xec50966

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, -0x2022aa44

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x29de0655

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x6ee18c66

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x17af8975

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x32c7911c

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x76076b98

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0xd01e980

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x524755f4

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x3b63cc9

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0xcc844b2

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x430c0f56

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x7853c917

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x1ac58bda

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x1b3d82b

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x1a9e7449

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x64ee2d7e

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x32244e26

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x1c94910

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, -0x47974080

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xd26f3fd

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x6cbd1219

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x4a5c284

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x636737b6

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x50f5b616

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0xdb8991d

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x7135c93f

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x136e05db

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x10e7c6f

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x47785c9

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, -0x2918082c

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x38048237

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x3063fcdf

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x490a7622

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x13d6be26

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x26e46695

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x48a99be7

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x9ab103b

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x2f72a749

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x48925401

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x3e453481

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, -0x1a00aaf1

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x49f7cfb7

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x5bb5d0e8

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x7828d1a6

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x5495911f

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x223a66ce

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, -0x39d40c33

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x61f77a07

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x68cb3e47

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x86c010f

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x5de217e0

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x2e749622

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0xc09a889

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x5fd3c0a

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x407edac3

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x344c2ab0    # -2.3571104E7f

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x1793084d

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x4f28f146

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xab378d5

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x26ae04f4

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x212825aa

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x4124bbe4

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x6b35f4aa

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xf5755d1

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, -0x1f1e1a92

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x6184b5be

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x580a249f

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x6b08b440

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x1cd87772

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x6084aa9f

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0x3c23fd80

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x5687715

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x646c6bd7

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x44904db3

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x66b4f0a3

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x3f0e9b76

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x697ed5af

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x49e92ff6    # 1910270.8f

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x309e374f

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x2cb6356a

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x7a7f7a8d

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x4991f840    # 1195784.0f

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x76f0ae02

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x83be84d

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x28421c9a

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x44489406

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x736e4cb8

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x3ef6d6f0

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x7436a03a

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x7d869cf4

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x134f616f

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x2e77118d

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x4ce4d41f

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x556f4b8e

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x3ca5d717

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x7d161bba

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x63526ff0

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x50b9d45e

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x601ba62e

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x45d34559

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x260d25ed

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x2439ab79

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0xc1b06b2

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x176d486f

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x97c13ea

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x631da5c7

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x445f7382

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x175683f4

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x32399569    # -4.1610928E8f

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x70be0288

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x4c32308e

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x6e5dd2f3

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x20936079

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x459b80a5

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x419f1d25

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x563dceff

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x145acea4

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x224e42f2

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x1c5c1572

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x98de4d4

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x1ad2fff3

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x73dabfb2

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x324ed72f

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x4067b7fd

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x523138e

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x5ca3bc78

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x23f02992

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0x75922283

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x784d6b17

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x58ebb16e

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x44094f85

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x3f481d87

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x3015185

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x77b5ff76

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x73dcfd41

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, -0x550b8aaa

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x5f46b02a

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x2b092801

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x3d38f5f7

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0xca81f36

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x52af4a8a

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x66d5e7c0

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x20c4f78c

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x6afaaef0

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x1b5ad7a8

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x9e12a53

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x6cf6e479

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x20758184

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x2f31059b

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x770841a8

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x4a046826    # 2169353.5f

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xff6f8f3

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x5f638090

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x5346aba0

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x5ce96c28

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, -0x1e89125d

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x6bac307f

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x376829d2

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x7ac9f057

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x17e3fe2a

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x24b79767

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0xa5694e0

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x2932da6b

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x68ff1ebf

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x7555442c

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0xe60f942

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x61f9a66

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x1146b6e3

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x34010718

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x44cf3548

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x17dd01eb

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x77a8f67d

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x750e6249

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x259d81ab

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x5e76ffa8

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x4eacbaba

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x6d47de08

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x1016182c

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x9057063

    aput v1, v0, v3

    const v1, 0x2cac6ce1

    aput v1, v0, v4

    const v1, 0x4ca34867    # 8.5607224E7f

    aput v1, v0, v5

    const v1, -0x1dcc8084

    aput v1, v0, v6

    const v1, -0x6a24f719

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x16843b4

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x1312a344

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x325553ac

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x4060f6a0

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x205e1d13

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x7c0fa863

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x63ed86b9

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x1ab6a6b8

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x21a141c7

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0xc7008ce

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x76764ec8

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x33f14961

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x3fe6c843

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0xaf93926

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x1b9da182

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x5cf71567

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x4e23e33c    # 6.8739456E8f

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x79cbd7cc

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x48a14367

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x5ceb69e7

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x136b42b

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x5eebe8b6

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x155fe79a

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x5f7b24d3

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x9a8486f

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, -0x57779eb6

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x2900af98

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x1665991

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x1e66d79d

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x370cf3a0    # -497763.0f

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x2e78ef3c

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x2f2ae6ce

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x30f013ec

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x835f82e

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x2f57df8e

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x2bee682

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x6cfa5950

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x17941c26

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x74bed3cd

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x372da53c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x4c7f4448    # 6.691664E7f

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x254a2bc0

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x6dba0ec3

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x83919a7

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x60451127

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x49dbcfb0    # 1800694.0f

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x4e670c53    # 9.6908614E8f

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x5c3d9c01

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x64bdb941

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x2c0e636a

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x45822633

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x15908c78

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x18f4389e

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x35f29adb

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x5c4cdd8d

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0xf2b7274

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x477eac1e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x8a19866

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x1ae2eac8

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x284caf89

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x556d7ddd

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x6ccb41ad

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x3b3a21bf

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x16434be3

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x6515c6fa

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x10173c92

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x76f3227

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x7fdd9252

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x3cbf5b5d

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x208163f7

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x596b57f9

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x5b7c5ecc

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x221db3a6

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, -0x65965fd1

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x68818a54

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x314dd691

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x53c0843a

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x176c9ab

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x25bfe68a

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x4b9d7544

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x30ddd141

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x25ac6f48

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x56566c79

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x53bddb65

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x18900419

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x16980288

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xba93563

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x71cbd43f

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x175ee417

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x4980740d

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x37f78204

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, -0x721b4067

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x5eeefe60

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x7fd37975

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x25a5d940

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x17e066b1

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x6ad73277

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x2cc6013

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x4787cb41

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x5f04456d

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x22258698

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x363b37c5

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x2dc156be

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x4f628daa

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x57f55ec5

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x1dddf542

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x2d6e9141

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x4ec75b95

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x24f2c3c0

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x42d15d99

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x32f28060

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x7b6e27ff

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x57237510

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x7345c106

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0xbe1dcd1

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x35162386

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x191576da

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x3333b094

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x157ec6f2

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x372b74af

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x692573e4

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x165627b8

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0xce9fd77

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x3a62ef1d

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x58781dc8

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0xc5a098a

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x74364853

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x20951063

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x4576698d

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x49052bf9

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x592af950

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x36f73523

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x4cfb6e87    # 1.31822648E8f

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x7da4cec0

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x6c152daa

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x34fc6958    # -8623784.0f

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x3af201a3

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, -0x328f855

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x921c42f

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x76200f45

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x5fe2be78

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x448f4f33

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x754613c9

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x2b05d08d

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x48b9d585

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x23fb6bbf

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x37f67065

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x7dede786

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x3c65cc8d

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x42410005

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x6a091751

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0xef3c8a6

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x76ff8d2a

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x28207682

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, -0x56560842

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x40cd9863

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x2ba4a48b

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x4cac0300

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, -0x344f1ca8    # -2.3185072E7f

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x7cf0ddf6

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x1f8fb214

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x2c8d30f8

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x33c3b5ed    # -4.9358924E7f

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x7309ce9a

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x61c87be

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x77367078

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x6062e397

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x47cf8e7a

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x4937ad7d

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x3cc2acfb

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x3fc06976

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x4e8f0252

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x64d8314d

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x25c78f1d

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x1e665459

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x3ef6f710

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x513021a5

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x6c5b68b7

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x7dd07560

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x3007cd3e

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x74719eef

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x2378d97f

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x73340d4

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x7e432fd9

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0xc5ec241

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x77f6d794

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0xa6d276f

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0x8a930f6

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x6a810cfb

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x48040043

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x3d991691

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x6fe4ac98

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x4e8c1340

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x439f4bd6

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x6acb6726

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x45e51ee

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x2d4bd736    # 1.15870005E-11f

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0xf25faab

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x5b0c0315

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x1d696edd

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0x257f0c3d

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x6cb750b7

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x361400bc

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x177e90b6

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x3814f200

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x5c06bfbd    # -2.702385E-17f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x6385ab3e

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x438fb0a9

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, -0x25be1807

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x3da52cc6

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x54f4a084

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x4e80aafb

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x59357cbe

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x1242ea38

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x7f97c5ab

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x45a5384b

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x49092151

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x3a479c3a

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x5302da25

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x653d7e6a

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x54268d49

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x51a477ea

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x5017d55b

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x282da278

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x44136c76

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x404a8c8

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x471a5edf

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x47e56d76

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x60ed5869

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x683aa46a

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x151366e5

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x29935913

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x1fdb7f1

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x88e8dfa

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x6549090b

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0x3b4cbf9f

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x4a5de3ab    # 3635434.8f

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x19fae2cb

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0x5f1e27ab

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x2c94b30f

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0xabb1215

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x4f16cadc

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x41447043

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x5d289d31

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x49c92f54    # 1648106.5f

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x38b5f331

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x7128a454

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x48392905

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x59a4e248

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x7ae36843

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x298a30d1

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x7a1fbfe7

    aput v1, v0, v3

    const v1, 0x332bf567

    aput v1, v0, v4

    const v1, 0x662dbfff

    aput v1, v0, v5

    const v1, -0x3039a96d

    aput v1, v0, v6

    const v1, 0x2a8d7f6f

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x546436ee

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x219ff75f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x2028da1f

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x227bce7

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x4d642916

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x18fac300

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x50f18b82

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x2cb2cb11

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x4dcd18a4

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x4b3695f2    # 1.1965938E7f

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x4d78f822

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x5fa0430a

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x32be7e17    # -2.0290728E8f

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x1eafdef4

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x1db10e43

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x4e973c7f

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x21b1877

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x5c79b0d8

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1e8bfd43

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x4d495001    # 2.11091472E8f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x38be4341

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x6ec311e3

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x6d5863c1

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x89766be

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x4511520c

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x1286becf

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x491534e7

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x2660c200

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x7565bde4

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x64241f7a

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x7db72357

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x3c4c529a

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x28136086

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0xbd8dfa8

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x356d1cf2

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x107789be

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x4c4d1632

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x502aa8f

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0xbc0351e

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x166bf52a

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x14ed007e

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x1cb796ef

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x2cb28aea

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x4e7b3aff

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x5f43671b

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x63091fc9

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x4981ac83

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x334266ce

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x736cbe49

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x2f27ab40

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x34c59378    # -1.221748E7f

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x47bc2829

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x4725ba37

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x59952dd5

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x7ad61f1e

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0xc5cbafa

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x4437f107

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x4918669e

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x42d2d816

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0xa961288

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x1e5a3f92

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x13749e67

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x72fc081a

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x4e2ec609

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x6a7c8bb

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x30e620a8

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x413c08aa

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x3f9145d0

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x7211b24

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x45c28829

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x36a1ce81

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x43713aef

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x38bc46e9

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, -0x391905ec

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x4517a7b6

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x52b143ba

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x468f508b

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x7829435f

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0xedbe7c5

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x7de24561

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x5009f00c

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x15d3b193

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x16e39264

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x6dabb575

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x9b4fc3

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x54597313

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x65369088

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x6a5b79a

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x4d7a9192

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x1aec3ca9

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x417c7978

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0xe0804e9

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x55f1be56

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x181ac9c5

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x4c5e0da3

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x821447b

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x61fe033c

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x16746233

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x3c034c28

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x2592f38c

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x79aac56c

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x3ce4e1ad

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x51f0c802

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x67070ca6

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x1626a49f

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x1127d4d7

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x1d382fe3

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xc4fb99a

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x44cda888

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x3ec6d97b

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x6e77a6a9

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x349a74a4    # -1.504342E7f

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x2badcf39

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x2bd1408b

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x60c03eb7

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x46f97288

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x5cc8ab0c

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0xbcf3783

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, -0x3758ecfe

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, -0x469273ce

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x142b1842

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x417462d3

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x7979fb06

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x18ddacf8

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x748a3089

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x11ef8da4

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x1f7c37a8

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x72948791

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x5a6317a6

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x5a30860

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x5dda0033

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0xd714050

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0xa463cf0

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x5f153d80

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x8b9767a

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x5c262d50

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0x79d34217

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x21a718d

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x6539cc96

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x2711fd60

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x438050e3

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x69908a8

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x3d7fedc4

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0x7d92d411

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x4eeb8476    # 1.97566336E9f

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x488dcf25

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x36c9d566

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x28e74e41

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x3d9ef536

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x3d49a9cf

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x451c4621

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x49a0721a

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x6d51509c

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x3ac7d5e6

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, -0x6157faf7

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0xdd4fe83

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x5be8c090

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x22e1e93d

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x15e0d7f9

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x50b1b887

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x2b9f4fd5

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x625aba82

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x6a017962

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x2ec01b9c

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x15488aa9

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x28e918c0

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x40055a2c

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x6c2d65de

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x1cd24066

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x58745b9

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x3453dc1e

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x2966d692

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x496cff6f

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x1c9f4986

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x201d12f9

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x478dbd2f

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x19de7eae

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x53e561a

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x15ad6f8c

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x66626c1c

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x7154c24c

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x15f7d4d6

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x6c14d6c7

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x17dcb0f0

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x58d4f2ae

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x615d6b05

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x52cf564c

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x677c019a

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x2ec40581

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x763953c3

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x1d6692e

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x2c5f3ef8

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x5e18e9f2

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x1b0d205a

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x693ed285

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x74904698

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x4c2b0edd    # 4.4841844E7f

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x4f757656

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x5d393378

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x5ecddcb1

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0x3d321c5d

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x3c0a1e6c

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x4b269301    # 1.0916609E7f

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x3860fdd1

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x3c997e7e

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x5e4f9504

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x3ffafbbd

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x76f7ad0e

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x296693f4

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x3d1fce6f

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x39e1ba42

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x2c4a54cc

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, -0x8d40649

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x1b0434c0

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x4e72b567

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x5592a33d

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x4add6cff

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0x302d5781

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x60aeb767

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x1814386b

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x30bcc33d

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x38a0c07d

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x2e9f90e

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x3c9cae65

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x589dd390

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x5479f8e6

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x1cb8d647

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x68029e57

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, -0x1588a60c

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x2d57539d

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x569a58cf

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x17b19c53

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x462e1b78

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x6580f87e

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0xc7e86ec

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x6e25aa0c

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x40a230f3

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x2e6770cb

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0x491ce72e

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x3ffa50bc

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x3d40f021

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x3c3f4252

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x4958c24c    # 887844.75f

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x518f36b2

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x7b4e2c90

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0xfedce83

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x78722526

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0xd5d8639

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x6b1fe418

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x6f8e90b5

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x6ab4755d

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x1de9cff3

    aput v1, v0, v3

    const v1, -0x44220004

    aput v1, v0, v4

    const v1, -0x58142543

    aput v1, v0, v5

    const v1, 0x35648095

    aput v1, v0, v6

    const v1, 0x7789f8b7

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x193eede5

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xe241600

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x52ce8b5

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x11a9cfb0

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x1a6ad0ef

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x131866f6

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x6c792e8c

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x2a42931c

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x76e38111

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x4ed210c6

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x37ddddfc

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x2165214f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0xa0cc32c

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x41e68fd7

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x7b5ff6c0

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x44dbc5f1

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x4b2ec831

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x4bb18610

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x49eedfd

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0xb15a15d

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x480d3168    # 144581.62f

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x744421a6

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x669ded42

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x381317cf

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x3f8f95e7

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x72df191b

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7580330d

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x6bf8bdaf

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x5c7dcdfa

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x5441929d

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x55bfde9c

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x4cfe2bf6

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x2e7d1ca

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x53571dae

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7a3182a2

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x12a8ddec

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x255cca3

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x176f43e8

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x71fb46d4

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x38129022

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x316b652c

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x47b89653

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x69a4279e

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, -0x7d0c2fab

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x66fb9767

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x15b80b4e

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x1d5b47a0

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x4cfde06f    # 1.33104504E8f

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x3d713b48

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x57e8726e

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x647a78fc

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x6679a2bc

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x608bd593

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x6c200e03

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x39dc5ff6

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x5d0b00a3

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x519c500e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x7e8bd632

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x70108c0c

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x442cafb7

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x2998df04

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x67f30bd6

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x64920b6f

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x618122ad

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x6918548

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x58cb7e07

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x3b74ef2e

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x522fffb1

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x2db8f734

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x1c7e27cd

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x5b14dea5

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x3cf1d2e2

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x19b47a38

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x424f7618

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x35856039

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x62e82119    # -2.0099921E-21f

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x27eb35e6

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x36500985

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x36baf5b8

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x9c467cd

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x3e76ef4f

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x1ee24085

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x6cd1af8

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x7170c608

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x2d5e3354

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x2b21b6a6

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x64c6d006

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x433f39d4

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x3dd00db3

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x708f8f34

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x77d51b42

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x264f620f

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x24b8d2bf

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x15c1b79e

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x46a52564

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x7281ab2

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x3e378160

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x7895cda5

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x7a63ea5b

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x19ba6878

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x3c8438a1

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x24f845f4

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x676a3ab

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x7f229b1e

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x31842e7b

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x24259fd7

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x7410b8e

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x7ca00348

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x6df4c1f2

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x690a4e6b

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x2f50f04

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x4f01ecb4

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x1daf92c3

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x4f9b12ea

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0xdea0ddb

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x5ddc8c91

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x604b3bd8

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x25d04979

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x34c713f8

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, -0x3b9e7e79

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x15859168

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x7cd16efc

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x1436876c

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0xeabbef9

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x412111ec

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x56e9af27

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x5fb55bbf

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x3cf7c899

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x6d13451a

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x2298fe93

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x151682eb

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x57bd1121

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x2459f4c

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0xe6f848b

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x20e3030f

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x24d8c29e

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x1ec698c5

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, -0x1059c048

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x71873054

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x490d30c5

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x60cd9bbe

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x34ea5b34    # -9807052.0f

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x4fe5bafc

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0xe1b8273

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x7bb5e41b

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x45182024

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x42cbda70

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x328251f6

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x57e85b7a

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x2ac0a50a

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x20cf4d8c

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x315b2bd8

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x79d130a4

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x3486ebfb

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x33d3cddc

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x77853b53

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x37effcb5

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x3af97888

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, -0x1a7f4c1a

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x4e68b8f4    # 9.761088E8f

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x3a374c82

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xd809ea2

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x398feb7c

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x132a4f94

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x43b7950e

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0x2fee7d1c

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x223613bd

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x22f9355e

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x37df932b

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x3bdb7d77

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x530c143d

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x5715f6b7

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x10cb8723

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0xd989e91

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x3eb7341c

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x6fad7ea2

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x5e410fab

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x4b75db9b

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x2eda7fa4

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x1784bf1c

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x16715f7c

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x5889e9e1

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x102c6f04

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x22f82ca5

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x24b7a96c

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x38d7e5b2

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x57720101

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0x730edebc

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x5b643113

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x6b6e81b1

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x503c2fba

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x646f1282

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x7523d24a

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x1f88696b

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x63e8571

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x7a5b2121

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x2e78476a

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x29263a4d

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x45aef321

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x7e0b8361

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x52ee9c13

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x1584a69b

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x1a00726e

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x11403092

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0xda6d77

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x4a0cdd61    # 2307928.2f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x52e0b9fd

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x605bdfb0

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, -0x61123c9c

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x22ebe6a8

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x31182d76

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x5f18c960

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5564a6b9

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x10853209

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x381470c9

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x2de705ca

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x76aea8f1

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0x20f67dd5

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x4296e594

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x55ed1b0e

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x78bae3f1

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x1f095d86

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x3ada4819

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x4cf1764f    # 1.26595704E8f

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xd771c2b

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x67cdb156

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x350d8384

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x5938fa0f

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x42399ef3

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x36997b07

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0xe84093d

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x4aa93e61    # 5545776.5f

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x7c9f2785

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x1fa98b0c

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x1149382c

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x1689da5b

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x614d1b7

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0xe25244b

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xc768347

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x589e8d82

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0xd2059d1

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x5b9944e2

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x725f57e

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x4f19130

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x4591b140

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x66d9ae9c

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x1ee7230d

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x50b2ad80

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x151197ff

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x724d5d7d

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x15740a62

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_encrypting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_workingKey:[B

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_rounds:I

    return-void
.end method


# virtual methods
.method protected final Bits32ToBytes(I[BI)V
    .registers 6

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    return-void
.end method

.method protected final Bits32ToInts(I[II)V
    .registers 6

    add-int/lit8 v0, p3, 0x3

    and-int/lit16 v1, p1, 0xff

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, p2, v0

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    aput v0, p2, p3

    return-void
.end method

.method protected final BytesTo32bits([BI)I
    .registers 5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method protected final CAST_Decipher(II[I)V
    .registers 9

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_rounds:I

    move v2, v0

    move v1, p2

    :goto_5
    if-gtz v2, :cond_d

    aput v1, p3, v4

    const/4 v0, 0x1

    aput p1, p3, v0

    return-void

    :cond_d
    packed-switch v2, :pswitch_data_3e

    move v0, v1

    :goto_11
    add-int/lit8 v2, v2, -0x1

    move p1, v1

    move v1, v0

    goto :goto_5

    :pswitch_16
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    aget v0, v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    aget v3, v3, v2

    invoke-virtual {p0, v1, v0, v3}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->F1(III)I

    move-result v0

    :goto_22
    xor-int/2addr v0, p1

    goto :goto_11

    :pswitch_24
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    aget v0, v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    aget v3, v3, v2

    invoke-virtual {p0, v1, v0, v3}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->F2(III)I

    move-result v0

    goto :goto_22

    :pswitch_31
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    aget v0, v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    aget v3, v3, v2

    invoke-virtual {p0, v1, v0, v3}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->F3(III)I

    move-result v0

    goto :goto_22

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_24
        :pswitch_31
        :pswitch_16
        :pswitch_24
        :pswitch_31
        :pswitch_16
        :pswitch_24
        :pswitch_31
        :pswitch_16
        :pswitch_24
        :pswitch_31
        :pswitch_16
        :pswitch_24
        :pswitch_31
        :pswitch_16
    .end packed-switch
.end method

.method protected final CAST_Encipher(II[I)V
    .registers 8

    const/4 v1, 0x1

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_rounds:I

    if-le v0, v2, :cond_c

    const/4 v0, 0x0

    aput p2, p3, v0

    aput p1, p3, v1

    return-void

    :cond_c
    packed-switch v0, :pswitch_data_3e

    move v2, p2

    :goto_10
    add-int/lit8 v0, v0, 0x1

    move p1, p2

    move p2, v2

    goto :goto_2

    :pswitch_15
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    aget v3, v3, v0

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->F1(III)I

    move-result v2

    :goto_21
    xor-int/2addr v2, p1

    goto :goto_10

    :pswitch_23
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    aget v3, v3, v0

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->F2(III)I

    move-result v2

    goto :goto_21

    :pswitch_30
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    aget v3, v3, v0

    invoke-virtual {p0, p2, v2, v3}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->F3(III)I

    move-result v2

    goto :goto_21

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_23
        :pswitch_30
        :pswitch_15
        :pswitch_23
        :pswitch_30
        :pswitch_15
        :pswitch_23
        :pswitch_30
        :pswitch_15
        :pswitch_23
        :pswitch_30
        :pswitch_15
        :pswitch_23
        :pswitch_30
        :pswitch_15
    .end packed-switch
.end method

.method protected final F1(III)I
    .registers 8

    add-int v0, p2, p1

    shl-int v1, v0, p3

    rsub-int/lit8 v2, p3, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S1:[I

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S2:[I

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S3:[I

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S4:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    add-int/2addr v0, v1

    return v0
.end method

.method protected final F2(III)I
    .registers 8

    xor-int v0, p2, p1

    shl-int v1, v0, p3

    rsub-int/lit8 v2, p3, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S1:[I

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S2:[I

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S3:[I

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S4:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method protected final F3(III)I
    .registers 8

    sub-int v0, p2, p1

    shl-int v1, v0, p3

    rsub-int/lit8 v2, p3, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S1:[I

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S2:[I

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S3:[I

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S4:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    sub-int v0, v1, v0

    return v0
.end method

.method protected final IntsTo32bits([II)I
    .registers 5

    aget v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method protected decryptBlock([BI[BI)I
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->BytesTo32bits([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x4

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->BytesTo32bits([BI)I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->CAST_Decipher(II[I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToBytes(I[BI)V

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToBytes(I[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method protected encryptBlock([BI[BI)I
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->BytesTo32bits([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x4

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->BytesTo32bits([BI)I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->CAST_Encipher(II[I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToBytes(I[BI)V

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToBytes(I[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "CAST5"

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

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " init - "

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

    :cond_35
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_encrypting:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_workingKey:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->setKey([B)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_workingKey:[B

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->getBlockSize()I

    move-result v0

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_38

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_41

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_encrypting:Z

    if-nez v0, :cond_4a

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->decryptBlock([BI[BI)I

    move-result v0

    return v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->encryptBlock([BI[BI)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method protected setKey([B)V
    .registers 15

    const/4 v12, 0x2

    const/16 v11, 0xc

    const/4 v1, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x8

    array-length v0, p1

    const/16 v2, 0xb

    if-lt v0, v2, :cond_b9f

    :goto_c
    const/16 v0, 0x10

    new-array v2, v0, [I

    const/16 v0, 0x10

    new-array v3, v0, [I

    move v0, v1

    :goto_15
    array-length v4, p1

    if-lt v0, v4, :cond_ba3

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v8, 0xd

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v8, 0xf

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v11

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v8, 0xe

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v9

    aget v7, v7, v8

    xor-int/2addr v0, v7

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v2, v1

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xa

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v6

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x5

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v6, 0x9

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xa

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v2, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/4 v4, 0x1

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v6, v2, v9

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x7

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x6

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xa

    aget v5, v2, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0xb

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x5

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v0, v12

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/4 v4, 0x3

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v6, v2, v11

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0xd

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x3

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xe

    aget v5, v2, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0xf

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x1

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v1

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v11

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v0, v10

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v8, 0x5

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v8, 0x7

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v10

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v8, 0x6

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    invoke-virtual {p0, v5, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v3, v1

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v3, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x6

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v5, 0x5

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v10

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x1

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v4, 0xa

    aget v4, v3, v4

    aget v0, v0, v4

    xor-int/2addr v0, v6

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x3

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/4 v4, 0x5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x3

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v3, v11

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xd

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v3, v9

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/4 v4, 0x6

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x1

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v7, 0xe

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xf

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0xd

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/4 v4, 0x7

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x7

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v7, 0x6

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v3, v9

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0x9

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x5

    aget v5, v3, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v6, v3, v10

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v6, 0xa

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v6, 0xb

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v6, 0x7

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v0, v9

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v8, 0xd

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v8, 0xf

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v11

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v8, 0xe

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v9

    aget v7, v7, v8

    xor-int/2addr v0, v7

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v2, v1

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xa

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v6

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x5

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v6, 0x9

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xa

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v2, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/16 v4, 0x9

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x3

    aget v6, v2, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v2, v11

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xd

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/16 v4, 0xa

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x1

    aget v6, v2, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v7, 0xe

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xf

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v11

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/16 v4, 0xb

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x7

    aget v6, v2, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v7, 0x6

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v2, v9

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x5

    aget v5, v2, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v6, 0xa

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v6, 0xb

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v0, v11

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v8, 0x5

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v8, 0x7

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v10

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v8, 0x6

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    invoke-virtual {p0, v5, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v3, v1

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v3, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x6

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v5, 0x5

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v10

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x1

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v4, 0xa

    aget v4, v3, v4

    aget v0, v0, v4

    xor-int/2addr v0, v6

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x3

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/16 v4, 0xd

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v6, v3, v9

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0x9

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x7

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x6

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/16 v4, 0xe

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v6, 0xa

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0xb

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x5

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v3, v10

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v7, 0x7

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/16 v4, 0xf

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v6, v3, v11

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0xd

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v3, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v3, v9

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Km:[I

    const/16 v4, 0x10

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v6, 0xe

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0xf

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v3, v1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xd

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v0, v4

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v8, 0xd

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v8, 0xf

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v11

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v8, 0xe

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v9

    aget v7, v7, v8

    xor-int/2addr v0, v7

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v2, v1

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xa

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v6

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x5

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v6, 0x9

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xa

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v2, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/4 v4, 0x1

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v6, v2, v9

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x7

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x6

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xa

    aget v5, v2, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0xb

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x5

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v0, v12

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/4 v4, 0x3

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v6, v2, v11

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0xd

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x3

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xe

    aget v5, v2, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0xf

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x1

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v1

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v11

    aget v5, v5, v6

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v0, v10

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v8, 0x5

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v8, 0x7

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v10

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v8, 0x6

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    invoke-virtual {p0, v5, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v3, v1

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v3, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x6

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v5, 0x5

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v10

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x1

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v4, 0xa

    aget v4, v3, v4

    aget v0, v0, v4

    xor-int/2addr v0, v6

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x3

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/4 v4, 0x5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x3

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v3, v11

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xd

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v3, v9

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/4 v4, 0x6

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x1

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v7, 0xe

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xf

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v7, 0xd

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/4 v4, 0x7

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x7

    aget v6, v3, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v7, 0x6

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v3, v9

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0x9

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x5

    aget v5, v3, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v6, v3, v10

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v6, 0xa

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v6, 0xb

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v6, 0x7

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v0, v9

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v8, 0xd

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v8, 0xf

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v11

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v8, 0xe

    aget v8, v3, v8

    aget v7, v7, v8

    xor-int/2addr v0, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v3, v9

    aget v7, v7, v8

    xor-int/2addr v0, v7

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v2, v1

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v2, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xa

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v6

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x5

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v6, 0x9

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xa

    aget v5, v2, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v2, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/16 v4, 0x9

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x3

    aget v6, v2, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v2, v11

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xd

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/16 v4, 0xa

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x1

    aget v6, v2, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v7, 0xe

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0xf

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v2, v11

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/16 v4, 0xb

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x7

    aget v6, v2, v6

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v7, 0x6

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v2, v9

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v7, 0x9

    aget v7, v2, v7

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v7, v2, v12

    aget v6, v6, v7

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    aput v5, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x5

    aget v5, v2, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v6, v2, v10

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v6, 0xa

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v6, 0xb

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v6, 0x6

    aget v6, v2, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v0, v11

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v0

    invoke-virtual {p0, v2, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v4

    invoke-virtual {p0, v2, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v5

    invoke-virtual {p0, v2, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->IntsTo32bits([II)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v8, 0x5

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v8, 0x7

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v10

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v8, 0x6

    aget v8, v2, v8

    aget v7, v7, v8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v8, v2, v1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    invoke-virtual {p0, v5, v3, v1}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v7, v3, v1

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    aget v7, v3, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v7, 0x1

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v7, 0x3

    aget v7, v3, v7

    aget v5, v5, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v7, v2, v12

    aget v5, v5, v7

    xor-int/2addr v0, v5

    invoke-virtual {p0, v0, v3, v10}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x7

    aget v5, v3, v5

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x6

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v5, 0x5

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v10

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v5, 0x1

    aget v5, v2, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0, v3, v9}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v4, 0xa

    aget v4, v3, v4

    aget v0, v0, v4

    xor-int/2addr v0, v6

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v5, 0x9

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/16 v5, 0xb

    aget v5, v3, v5

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v5, v3, v9

    aget v4, v4, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v5, 0x3

    aget v2, v2, v5

    aget v2, v4, v2

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v3, v11}, Lorg/bouncycastle/crypto/engines/CAST5Engine;->Bits32ToInts(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/16 v2, 0xd

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v5, v3, v9

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0x9

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x7

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/4 v6, 0x6

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/4 v6, 0x3

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/16 v2, 0xe

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xa

    aget v5, v3, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0xb

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x5

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v3, v10

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/4 v6, 0x7

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/16 v2, 0xf

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    aget v5, v3, v11

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0xd

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x3

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v6, v3, v12

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    aget v6, v3, v9

    aget v5, v5, v6

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_Kr:[I

    const/16 v2, 0x10

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S5:[I

    const/16 v5, 0xe

    aget v5, v3, v5

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S6:[I

    const/16 v6, 0xf

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S7:[I

    const/4 v6, 0x1

    aget v6, v3, v6

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    aget v1, v3, v1

    aget v1, v5, v1

    xor-int/2addr v1, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/CAST5Engine;->S8:[I

    const/16 v5, 0xd

    aget v3, v3, v5

    aget v3, v4, v3

    xor-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x1f

    aput v1, v0, v2

    return-void

    :cond_b9f
    iput v11, p0, Lorg/bouncycastle/crypto/engines/CAST5Engine;->_rounds:I

    goto/16 :goto_c

    :cond_ba3
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15
.end method
