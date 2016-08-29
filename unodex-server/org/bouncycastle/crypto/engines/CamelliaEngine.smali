.class public Lorg/bouncycastle/crypto/engines/CamelliaEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final MASK8:I = 0xff

.field private static final SBOX1_1110:[I

.field private static final SBOX2_0222:[I

.field private static final SBOX3_3033:[I

.field private static final SBOX4_4404:[I

.field private static final SIGMA:[I


# instance fields
.field private _keyIs128:Z

.field private initialised:Z

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

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x70707000

    aput v1, v0, v3

    const v1, -0x7d7d7e00

    aput v1, v0, v4

    const v1, 0x2c2c2c00

    aput v1, v0, v5

    const v1, -0x13131400

    aput v1, v0, v6

    const v1, -0x4c4c4d00

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x27272700

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x3f3f4000    # -6.0234375f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x1a1a1b00

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x1b1b1c00

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x7a7a7b00

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x57575700

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x35353500

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x15151600

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xc0c0c00

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x51515200

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x41414100

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x23232300

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x10101100

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x6b6b6b00

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x6c6c6d00

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x45454500    # 3156.3125f

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x19191900

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x5a5a5b00

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x21212100

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x12121300

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0xe0e0e00

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x4f4f4f00

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x4e4e4e00    # 8.6530458E8f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x1d1d1d00

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x65656500

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, -0x6d6d6e00

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x42424300

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x79797a00

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x47474800

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x50505100

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x70707100

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x7c7c7c00

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x14141500

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x1f1f1f00

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x31313200

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x3e3e3e00

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x30303000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x23232400

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x5f5f5f00

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x5e5e5e00

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x3a3a3b00    # -6328.625f

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0xb0b0b00

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x1a1a1a00

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, -0x59595a00

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x1e1e1f00

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x39393900

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x35353600    # -6644992.0f

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x2a2a2b00

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x47474700    # 51015.0f

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x5d5d5d00

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x3d3d3d00

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x26262700

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x1010100

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x5a5a5a00

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x29292a00

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x51515100

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x56565600

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x6c6c6c00

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x4d4d4d00    # 2.15273472E8f

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x74747500    # -5.3749996E-32f

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xd0d0d00

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x65656600

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x66666600

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x4040500

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x33333400

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x4f4f5000

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x2d2d2d00

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x74747400

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x12121200

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x2b2b2b00

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x20202000

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0xf0f1000

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x4e4e4f00

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, -0x7b7b7c00

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x66666700

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x20202100

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x4c4c4c00    # 5.35552E7f

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x34343500    # -2.6711552E7f

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x3d3d3e00

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x34343400

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x7e7e7e00

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x76767600

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x5050500

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x6d6d6d00

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x48484900

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x56565700

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x31313100

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x2e2e2f00

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x17171700

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x4040400

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x28282900

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x14141400

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x58585800

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x3a3a3a00

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x61616100

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x21212200

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x1b1b1b00

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x11111100

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x1c1c1c00

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x32323200

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0xf0f0f00

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x63636400

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x16161600

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x53535300

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x18181800

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0xd0d0e00

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x22222200

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x1010200

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x44444400    # 785.0625f

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x30303100

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x4d4d4e00

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x3c3c3d00

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x4a4a4b00

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x7a7a7a00

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x6e6e6f00

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x24242400

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x8080800

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x17171800

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, -0x57575800

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x60606000

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x3030400

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x69696900

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x50505000

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x55555600

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x2f2f3000

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x5f5f6000

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x7d7d7d00

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x5e5e5f00

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x76767700

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x62626200

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x68686900

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x54545400

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x5b5b5b00

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x1e1e1e00

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, -0x6a6a6b00

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x1f1f2000

    aput v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, -0x100

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x64646400

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x2d2d2e00

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x10101000

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x3b3b3c00    # -1574.125f

    aput v2, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x93

    const v2, 0x48484800    # 205088.0f

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0x5c5c5d00

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x8080900

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0x75757500

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x24242500

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x75757600

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x3030300

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x19191a00

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x25252600

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x9090900

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x3f3f3f00

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x22222300

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, -0x6b6b6c00

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x78787900

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x5c5c5c00

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x7c7c7d00

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x2020200

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x32323300    # -4.3159552E8f

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x4a4a4a00    # 3314304.0f

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x6f6f7000

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x33333300

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x73737300

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x67676700

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x9090a00

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0xc0c0d00

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x62626300

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x7f7f7f00

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x40404100

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x1d1d1e00

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x52525200

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x64646500

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x27272800

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x26262600

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x37373800    # -411200.0f

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x37373700

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x39393a00    # -25443.0f

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x3b3b3b00

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x7e7e7f00

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x69696a00

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x6f6f6f00

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x4b4b4b00

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x13131300

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x41414200

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x63636300

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x2e2e2e00

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x16161700

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x79797900

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x58585900

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x73737400

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x60606100

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x6e6e6e00

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x43434400

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x71717200

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x29292900    # 3.75611E-14f

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0xa0a0b00

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x6060700

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x49494a00

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x2f2f2f00

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2020300

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x4b4b4c00

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x59595900

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x78787800

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, -0x67676800

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x6060600

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x6a6a6a00

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x18181900

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x46464600    # 12689.5f

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x71717100

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x45454600

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x2b2b2c00

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x25252500

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x54545500

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x42424200

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x77777800

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x5d5d5e00

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0x72727300

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x5050600

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x72727200

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x7070700

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x46464700

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x55555500

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x7070800

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x11111200

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x53535400

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0xa0a0a00

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x36363600

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x49494900    # 824464.0f

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x2a2a2a00

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x68686800

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x3c3c3c00

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x38383800

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, -0xe0e0f00

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x5b5b5c00

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0x40404000    # 3.0039062f

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x28282800

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x2c2c2d00

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x7b7b7b00

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x44444500

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x36363700    # -1653024.0f

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x43434300

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x3e3e3f00

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x15151500

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x1c1c1d00

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x52525300

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0xb0b0c00

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x77777700

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x38383900    # -102286.0f

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x7f7f8000

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x61616200

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x70700070

    aput v1, v0, v3

    const v1, 0x2c2c002c

    aput v1, v0, v4

    const v1, -0x4c4cff4d

    aput v1, v0, v5

    const v1, -0x3f3fff40    # -6.0000916f

    aput v1, v0, v6

    const v1, -0x1b1bff1c

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x57570057

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x1515ff16

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x5151ff52

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x23230023

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x6b6b006b

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x45450045

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x5a5aff5b

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x1212ff13

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x4f4f004f

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x1d1d001d

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x6d6dff6e

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x7979ff7a

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x5050ff51

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7c7c007c

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x1f1f001f

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x3e3e003e

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x2323ff24

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x5e5e005e    # 3.99922231E18f

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0xb0b000b

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x5959ff5a

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x39390039

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x2a2aff2b

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x5d5d005d

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x2626ff27

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x5a5a005a

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x51510051

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x6c6c006c

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x7474ff75

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x6565ff66

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x404ff05

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x4f4fff50

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x74740074

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x2b2b002b

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0xf0fff10

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x7b7bff7c

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x2020ff21

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x3434ff35    # -2.6608022E7f

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x34340034

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x76760076

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x6d6d006d

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x5656ff57

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x2e2eff2f

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x4040004

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x14140014

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x3a3a003a

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x2121ff22

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x11110011

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x32320032

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x6363ff64

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x53530053

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0xd0dff0e

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x101ff02

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x3030ff31

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x3c3cff3d    # -390.00595f

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x7a7a007a

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x24240024

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x1717ff18

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x60600060

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x69690069

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x5555ff56

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x5f5fff60

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0x5e5eff5f

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x62620062

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x54540054

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x1e1e001e

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x1f1fff20

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x64640064

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x10100010

    aput v2, v0, v1

    const/16 v1, 0x49

    aput v3, v0, v1

    const/16 v1, 0x4a

    const v2, -0x5c5cff5d

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x75750075

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x7575ff76

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x1919ff1a

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x9090009

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x2222ff23

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x7878ff79

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x7c7cff7d

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x3232ff33    # -4.2992272E8f

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x6f6fff70

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x73730073

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x909ff0a

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x6262ff63

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x4040ff41

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x52520052

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x2727ff28    # -1.89998508E15f

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x3737ff38    # -409606.25f

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x3939ff3a

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x7e7eff7f

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x6f6f006f

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x13130013

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x63630063

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, -0x1616ff17

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x5858ff59

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x6060ff61

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x4343ff44

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x29290029

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x606ff07

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x2f2f002f

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x4b4bff4c

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x78780078

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x6060006

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x1818ff19

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x71710071

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x2b2bff2c

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x5454ff55

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x7777ff78

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x7272ff73

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x72720072

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x4646ff47

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x707ff08

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x5353ff54

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x36360036

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x2a2a002a

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x3c3c003c

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0xe0eff0f

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x40400040    # 3.0000153f

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x2c2cff2d

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x4444ff45

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x43430043

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x15150015

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x5252ff53

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x77770077    # 5.009792E33f

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x7f7fff80

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x7d7dff7e

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x1313ff14

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x27270027

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x1a1aff1b

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x7a7aff7b

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x35350035

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xc0c000c

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x41410041

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x1010ff11

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x6c6cff6d

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x19190019

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x21210021

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xe0e000e

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0x4e4e004e    # 8.6403162E8f

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x65650065

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x4242ff43

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x4747ff48

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x7070ff71

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x1414ff15

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x3131ff32

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x30300030

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x5f5f005f

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x3a3aff3b

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x1a1a001a

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x1e1eff1f

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x3535ff36    # -6619237.0f

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x47470047

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x3d3d003d

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x1010001

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x2929ff2a

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x56560056

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x4d4d004d    # 2.14959312E8f

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xd0d000d

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x66660066

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x3333ff34

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x2d2d002d

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x12120012

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x20200020

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x4e4eff4f

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x6666ff67

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x4c4c004c    # 5.347768E7f

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x3d3dff3e

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0x7e7e007e

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x5050005

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x4848ff49

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x31310031

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x17170017

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x2828ff29

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x58580058

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x61610061

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x1b1b001b

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x1c1c001c

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0xf0f000f

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x16160016

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x18180018

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x22220022

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x44440044

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x4d4dff4e

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x4a4aff4b

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x6e6eff6f

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x8080008

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x5757ff58

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x303ff04

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x50500050

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x2f2fff30

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x7d7d007d

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x7676ff77

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x6868ff69

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x5b5b005b

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x6a6aff6b

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0xff01

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x2d2dff2e

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x3b3bff3c

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x48480048    # 204801.12f

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x808ff09

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x2424ff25

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x3030003

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2525ff26

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x3f3f003f

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x6b6bff6c

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x5c5c005c

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x2020002

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x4a4a004a    # 3309586.5f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x33330033

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x67670067

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, -0xc0cff0d

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x7f7f007f

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, -0x1d1dff1e

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x6464ff65

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x26260026

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x37370037    # 1.09077E-5f

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x3b3b003b

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x6969ff6a

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x4b4b004b    # 1.3303883E7f

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0x4141ff42

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x2e2e002e

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x79790079

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x7373ff74

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x6e6e006e

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x7171ff72

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0xa0aff0b

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x4949ff4a

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x202ff03

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x59590059

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x6767ff68

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x6a6a006a

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x46460046

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x4545ff46

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x25250025

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x42420042

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, -0x5d5dff5e

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x505ff06

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0x7070007

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x55550055

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x1111ff12

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xa0a000a

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x49490049

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x68680068

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x38380038

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x5b5bff5c

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x28280028

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0x7b7b007b

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x3636ff37

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x3e3eff3f

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x1c1cff1d

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0xb0bff0c

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x3838ff39

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x6161ff62

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0xe0e0e0

    aput v1, v0, v3

    const v1, 0x50505

    aput v1, v0, v4

    const v1, 0x585858

    aput v1, v0, v5

    const v1, 0xd9d9d9    # 2.0006452E-38f

    aput v1, v0, v6

    const v1, 0x676767

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x4e4e4e

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x818181

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0xcbcbcb

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0xc9c9c9

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0xb0b0b

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0xaeaeae

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x6a6a6a

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xd5d5d5

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x181818

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x5d5d5d

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x828282

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x464646

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0xdfdfdf

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0xd6d6d6

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x272727

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x8a8a8a

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x323232

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x4b4b4b

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x424242

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0xdbdbdb

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x1c1c1c

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x9e9e9e

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x9c9c9c

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x3a3a3a

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0xcacaca

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x252525

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7b7b7b

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0xd0d0d

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x717171

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x5f5f5f

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x1f1f1f

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xf8f8f8

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0xd7d7d7

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x3e3e3e

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x9d9d9d

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x7c7c7c

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x606060

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xb9b9b9

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0xbebebe

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0xbcbcbc

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x8b8b8b

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x161616

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x343434

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x4d4d4d

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0xc3c3c3

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x727272

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x959595

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xababab

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x8e8e8e

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0xbababa

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x7a7a7a

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0xb3b3b3

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x20202

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xb4b4b4

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0xadadad

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0xa2a2a2

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0xacacac

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xd8d8d8

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x9a9a9a

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x171717

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x1a1a1a

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x353535

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xcccccc

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xf7f7f7

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x999999

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x616161

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x5a5a5a

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0xe8e8e8

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x242424

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x565656

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x404040

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xe1e1e1

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x636363

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x90909

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x333333

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0xbfbfbf

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x989898

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x979797

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x858585

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x686868

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0xfcfcfc

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0xececec

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0xa0a0a

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0xdadada

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x6f6f6f

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x535353

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x626262

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0xa3a3a3

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x2e2e2e

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x80808

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xafafaf

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x282828

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xb0b0b0

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x747474

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0xc2c2c2

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0xbdbdbd

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x363636

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x222222

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x383838

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x646464

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x1e1e1e

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x393939

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x2c2c2c

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xa6a6a6

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x303030

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0xe5e5e5

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x444444

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xfdfdfd

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x888888

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x9f9f9f

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x656565

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x878787

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x6b6b6b

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xf4f4f4

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x232323

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x484848

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x101010

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xd1d1d1

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x515151

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xc0c0c0

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xf9f9f9

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xd2d2d2

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xa0a0a0

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x555555

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xa1a1a1

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x414141

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xfafafa

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x434343

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x131313

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xc4c4c4

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x2f2f2f

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xa8a8a8

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xb6b6b6

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x3c3c3c

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x2b2b2b

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xc1c1c1

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xffffff

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0xc8c8c8

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xa5a5a5

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x202020

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x898989

    aput v2, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x93

    const v2, 0x909090

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x474747

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xefefef

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xeaeaea

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xb7b7b7

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x151515

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x60606

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0xcdcdcd

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xb5b5b5

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x121212

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x7e7e7e

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xbbbbbb

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x292929

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xf0f0f

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xb8b8b8

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x70707

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x40404

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x9b9b9b

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x949494

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x212121

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x666666

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xe6e6e6

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xcecece

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xededed

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xe7e7e7

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x3b3b3b

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xfefefe

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x7f7f7f

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0xc5c5c5

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xa4a4a4

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x373737

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0xb1b1b1

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x4c4c4c

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x919191

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x6e6e6e

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x8d8d8d    # 1.2999584E-38f

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x767676

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x30303

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x2d2d2d

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0xdedede

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x969696

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x262626

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x7d7d7d

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0xc6c6c6

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x5c5c5c

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0xd3d3d3

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0xf2f2f2

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x4f4f4f

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x191919

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x3f3f3f

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0xdcdcdc

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x797979

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x1d1d1d

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x525252

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0xebebeb

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0xf3f3f3

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x6d6d6d

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x5e5e5e

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0xfbfbfb

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x696969

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0xb2b2b2

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0xf0f0f0

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x313131

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0xc0c0c

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0xd4d4d4

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0xcfcfcf

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x8c8c8c

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0xe2e2e2

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x757575

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0xa9a9a9

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x4a4a4a

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x575757

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x848484

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x111111

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x454545

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x1b1b1b

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0xf5f5f5

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0xe4e4e4

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0xe0e0e

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x737373

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0xaaaaaa

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0xf1f1f1

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xdddddd

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x595959

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x141414

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x6c6c6c

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x929292

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x545454

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0xd0d0d0

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x787878

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x707070

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0xe3e3e3

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x494949

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0x808080

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x505050

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0xa7a7a7

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xf6f6f6

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x777777

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x939393

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x868686

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x838383

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x2a2a2a

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0xc7c7c7

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x5b5b5b

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0xe9e9e9

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0xeeeeee

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x8f8f8f

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x10101

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x3d3d3d

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x38003838

    aput v1, v0, v3

    const v1, 0x41004141

    aput v1, v0, v4

    const v1, 0x16001616

    aput v1, v0, v5

    const v1, 0x76007676

    aput v1, v0, v6

    const v1, -0x26ff2627

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x6cff6c6d

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x60006060

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0xdff0d0e

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x72007272

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x3dff3d3e

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x54ff5455

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x65ff6566

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x75007575

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x6000606

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x57005757

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x5fff5f60

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x6eff6e6f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x8ff0809

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x4aff4a4b

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x36ff3637

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x5dff5d5e

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x73ff7374

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x2dff2d2e

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x6fff6f70

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x9ff090a

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7000707

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x58ff5859

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x27002727

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x71ff7172

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x4dff4d4e

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x49004949

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x21ff2122

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x43004343

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x5c005c5c

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x28ff2829

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x38ff3839

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x3e003e3e

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0xaff0a0b

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x70ff7071

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x67006767

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x1f001f1f

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x18001818

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x6e006e6e

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x50ff5051

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x2f002f2f

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x1dff1d1e

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x7aff7a7b

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0xd000d0d

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x53005353

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0xfff0f10

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x63ff6364

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x65006565

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x15ff1516

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x5cff5c5d

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x51ff5152

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x61ff6162

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x13ff1314

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x7fff7f80

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x2d002d2d

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x6b006b6b

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0x57ff5758

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x2b002b2b

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x36003636

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x59ff595a

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x3aff3a3b

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x79ff797a

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x4d004d4d    # 1.34534352E8f

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x33003333

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x2ff0203

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x66006666

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x58005858

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x69ff696a

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x3a003a3a

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x9000909

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x6aff6a6b

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x10001010

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x78007878

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x27ff2728

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x42004242

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x33ff3334    # -3.3764144E7f

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x10ff1011

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x26002626

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x1aff1a1b

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x61006161

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x1a001a1a

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x3f003f3f

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x3b003b3b

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x7dff7d7e

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x49ff494a

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x24ff2425

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x2bff2b2c

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x67ff6768

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x17ff1718

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x74ff7475

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x2000202

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x14ff1415

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0xa000a0a

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x2c002c2c

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x1d001d1d

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x4fff4f50

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x6f006f6f

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x72ff7273

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x77ff7778

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0xe000e0e

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x19001919

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, -0x78ff7879

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x4e004e4e    # 5.3815386E8f

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xb000b0b

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x56ff5657

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xc000c0c

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x79007979

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x11001111

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x7f007f7f

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x22002222

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x18ff1819

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x59005959

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x1eff1e1f

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x25ff2526

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x3d003d3d

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0x37ff3738

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x12001212

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x4000404

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x74007474

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x54005454

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x30003030

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x7e007e7e

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x4bff4b4c

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x28002828

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x55005555    # 8.8189992E12f

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x68006868

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x50005050

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x41ff4142

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x2fff2f30

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x3bff3b3c

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x31003131

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x34ff3435    # -8440779.0f

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x2a002a2a

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x52ff5253

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xf000f0f

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, -0x35ff3536

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x70007070    # 1.5900004E29f

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0xff0001

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x32003232

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x69006969

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x8000808

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x62006262

    aput v2, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x93

    const v2, 0x24002424

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0x2eff2e2f

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x4ff0405

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x45ff4546

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x12ff1213

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x45004545

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x7eff7e7f

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x73007373

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x6d006d6d

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x7bff7b7c

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x60ff6061

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x11ff1112

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x4a004a4a    # 2101906.5f

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x3cff3c3d

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x2e002e2e

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x3eff3e3f

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x1000101

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x19ff191a

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x25002525

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x48004848    # 131361.12f

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x66ff6667

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x46ff4647

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x4cff4c4d

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0x7b007b7b

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x6ff0607

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x31ff3132    # -5.402592E8f

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x40ff4041

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x20ff2021

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x71007171

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x29002929

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, -0x32ff3233

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x6c006c6c

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x13001313

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x64006464

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x64ff6465

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x63006363

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x62ff6263

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x3fff3f40

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x4b004b4b    # 8407883.0f

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, -0x48ff4849

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x5aff5a5b

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x76ff7677

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x5f005f5f

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x4eff4e4f

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x17001717

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0xbff0b0c

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x43ff4344

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x2cff2c2d

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x46004646

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x30ff3031

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x37003737

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x5e005e5e

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x47004747

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x6bff6b6c

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x5ff0506

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x3ff0304

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x5b005b5b

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x68ff6869

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x1ff0102

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x5a005a5a

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x53ff5354

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x3c003c3c

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x4c004c4c    # 3.363256E7f

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x3000303

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x35003535

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0xcff0c0d

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x23002323

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x47ff4748

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x5d005d5d

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x6a006a6a

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, -0x6dff6d6e

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x2aff2a2b

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x21002121

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x44004444

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x51005151

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, -0x39ff393a

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x7d007d7d

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x39003939

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x7cff7c7d

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x23ff2324

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x55ff5556

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x7c007c7c

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x77007777

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x56005656

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x5000505

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x1b001b1b

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, -0x5bff5b5c

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x15001515

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x34003434

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x1e001e1e

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x1c001c1c

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, -0x7ff0708

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x52005252

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0x20002020

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x14001414

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x16ff1617

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0x42ff4243

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x22ff2223

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x1bff1b1c

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x5eff5e5f    # -4.3582E-19f

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x1fff1f20

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x75ff7576

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0xeff0e0f

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x29ff292a

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x7a007a7a

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x44ff4445

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x1cff1c1d

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x40004040

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x4f004f4f

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

    const/16 v0, 0x60

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

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
    .registers 14

    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    aget v0, p1, v5

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    and-int/lit16 v2, v0, 0xff

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    xor-int/2addr v0, v1

    aget v1, p1, v6

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    and-int/lit16 v3, v1, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    ushr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget v1, v3, v1

    xor-int/2addr v1, v2

    aget v2, p1, v7

    xor-int v3, v0, v1

    xor-int/2addr v2, v3

    aput v2, p1, v7

    aget v2, p1, v8

    xor-int/2addr v1, v0

    invoke-static {v0, v9}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->rightRotate(II)I

    move-result v0

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    aput v0, p1, v8

    aget v0, p1, v7

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    and-int/lit16 v2, v0, 0xff

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    xor-int/2addr v0, v1

    aget v1, p1, v8

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX1_1110:[I

    and-int/lit16 v3, v1, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX4_4404:[I

    ushr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX3_3033:[I

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SBOX2_0222:[I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget v1, v3, v1

    xor-int/2addr v1, v2

    aget v2, p1, v5

    xor-int v3, v0, v1

    xor-int/2addr v2, v3

    aput v2, p1, v5

    aget v2, p1, v6

    xor-int/2addr v1, v0

    invoke-static {v0, v9}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->rightRotate(II)I

    move-result v0

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

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

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->leftRotate(II)I

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

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->leftRotate(II)I

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v3, v3, v5

    xor-int/2addr v2, v3

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v8

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v7

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    const/16 v0, 0x10

    return v0

    :cond_b7
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-direct {p0, v0, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v3, 0x8

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaFLs([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x24

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x28

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x2c

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v3, v3, v5

    xor-int/2addr v2, v3

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v8

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v2, v0, v6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v7

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->int2bytes(I[BI)V

    const/16 v0, 0x10

    return v0

    :cond_db
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->state:[I

    aget v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

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
    iput-boolean v9, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    invoke-direct {p0, p2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

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

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    move v0, v1

    :goto_4e
    if-lt v0, v8, :cond_1bc

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    invoke-direct {p0, v3, v0, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    if-nez v0, :cond_1c7

    move v0, v1

    :goto_5a
    if-lt v0, v8, :cond_32e

    sget-object v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->SIGMA:[I

    const/16 v5, 0x8

    invoke-direct {p0, v4, v0, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->camelliaF2([I[II)V

    if-nez p1, :cond_33b

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v1

    aput v5, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v5, 0x5

    aget v6, v2, v9

    aput v6, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v5, 0x6

    aget v6, v2, v10

    aput v6, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v5, 0x7

    aget v6, v2, v11

    aput v6, v0, v5

    const/16 v0, 0x2d

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x1c

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v5, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0xc

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x28

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x14

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x24

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x18

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v9

    aput v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v10

    aput v2, v0, v11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v11

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    aget v2, v3, v1

    aput v2, v0, v9

    const/16 v0, 0x31

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2e

    aget v3, v4, v1

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2f

    aget v3, v4, v9

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2c

    aget v3, v4, v10

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x2d

    aget v3, v4, v11

    aput v3, v0, v2

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x33

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v4, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    :goto_12e
    return-void

    :sswitch_12f
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    invoke-direct {p0, p2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v8

    const/4 v0, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

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
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    goto/16 :goto_45

    :sswitch_16f
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v1

    invoke-direct {p0, p2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v9

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v10

    const/16 v0, 0xc

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v11

    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v0

    aput v0, v2, v8

    const/4 v0, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    const/4 v0, 0x6

    const/16 v6, 0x18

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v2, v0

    const/4 v0, 0x7

    const/16 v6, 0x1c

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->bytes2int([BI)I

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v1

    aput v4, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x5

    aget v6, v2, v9

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x6

    aget v6, v2, v10

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    const/4 v4, 0x7

    aget v6, v2, v11

    aput v6, v0, v4

    const/16 v0, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x1c

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x14

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v2, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x10

    aget v6, v5, v1

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x11

    aget v6, v5, v9

    aput v6, v0, v4

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v4, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x8

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v1, v4, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x22

    aget v4, v3, v1

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x23

    aget v4, v3, v9

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x20

    aget v4, v3, v10

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x21

    aget v4, v3, v11

    aput v4, v0, v2

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x18

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v3, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x12

    aget v4, v5, v10

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x13

    aget v4, v5, v11

    aput v4, v0, v2

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0xc

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->decroldqo32(I[II[II)V

    const/16 v0, 0x11

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v3, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    goto/16 :goto_12e

    :cond_280
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v1

    aput v4, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v9

    aput v4, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v10

    aput v4, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v4, v2, v11

    aput v4, v0, v11

    const/16 v0, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v1, v4, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0xc

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v2, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x12

    aget v6, v5, v10

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x13

    aget v6, v5, v11

    aput v6, v0, v4

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v4, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x18

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x20

    invoke-static {v0, v2, v1, v4, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v1

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v9

    aput v2, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v10

    aput v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v3, v11

    aput v2, v0, v11

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x8

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v3, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    invoke-static {v0, v3, v1, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x10

    aget v4, v5, v1

    aput v4, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v2, 0x11

    aget v4, v5, v9

    aput v4, v0, v2

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x14

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v4, 0x1c

    invoke-static {v0, v3, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    const/16 v0, 0x11

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v3, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v1

    aput v5, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v9

    aput v5, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v10

    aput v5, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    aget v5, v2, v11

    aput v5, v0, v11

    const/16 v0, 0x2d

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x10

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v1, v5, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x20

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x2c

    invoke-static {v0, v2, v1, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    invoke-static {v0, v2, v8, v5, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    invoke-static {v0, v2, v8, v5, v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x18

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x22

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v6, 0x24

    invoke-static {v0, v2, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    const/16 v0, 0xf

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x8

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x14

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0x8

    aget v5, v3, v9

    aput v5, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0x9

    aget v5, v3, v10

    aput v5, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0xa

    aget v5, v3, v11

    aput v5, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->ke:[I

    const/16 v2, 0xb

    aget v5, v3, v1

    aput v5, v0, v2

    const/16 v0, 0x31

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v5, 0x28

    invoke-static {v0, v3, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v1

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v9

    aput v2, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v10

    aput v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    aget v2, v4, v11

    aput v2, v0, v11

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x1e

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-static {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldq(I[II[II)V

    const/16 v0, 0x33

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->kw:[I

    invoke-static {v0, v4, v1, v2, v8}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->roldqo32(I[II[II)V

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_11

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->setKey(Z[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

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
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->initialised:Z

    if-eqz v0, :cond_17

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_20

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_29

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->_keyIs128:Z

    if-nez v0, :cond_32

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->processBlock192or256([BI[BI)I

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Camellia engine not initialised"

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
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;->processBlock128([BI[BI)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method
