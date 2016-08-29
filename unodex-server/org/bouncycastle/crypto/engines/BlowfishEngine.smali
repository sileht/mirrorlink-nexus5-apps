.class public final Lorg/bouncycastle/crypto/engines/BlowfishEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final KP:[I

.field private static final KS0:[I

.field private static final KS1:[I

.field private static final KS2:[I

.field private static final KS3:[I

.field private static final P_SZ:I = 0x12

.field private static final ROUNDS:I = 0x10

.field private static final SBOX_SK:I = 0x100


# instance fields
.field private final P:[I

.field private final S0:[I

.field private final S1:[I

.field private final S2:[I

.field private final S3:[I

.field private encrypting:Z

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x12

    new-array v0, v0, [I

    const v1, 0x243f6a88

    aput v1, v0, v3

    const v1, -0x7a5cf72d

    aput v1, v0, v4

    const v1, 0x13198a2e

    aput v1, v0, v5

    const v1, 0x3707344

    aput v1, v0, v6

    const v1, -0x5bf6c7de

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x299f31d0

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x82efa98

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x13b19377

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x452821e6

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x38d01377

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x41ab9931

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x34e90c6c

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x3f53d649

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x3683af23

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x3f84d5b5

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x4ab8f6e9

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x6de92a27

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x768604e5

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KP:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x2ecef45a

    aput v1, v0, v3

    const v1, -0x67204a54

    aput v1, v0, v4

    const v1, 0x2ffd72db

    aput v1, v0, v5

    const v1, -0x2fe52049

    aput v1, v0, v6

    const v1, -0x471e5013

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x6a267e96

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x45836fbb

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0xed38067

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x24a19947

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x4c6e9309

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x801f2e2

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x7a7103ea

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x636920d8

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x71574e69

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x5ba7015d

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0xb6cc282

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0xd95748f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x728eb658

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x718bcd58

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x7deab512

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7b54a41d

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x3da5a64b

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x63cf2ac7

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x2af26013

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x3a2e4fdd

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x286085f0

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x35be86e8    # -3169862.0f

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x4724c711

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x71862350

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x603a180e

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x6c9e0e8b

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x4fe175c2

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x28ea883f

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x42ceb4d9

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x78af2fda

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x55605c60

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x19aada0d

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x55aa546c

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x57489862

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x63e81440

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x55ca396a

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x2aab10b6

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x4b33a3cc

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x1141e8ce

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x5eab7951

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x7c72e993

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x4c11ebef

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x636fbc2a

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x2ba9c55d

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x741831f6

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x31a3c1ea

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x64786ce2

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x502945cd

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x6c24cf5c

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x7a325381

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x28958677

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x3b8f4898

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x6b4bb9af

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x3b4017e5

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x66282193

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x61d809cc

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x4de566f

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x487cac60    # 258737.5f

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x5dec8032

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x107ba2a3

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x167a8a4f

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x23d9dcfe

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x149ae478

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x23893e81

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x2c69533b

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0xf6d6ff3

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x7c0bbdc7

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x2e0b4482

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x5b7bdffc

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x69c8f04a

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x61e064a2

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x21c66842

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x9169366

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x670c9c61

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x542c7710

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x6a51a0d2

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x27abd098

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x69f058d8

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x54aecc5d

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x6eef0b6c

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x137a3be4

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x45c40fb0

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x7efb2a98

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x5e0e9ae3

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x39af0176

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x66ca593e

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x7dbcf178

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x731179e7

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x456f9fb4

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x7d84a5c3

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x3b8b5ebe

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, -0x1f908a28

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x7a3edf8d

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x401a449f

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x56c16aa6

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x4ed3aa62

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x363f7706

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x1bfedf72

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x429b023d

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x37d0d724

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x2ff5edb8

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x24f0152d

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x49f1c09b

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x75372c9

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x7f66e485

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x25d479d8

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x9172109

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x1c01afe6

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x4986b3c5

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x68931f43

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x4c006ba

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x3e56b04a

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x409f60c4

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x5e5c9ec2

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x196a2463

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x68fb6faf

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x3e6c53b5

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x1339b2eb

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x3b52ec6f

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x6dfc511f

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x64cf6ad4

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x337ebabc    # -6.7775008E7f

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x50a142f7

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x411c2ffc

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x21ccb503

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x660f2807

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x192e4bb3

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x3f3457a9

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x45c8740f

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x2df4a0c7

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x462c0425

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x5579c0bd

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x1a60320a

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x295eff3a

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x402c7279

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x679f25fe

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x4e05c34

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, -0x715a1608

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x24cddd08

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x3c7516df

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x29e94eb

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x2f501ec8

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x52faad55

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x323db5fa

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x2dc78a0

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x53317b48

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x3e00df82

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x61a3a845

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x35907360    # -3924776.0f

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x1a87562e

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x20e89625

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x2abd570a

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x287effc3

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x5398cd3a

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, -0x73b0aa8d

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x695b27b0

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x4435a738

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x1e005ca3

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, -0x470fee60

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x10fa3d98

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x2de7c48

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x4afcb56c    # 8280758.0f

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x2dd1d35b

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x65ac1b87

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x4907ba9b

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x2d71b644

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x4bfb9790    # 3.2976672E7f

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x1e220d26

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x5b3481cd

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x62fb1341

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x311b3918

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x10df3526

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x36774c01

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x2f816102

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x2bf11fb4

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x6a2425b3

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x516f6e68

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x1552718f

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x6b93d5a0

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x2f712e30

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x5038da20

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x71c3a4d1

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x718a6b49

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x70091d05

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0xdedd49c

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x777747ee

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x6ff20fe4

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0x4fad5ea0

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x688fc31c

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x2e300e6f

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x4c573e53

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x2f2f2218

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x41f1e889

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x158ad202

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x74fde05f

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x1a5f33f1

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x4a908b18

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x18acf3d6

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x31761d67

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x4b57b020

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2ec1f49

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x7cc43b81

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x2d525727

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x165fa266

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, -0x7f6a88fb

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x6c338cec

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x211a1477

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x1952df9b

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x77b5fa86

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x38abbd0b

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x462ca31

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x143250f4

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x7b3e89a0

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x29bee42d

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x51e181b7

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x250e2d

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x2071b35e

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x226800bb

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x57b8e0af

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x2464369b

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0xff646e2

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x5563911d

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x59dfa6aa

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x78c14389

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x26a5ac81

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x207d5ba2

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x2e5b9c5

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x7cd9fc8a

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x6295cfa9

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x11c81968

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x4e734a41

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x4cb8d236

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x7b14a94a

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x1b510052

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x65acd6eb

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x29f0a8c1

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x4364391c

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x2b60a476

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0x7e198c00

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x8ba6fb5

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x571be91f

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0xd691395

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x2a0dd915

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x499c9adf

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x1846064a

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0xcbfad2

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x3a7aa99c

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x53b02d5d

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x5660705f

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x8ba4799

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x6e85076a

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS0:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x4b7a70e9    # 1.6412905E7f

    aput v1, v0, v3

    const v1, -0x4a4cd6bc

    aput v1, v0, v4

    const v1, -0x248af6d2

    aput v1, v0, v5

    const v1, -0x3be6d9dd

    aput v1, v0, v6

    const v1, -0x52915950

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x49a7df7d

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x63119f48

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x70124d9a

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x1355738f

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x699a17ff

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x5664526c

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x3d4e611f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x193602a5

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x75094c29

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x5fa6ecc0

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x1be7c5c2

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x3f54989a

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x5b429d65

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x6b8fe4d6

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x6608c02a

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x5e2d63f9

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x1017cf0b

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x4d2d38e6    # 1.81636704E8f

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0xfdaa23f

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x4cdd2086    # 1.15934256E8f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x7b8f14da

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x6382e9c6

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x21ecc5e

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x9686b3f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x3ebaefc9

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x3c971814

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x6b6a70a1

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x687f3584

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x52a0e286    # 3.454976E11f

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x4863acfb

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x55aff8c9

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x3e07841c

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x7fdeae5c

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x7182bb14

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x5716f2b8

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x4fc525c9

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0xfaff3f3

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0xfe3e0fc

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x200b3ff

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x51f30ae6    # -3.205001E-11f

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x3cb574b2

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x25837a58

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x23f6de43

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, -0x2e6eec07

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x7ca92ff6

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x6bcdb88d    # -9.000794E-27f

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x22f54701

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x3ae5e581

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x37c2dadc

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x374a89cc

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x650c2259

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x56bb9eba

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0xfd0030e

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x133738c2

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x5b8ae1bf

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0x1dc73267

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x3bea0e2f

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x3280bba1

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x183eb331

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x4e548b38    # 8.9147341E8f

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x4f6db908    # 3.9883264E9f

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x6f420d03

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x9f5fb41

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x2cb81290

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x24977c79

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x5679b072

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x43507651

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x216588e1

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x266cf7f0

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x4c7451ee

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x2330c0d2

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x5512721f

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x2e6b7124

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x501adde6

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x607b3279

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x7a584718

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x7408da17

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x43606544

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x16b48274

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x138513c6

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x247ae206

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x63094366

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x3b9b3c2e

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x10e3e7b9

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x3215d908

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x22bcc4c9

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x24c2ba16

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x12a14d43

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x2a65c451

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x50940002

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x133ae4dd

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x71dff89e

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x10314e55

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x7e53882a

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x5f11199b

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x43556f1

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x285c3895

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x3c11183b

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x5924a509

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0xd701913

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x680e0406

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x614540d4

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x1e153c6e

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x791cba90

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x1516904f

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x79f1a1f6

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x5a3e2ab3

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x771fe71c

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x4e3d06fa    # 7.9283776E8f

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x2965dcb9

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x6618e2f1

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x7fc1762a

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x5266c825    # 2.47800087E11f

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x2e4cc978

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x63ef4c96

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x39eaf146

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x6b1d1588

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x5a03c3ad

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x1e0a2df4

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, -0xd08b159

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x361d2b3d    # 2.341999E-6f

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x1939260f

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x19c27960

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x5223a708

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x8eced4a

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x14520192

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x153ce09a

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x1c43ba6b

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x5984377d

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x4e80c82f

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x18cff28

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x3ccd2211

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x4193a55b

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x65582185

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x68ab9802

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x11315af1

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x24d06ac5

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x2aef7dad

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x5b6e2f84

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x1521b628

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x29076170

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x1322b88b

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x619f1510

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x13cca830

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x149e426a

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x334fe1e

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x55fc9c31

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x4a8ca370

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x4c70a239    # 6.3080676E7f

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x2a6161f5

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x345521ec    # -2.2395944E7f

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x11337944

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x60622ca7

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x6354a355

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, -0x4d0c7b92

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x648b1eaf

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x19bdf0ca

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x5fdc9647

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x655abb50    # 6.45582E22f

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x40685a32

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x3c2ab4b3

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x319ee9d5

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x3fde4709

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x64abf4e7

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x78a05f67

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x6a086682    # -1.00004673E-25f

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x623d7da8

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x7c87766

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x681cd289

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x11ed935f

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x16681281

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xe358829

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x3819e02a

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x6921205f

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x7858ba99

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x57f584a5

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x1b227263

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x647c3c01

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x1ac24696

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x324cf515

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x532e3054

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x7026b71c

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x6dbc3128

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x58ebf2ef

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x34c6ffea

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x1d7129f

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x1183c38d

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0x5d4a14d9

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x179b481d

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x42105d14

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x203e13e0

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x45eee2b6

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x5c555416

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x2493b0eb

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x534b030

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x38bd0bbe

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x1095444b

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x654f3b1d

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x41cd2105

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x27e18662

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x797ab239

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x1bb4b896    # -1.499934E22f

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x3d816250

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x309d5e0e

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x5b8d2646

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x3777c60

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x3e38495d

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x7f1524c3

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x69cb7492

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x47848a0b

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x5692b285

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x95bbf00

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, -0x52e6b763

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x1462b174

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x23820e00

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x58428d2a

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0xc55f5ea

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x1dadf43e

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x233f7061

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x3372f092

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x726c81bf

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x29a0130f

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x6c223bdb

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x7cde3759

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x34118ba0    # -3.125472E7f

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x4085f2a7

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x3188cd92

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x59f87f7c

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x19f8509e

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x171027ab

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x61d99735

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x56965856

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x3af3f93e

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x5a04abfc

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x7ff43524

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x61bb85d2

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x3cbacb7c

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x22a98fb

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xe1e9ec9

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x248c242d

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x105588cd

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x675fda79

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x1c98bcc0

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x3a3bcb9b

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x713e38d8

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x3d28f89e

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0xe9200e0

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x153e21e7

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x704fc2b6

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x191c60d5

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x247c5209

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS1:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x16c2a598

    aput v1, v0, v3

    const v1, -0x6b7ebf09

    aput v1, v0, v4

    const v1, -0x9b3d9e4

    aput v1, v0, v5

    const v1, -0x6b96d6cc

    aput v1, v0, v6

    const v1, 0x411520f7

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7602d4f7

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x430b94d2

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x2b5dff98

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x2bf7db8f

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x3320f46a

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x43b7d4b7

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x500061af    # 8.6155418E9f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x1e39f62e

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x68dbbaba

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x14214f74

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x407477c0

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x4d95fc1d    # 3.1454096E8f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x694a6e51

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x70f4ddd3

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x66a02f45

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x4043f614

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x3bd9785

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7fac6dd0

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x31cb8504

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x6914d84d

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x55fd3941

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x25dab81a

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x5435f566

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x28507825

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x530429f4

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0xa2c86da

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x16499205

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x68dc1462

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x28b79700

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x680ec0a4

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x27a18dee

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x4f3ffea2

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x17785274

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x4a731ffa

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7af4d6b6

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x5531e184

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x2cc8a014

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x31875c67

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x406b2a42

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x20fe9e35

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x260c7a47

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x11c62855

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x3b124e8b

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x1dc9faf7

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x4b6d1856    # 1.5538262E7f

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x26a36631

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x151c684e

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x3a6efa74    # 9.1163E-4f

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x22a4bcce

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x6841e7f7

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x3587df05

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x4f50ab2

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x27014c69

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x454056ac

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x45b76ad9

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x55533a3a

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x20838d87

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x1945649

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x2f696ab5

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x55a867bc

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x5eea65a8

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x3356d69d    # -8.8689432E7f

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x661e24cd

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x59d5b5aa

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x3f3125f9

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x5ef47e1c

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x6fd6ce84

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x20717fe

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x4272f70

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x7f44eaa4    # -1.71809E-38f

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x5282ce3

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x6a3eeab8

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x1b3992de

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x48c1133f

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x38f07924

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x7f9c9ee

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x41041f0f

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x404779a4

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x5d886e17

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x325f51eb

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x2a643f2f

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0xd433e71

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x41113564

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x257b7834

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x602a9c60

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x2007175d

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x1f636c1b

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0xe12b4c2

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x2e1329e

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x5099b02f

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x352e7eeb    # -6865034.5f

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x6b2395e0

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x333e92e1

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x3b240b62

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x114146de

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x7a4d5df2

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x1945f267

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x218df374

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x2da2f728

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x2fed87bb

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x6a486b03

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x647d0862

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, -0x18330a10

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x5449a36f

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x7882b706

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x3c6202d9

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0xcc172e2

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xa476341

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x66d1008c

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x3a6f6eab

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0xb0702c9

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x57ed23a0

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x5e142208

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, -0x66e41eb4

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x249194f3

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x3984aaf0

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x6d672c37

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x2765d43b

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, -0x232f17fc

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, -0xed6f239

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x33ff005d    # -3.3816204E7f

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x4ac6f06e

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x690fed0b

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x667b9ffb

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x31248264

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x5f6e30f5

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x26eaa15d

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x44ecd078

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x515bad24

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x7b9479bf

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x763bd6eb

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x37392eb3

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x33eea687    # -3.81025E7f

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x7fd91d69

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, -0xbd1ced3

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x6842ada7

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x3995d4c5

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x12754ccc

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x782ef11c

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x6a124237

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x486dae19

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x6a1bbe6

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x4bfb6350    # 3.294992E7f

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x1a6b1018

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x11caedfa

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x3d25bdd8

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x1d1e3c37

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x44421659

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0xa121386

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x26f31392

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x2a5415d6

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x64af674e

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x257957a1

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x41401678

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x64e4c3fe

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x62437fa9

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0xf083f7a

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x60787bf8

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x6003604d

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x2e027cba

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x9c7e050

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x7745ae04

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x28c90334

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x7cbd94cd

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0xfe1548f

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x4f7fbe79

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x3c005e5f    # 0.007835f

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x77a057be

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x421751dc

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x55464299

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x40a7d19f

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x4e58f48f    # 9.0997651E8f

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0xd22025e

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0xb8b10c8

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x7876423e

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x5366f9c3

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x374c718c

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x4b8a0dab

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x46fcd9b9

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x7aeb2661

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x74e2207c

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x7b95f187

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x6ea06a1e

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x466e598e

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x20b45770

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x732aaa6f

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x36fd21b4

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x46f4531f

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x447dfa30

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x11a86248

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x7574a99e

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x4880e64a

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x1f5623f7

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x662d09a1

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x3bcdb9cd

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x17a5e0fe

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x9f0be8c

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x4a99a025    # 5034002.5f

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x1d6efe10

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x1ab93d1d

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0xba5a4df

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x5e790df1

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x2868f169

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x2348257d

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x573906fe

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x5e1d3165

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x4fcd7f52

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x50115e01    # 9.7554278E9f

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, -0x58f97c06

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x5ffd4a3c

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0xde6d027

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x650773d9

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x773f8641

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x3c9fb3fa

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x61a806b5

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0xfe885d8

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x3f0a7920

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x6058aa

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x30dc7d62

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x11e69ed7

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x2338ea63

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x53c2dd94

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x3d3de9cc

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x443411aa

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x6f434922

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x1403825f

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x31a6e28a

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x6f05e409

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x4b7c0188    # 1.6515464E7f

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x39720a3d

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x7c927c24

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x791c8da1

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x724d9db9

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x1ac15bb4

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x2c614704

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x12abaa88

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x8fca5b5

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x27c2832d

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x4dad0fc4    # 3.62936448E8f

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x1e50ef5e

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x4e9e1908

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x5d7aeb27

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x6c51133c

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x6fd5c7e7

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x56e14ec4

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x362abfce

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x223937c9

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x2865cdcc

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x6d9c7dee

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x670efa8e

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x406000e0    # 3.5000534f

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS2:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x3a39ce37

    aput v1, v0, v3

    const v1, -0x2c050a31

    aput v1, v0, v4

    const v1, -0x543d88c9

    aput v1, v0, v5

    const v1, 0x5ac52d1b

    aput v1, v0, v6

    const v1, 0x5cb0679e

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x4fa33742

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x2c7dd8c0

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x66436442

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x2aee7163    # -1.00026066E13f

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x40f08ceb

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x29d2e382

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x38ff3b85

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x4873e495

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x21a19045

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x4d914e42

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x6a366eb4

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x5748ab2f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x436b9187

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x395c892e

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x6549c2c8

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x530ff8ee

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x468dde7d

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x2a8cf5e3

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x4cd04dc6    # 1.09211184E8f

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x2939bbdb

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x5645b9b0

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x536ad918

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x41a11cfc

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x5e052a10

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x6a2d519a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x63ef8ce2

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x657911de

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x3f763d48

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x43242ef6

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x5ae1fc56

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x630d2f5c

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x7c3f9e46

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x641695b3

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x701aeab0

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x459ba42a

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x2826a2f9

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x58c5c51f

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x4ba99586    # 2.2227724E7f

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x10aa9d17

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x38d0102d

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x8ad0826

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x3f046f69

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x77fa0a59

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, -0x7f1b56eb    # -2.0999148E-38f

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x784f79ff

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x64f61953

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x3b3ee593

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x166f02a6

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x61cb2869

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x2cf0b7d9

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x22b8b51

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x692a53c6

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x17da67d

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x2e30c12a

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x7c7d2d28

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x1f9f25cf

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x520d4765

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x5ad6b472

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x5a88f54c

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x1fd6538f

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x1fe65a1a

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x47b0acfd

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x126c0565

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x172c3b73    # -8.0003604E24f

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x283b57cc

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x72a99d7

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x79132e28

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x785f0191

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x128a9fab

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x869f1bc

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x1c2ca174

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x15056dd4

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x770b9246

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x3a16125

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x564f0bd

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x3c1461eb

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x3c9057a2

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x68d8e514

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x56c5f8d6

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x1b3f6d9b

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x1e6321f5

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0xa639905

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x26dcf319

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x7533d928

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x4eaa020b

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x3563482

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x7545c345

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x28517711

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x3df52608

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x5433ae99

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x33526da1    # -9.1001592E7f

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x4de81751    # 4.86730272E8f

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x3830dc8e

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x379d5862

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x6cdf066f

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x15856f3e

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x4c18432

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x5121ce64

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x774fbe32

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x57491c82

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x3cd6c2ba

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x48de5369

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x6413e680

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x5d51f7f0

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x22924ddc

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x69852dfd

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x9072166

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x4c65b9f6

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x6445c0dd

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x586cdecf

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x1c20c8ae

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x5bbef7dd

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x1b588d40

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, -0x332dfe81

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x6bb4e3bb

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x225d9582

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x3a59ff45

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x3e350a44

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, -0x434b322b

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x72eacea8

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x59b7b45

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x7299ed52

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x40c390b9

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x2d641b9d

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x542f5d9e

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x513d88e5

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x9b19c90

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x740e0d8d

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x18a4eca9

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x78de98f

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x50ac82a3

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x4040cb08

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x4eb4e2cc    # 1.51738112E9f

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x34d2466a

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x115af84

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x1e4ffbd8

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x6a67c5e3

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x6b89fb4

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x31915fb8    # -1.0008704E9f

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x6f3f3b82

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x3520ab82

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x11a1d4b

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x277227f8

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x611560b1

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x186cc024

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x44c586d5

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x344525bd

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x5f77c61f

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x51ce794b

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x2f32c9b7

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x5fe04537

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x1fe33782

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x43382e0a

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x30feee3d

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, -0x5e175539

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x1a908749

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x2bb04266

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x2f252135

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, -0x2af525c8

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x339c32a

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x396ec999

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x7206ce84

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x1f4ed4b1

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x861a649

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x43f5bb3a

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0xd2ae601

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x27d9459c

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x4068ddd4

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x15e6fc2a

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xf91fc71

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x646beadb

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x51a6c9f

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x31496315

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x3d579ba7

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x12baa8d1

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x493ef8a2

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x1cfa95f4

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x10d25065

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x34fc5bbe    # -8627266.0f

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x1f1391f2

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x1698db3b

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x4c98a0be    # 8.0020976E7f

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x3278e964

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x60e06ace

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x1f2c6d21

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x2c5fcbd5    # -1.37614E12f

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x768e0de2

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0x1b0a7441

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x4ba3348c    # 2.139164E7f

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x3a418ee0

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x3c89cd28

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x20ca6073

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x6466d0d2

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x19f490b9

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0xfe3f11d

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x1ab325ac

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x1edad891

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x319d8631

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x32c18191

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x1618b166

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2d3e2fb

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x7b702d3b

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x904dd67

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0xadc0ca9

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, -0x59cd89dd

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x6c57cacf

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x56cccd02

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x530f7e9e

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x5a75ebb5

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x6e163697

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x772d8c34

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x21699d6e

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, -0x7e46b630

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x4c50901b    # 5.4673516E7f

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x71c65614

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x19393843

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x327a140a

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x45e1d006

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x3c0d8466

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x3655ac03

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x62a80f00

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x44da401e

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x35bdd2f6

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x71126905

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x4dfbfdde

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x49343084

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x328963d5    # -2.5858936E8f

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x53113ec0

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x1640e3d3

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x38abbd60

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x2547adf0

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x45c7df64

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x8b9318a

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x77afa1c5

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x20756060

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x7a3401b2

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x75177228

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x7aaaf9b0

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x4cf9aa7e    # 1.3089688E8f

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x1948c25c

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x2fb8a8c

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x1c36ae4

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x29141e07

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x6f2b0797

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x59a32160

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x3f09252d

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x3df71961

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x48b19ece

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x31881da5

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x578fdfe3

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x3ac372e6

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS3:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->encrypting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->workingKey:[B

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S0:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S1:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S2:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S3:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    return-void
.end method

.method private Bits32ToBytes(I[BI)V
    .registers 6

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    return-void
.end method

.method private BytesTo32bits([BI)I
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

.method private F(I)I
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S0:[I

    ushr-int/lit8 v1, p1, 0x18

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S1:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S2:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S3:[I

    and-int/lit16 v2, p1, 0xff

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .registers 12

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->BytesTo32bits([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->BytesTo32bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    const/16 v3, 0x11

    aget v2, v2, v3

    xor-int/2addr v2, v0

    const/16 v0, 0x10

    :goto_14
    if-gtz v0, :cond_24

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    aget v0, v0, v6

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->Bits32ToBytes(I[BI)V

    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v2, p3, v0}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->Bits32ToBytes(I[BI)V

    return-void

    :cond_24
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->F(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->F(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    xor-int/2addr v3, v4

    xor-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x2

    goto :goto_14
.end method

.method private encryptBlock([BI[BI)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->BytesTo32bits([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->BytesTo32bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v2, v0

    const/4 v0, 0x1

    :goto_11
    const/16 v3, 0x10

    if-lt v0, v3, :cond_25

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    const/16 v3, 0x11

    aget v0, v0, v3

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->Bits32ToBytes(I[BI)V

    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v2, p3, v0}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->Bits32ToBytes(I[BI)V

    return-void

    :cond_25
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->F(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->F(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    xor-int/2addr v3, v4

    xor-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_11
.end method

.method private processTable(II[I)V
    .registers 13

    const/4 v4, 0x0

    array-length v5, p3

    move v3, v4

    move v1, p2

    :goto_4
    if-lt v3, v5, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    aget v0, v0, v4

    xor-int v2, p1, v0

    const/4 v0, 0x1

    :goto_e
    const/16 v6, 0x10

    if-lt v0, v6, :cond_26

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    const/16 v6, 0x11

    aget v0, v0, v6

    xor-int/2addr v0, v1

    aput v0, p3, v3

    add-int/lit8 v0, v3, 0x1

    aput v2, p3, v0

    aget p1, p3, v3

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    move v1, v2

    goto :goto_4

    :cond_26
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->F(I)I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    aget v7, v7, v0

    xor-int/2addr v6, v7

    xor-int/2addr v1, v6

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->F(I)I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    add-int/lit8 v8, v0, 0x1

    aget v7, v7, v8

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_e
.end method

.method private setKey([B)V
    .registers 13

    const/16 v9, 0x12

    const/16 v8, 0xff

    const/16 v7, 0xfe

    const/16 v3, 0x100

    const/4 v1, 0x0

    sget-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS0:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S0:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS1:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S1:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS2:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S2:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KS3:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S3:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->KP:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p1

    move v4, v1

    move v0, v1

    :goto_2f
    if-lt v4, v9, :cond_6f

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    invoke-direct {p0, v1, v1, v0}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->processTable(II[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S0:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->processTable(II[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S0:[I

    aget v0, v0, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S0:[I

    aget v1, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S1:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->processTable(II[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S1:[I

    aget v0, v0, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S1:[I

    aget v1, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S2:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->processTable(II[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S2:[I

    aget v0, v0, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S2:[I

    aget v1, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->S3:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->processTable(II[I)V

    return-void

    :cond_6f
    move v2, v1

    move v3, v0

    move v0, v1

    :goto_72
    const/4 v6, 0x4

    if-lt v2, v6, :cond_81

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->P:[I

    aget v6, v2, v4

    xor-int/2addr v0, v6

    aput v0, v2, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_2f

    :cond_81
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v6

    if-ge v0, v5, :cond_92

    :goto_8c
    add-int/lit8 v2, v2, 0x1

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_72

    :cond_92
    move v0, v1

    goto :goto_8c
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Blowfish"

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

    const-string/jumbo v2, "invalid parameter passed to Blowfish init - "

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
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->encrypting:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->setKey([B)V

    return-void
.end method

.method public final processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->workingKey:[B

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_21

    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_2a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->encrypting:Z

    if-nez v0, :cond_33

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->decryptBlock([BI[BI)V

    :goto_15
    const/16 v0, 0x8

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Blowfish not initialised"

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
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;->encryptBlock([BI[BI)V

    goto :goto_15
.end method

.method public reset()V
    .registers 1

    return-void
.end method
