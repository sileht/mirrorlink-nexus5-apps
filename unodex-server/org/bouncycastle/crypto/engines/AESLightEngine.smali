.class public Lorg/bouncycastle/crypto/engines/AESLightEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B

.field private static final Si:[B

.field private static final m1:I = -0x7f7f7f80

.field private static final m2:I = 0x7f7f7f7f

.field private static final m3:I = 0x1b

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    aput-byte v1, v0, v3

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, -0xe

    aput-byte v1, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v1, v0, v6

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, -0x36

    aput-byte v1, v0, v7

    const/16 v1, 0x11

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v5, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    aput-byte v4, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    aput-byte v7, v0, v1

    const/16 v1, 0x7d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    aput-byte v6, v0, v1

    const/16 v1, 0xc0

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v1, v0, v3

    const/16 v1, 0x6a

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v1, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, -0x41

    aput-byte v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    aput-byte v1, v0, v7

    const/16 v1, 0x11

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v6, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v4, v0, v1

    const/16 v1, 0x78

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    aput-byte v7, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    aput-byte v5, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    const/16 v0, 0x1e

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    aput v4, v0, v3

    aput v5, v0, v4

    const/4 v1, 0x3

    aput v6, v0, v1

    aput v7, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x6c

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xd8

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xab

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x9a

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x5e

    aput v1, v0, v7

    const/16 v1, 0x11

    const/16 v2, 0xbc

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xd4

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x7d

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xfa

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xef

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xc5

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x91

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    return-void
.end method

.method private static FFmulX(I)I
    .registers 3

    const v0, 0x7f7f7f7f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([[I)V
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v1, p1, v1

    aget v1, v1, v8

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v1, p1, v1

    aget v1, v1, v9

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v1, p1, v1

    aget v1, v1, v10

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v1, p1, v1

    aget v1, v1, v11

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-gt v0, v9, :cond_1ff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v1, v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v1

    aget-object v2, p1, v0

    aget v2, v2, v8

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    xor-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v2

    aget-object v3, p1, v0

    aget v3, v3, v9

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v3, v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v3

    aget-object v4, p1, v0

    aget v4, v4, v10

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    aget-object v0, p1, v0

    aget v0, v0, v11

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    aget-object v5, p1, v8

    aget v5, v5, v8

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v5, v2, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v3, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    aget-object v5, p1, v8

    aget v5, v5, v9

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v5, v3, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    aget-object v5, p1, v8

    aget v5, v5, v10

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v0, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    aget-object v1, p1, v8

    aget v1, v1, v11

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    return-void

    :cond_1ff
    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v1, v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v1

    aget-object v2, p1, v0

    aget v2, v2, v8

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    xor-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v2

    aget-object v3, p1, v0

    aget v3, v3, v9

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v3, v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v3

    aget-object v4, p1, v0

    aget v4, v4, v10

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    aget-object v0, p1, v0

    aget v0, v0, v11

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v3, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v2, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v4, v6

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    aget-object v6, p1, v5

    aget v6, v6, v8

    xor-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v6, v2, 0xff

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v3, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v4, v6

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    aget-object v6, p1, v5

    aget v6, v6, v9

    xor-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v6, v3, 0xff

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v7, v0, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v4, v6

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    aget-object v6, p1, v5

    aget v6, v6, v10

    xor-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v0, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v1

    add-int/lit8 v0, v5, -0x1

    aget-object v2, p1, v5

    aget v2, v2, v11

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_34
.end method

.method private encryptBlock([[I)V
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    aget-object v2, p1, v9

    aget v2, v2, v9

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    aget-object v2, p1, v9

    aget v2, v2, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    aget-object v2, p1, v9

    aget v2, v2, v10

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    aget-object v2, p1, v9

    aget v2, v2, v11

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    move v0, v1

    :goto_29
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1fa

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    xor-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v2

    aget-object v3, p1, v0

    aget v3, v3, v9

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v3, v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v3

    aget-object v4, p1, v0

    aget v4, v4, v1

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v4

    aget-object v5, p1, v0

    aget v5, v5, v10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v5, v6

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    aget-object v0, p1, v0

    aget v0, v0, v11

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v0, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, p1, v6

    aget v7, v7, v9

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, p1, v6

    aget v1, v7, v1

    xor-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v5, v4, 0xff

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v1, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v1, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v7, v3, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v5, v5, v7

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v1, v5

    aget-object v5, p1, v6

    aget v5, v5, v10

    xor-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, v3, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, v4, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    aget-object v1, p1, v6

    aget v1, v1, v11

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    return-void

    :cond_1fa
    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    xor-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v2

    aget-object v3, p1, v0

    aget v3, v3, v9

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v3, v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v3

    aget-object v4, p1, v0

    aget v4, v4, v1

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v4

    aget-object v5, p1, v0

    aget v5, v5, v10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v5, v6

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    aget-object v0, p1, v0

    aget v0, v0, v11

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v0, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v5

    aget-object v7, p1, v6

    aget v7, v7, v9

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v5

    aget-object v7, p1, v6

    aget v7, v7, v1

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v5

    aget-object v7, p1, v6

    aget v7, v7, v10

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v2

    add-int/lit8 v0, v6, 0x1

    aget-object v3, p1, v6

    aget v3, v3, v11

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_29
.end method

.method private generateWorkingKey([BZ)[[I
    .registers 12

    array-length v0, p1

    div-int/lit8 v3, v0, 0x4

    const/4 v0, 0x4

    if-ne v3, v0, :cond_36

    :cond_6
    mul-int/lit8 v0, v3, 0x4

    array-length v1, p1

    if-ne v0, v1, :cond_3d

    add-int/lit8 v0, v3, 0x6

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v0, 0x4

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_27
    array-length v4, p1

    if-lt v1, v4, :cond_46

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v4, v1, 0x2

    move v2, v3

    :goto_31
    if-lt v2, v4, :cond_70

    if-eqz p2, :cond_ba

    :cond_35
    return-object v0

    :cond_36
    const/4 v0, 0x6

    if-eq v3, v0, :cond_6

    const/16 v0, 0x8

    if-eq v3, v0, :cond_6

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Key length not 128/192/256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    shr-int/lit8 v4, v2, 0x2

    aget-object v4, v0, v4

    and-int/lit8 v5, v2, 0x3

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_70
    add-int/lit8 v1, v2, -0x1

    shr-int/lit8 v1, v1, 0x2

    aget-object v1, v0, v1

    add-int/lit8 v5, v2, -0x1

    and-int/lit8 v5, v5, 0x3

    aget v1, v1, v5

    rem-int v5, v2, v3

    if-eqz v5, :cond_9c

    const/4 v5, 0x6

    if-gt v3, v5, :cond_b0

    :cond_83
    :goto_83
    shr-int/lit8 v5, v2, 0x2

    aget-object v5, v0, v5

    and-int/lit8 v6, v2, 0x3

    sub-int v7, v2, v3

    shr-int/lit8 v7, v7, 0x2

    aget-object v7, v0, v7

    sub-int v8, v2, v3

    and-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v1, v7

    aput v1, v5, v6

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_31

    :cond_9c
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v1

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    div-int v6, v2, v3

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    xor-int/2addr v1, v5

    goto :goto_83

    :cond_b0
    rem-int v5, v2, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_83

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v1

    goto :goto_83

    :cond_ba
    const/4 v1, 0x1

    :goto_bb
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    if-ge v1, v2, :cond_35

    const/4 v2, 0x0

    :goto_c0
    const/4 v3, 0x4

    if-lt v2, v3, :cond_c6

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_c6
    aget-object v3, v0, v1

    aget-object v4, v0, v1

    aget v4, v4, v2

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c0
.end method

.method private static inv_mcol(I)I
    .registers 6

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v2

    xor-int v3, p0, v2

    xor-int v4, v0, v1

    xor-int/2addr v2, v4

    xor-int/2addr v0, v3

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v0

    xor-int/2addr v0, v2

    xor-int/2addr v1, v3

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static mcol(I)I
    .registers 4

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    xor-int v1, p0, v0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private packBlock([BI)V
    .registers 6

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static shift(II)I
    .registers 4

    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static subWord(I)I
    .registers 4

    sget-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackBlock([BI)V
    .registers 6

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "AES"

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

    const-string/jumbo v2, "invalid parameter passed to AES init - "

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
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-eqz v0, :cond_20

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_29

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_32

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    if-nez v0, :cond_3b

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->decryptBlock([[I)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    :goto_1d
    const/16 v0, 0x10

    return v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->encryptBlock([[I)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    goto :goto_1d
.end method

.method public reset()V
    .registers 1

    return-void
.end method
