.class public Lorg/bouncycastle/crypto/engines/AESEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B

.field private static final Si:[B

.field private static final T0:[I

.field private static final Tinv0:[I

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

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x63

    aput-byte v1, v0, v3

    const/16 v1, 0x7c

    aput-byte v1, v0, v4

    const/16 v1, 0x77

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, -0xe

    aput-byte v1, v0, v6

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

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    aput-byte v4, v0, v1

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

    const/16 v1, 0x10

    const/16 v2, -0x36

    aput-byte v2, v0, v1

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

    aput-byte v6, v0, v1

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

    aput-byte v3, v0, v1

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

    aput-byte v5, v0, v1

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

    const/16 v2, 0x10

    aput-byte v2, v0, v1

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

    aput-byte v7, v0, v1

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

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x52

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    aput-byte v1, v0, v4

    const/16 v1, 0x6a

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v1, v0, v6

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

    aput-byte v1, v0, v7

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

    const/16 v1, 0x10

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

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

    aput-byte v7, v0, v1

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

    aput-byte v3, v0, v1

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

    aput-byte v5, v0, v1

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

    aput-byte v4, v0, v1

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

    const/16 v2, 0x10

    aput-byte v2, v0, v1

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

    aput-byte v6, v0, v1

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

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    const/16 v0, 0x1e

    new-array v0, v0, [I

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    const/4 v1, 0x3

    aput v7, v0, v1

    const/16 v1, 0x10

    aput v1, v0, v6

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

    aput v1, v0, v7

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

    const/16 v1, 0x10

    const/16 v2, 0x5e

    aput v2, v0, v1

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

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, -0x5a9c9c3a

    aput v1, v0, v3

    const v1, -0x7b838308

    aput v1, v0, v4

    const v1, -0x66888812

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, -0x7284840a

    aput v2, v0, v1

    const v1, 0xdf2f2ff

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, -0x4294942a

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x4e909022

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x54c5c591

    aput v2, v0, v1

    const v1, 0x50303060

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x3010102

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x56989832

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7d2b2b56

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x19fefee7

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x62d7d7b5

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x195454b3

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x65898914

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x45caca8f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x627d7de1

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x40c9c989

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x78828206

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x15fafaef

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x14a6a64e

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x36b8b872

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0xbf0f0fb

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x135252bf

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x67d4d4b3

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x25d5da1

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x155050bb

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x406363dd

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x85b5bad

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, -0x698d8d1c

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x5bc0c09b

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x3d48488b

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x1cfdfde1

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x516c6cc3

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x6a26264c

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x5a36366c

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x413f3f7e

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x2f7f7f5

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x4fcccc83

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x5c343468

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0xb5a5aaf

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x34e5e5d1

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x8f1f1f9

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x6c8e8e1e

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x73d8d8ab

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x53313162

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x3f15152a

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0xc040408

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x52c7c795

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x65232346

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x5ec3c39d

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x28181830

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x5e6969c9

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0xf05050a

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x4a6565d1

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x907070e

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x36121224

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x647f7fe5

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x3de2e2df

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x26ebebcd

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x6927274e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x324d4d81

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x608a8a16

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x1b090912

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x617c7ce3

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x742c2c58

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x2e1a1a34

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x2d1b1b36

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x4d919124

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x11a5a54c

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x45f5fa5

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x9adad5c

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x4d3b3b76    # 1.96327264E8f

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x61d6d6b7

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x314c4c83

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x7b292952

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x3ee3e3dd

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x712f2f5e

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x687b7bed

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0xaacac5a

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x68d1d1b9

    aput v2, v0, v1

    const/16 v1, 0x52

    aput v3, v0, v1

    const/16 v1, 0x53

    const v2, 0x2cededc1

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x60202040

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x1ffcfce3

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x374e4e87

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0x12a4a44a

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x4195952c

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x46cbcb8d

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x26414199

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x4b393972    # 1.2138866E7f

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x21b5b56c

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x2bb3b368

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x17a7a750

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x4acfcf85    # 6809538.5f

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x6bd0d0bb

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x2aefefc5

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x1a5555b1

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x16fbfbed

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x3abcbc7a

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x28b2b266

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x55333366

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x6b7a7aef

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x30baba76

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x10f9f9e9

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x6020204

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, -0x7e808002

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0xfafaf60

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x443c3c78

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x456060db

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x1c5757b5

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0xcaeae5e

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x15c5ca3

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x3fbfbf80

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x757070fb

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x526d6dc1

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x436262df

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x48383870    # 188641.75f

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x4f5f5f1

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x2043439d

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x3e494989

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x75dadaaf

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x63212142

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x30101020

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x1affffe5

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xef3f3fd

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x6dd2d2bf

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x4ccdcd81    # 1.07899912E8f

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x140c0c18

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x35131326

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x2fececc3

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x1ea0a042

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x5d6868cb

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x33bbbb78    # -5.14504E7f

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x3917172e

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x57c4c493

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0xd5858ab

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x7d818104

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x473d3d7a

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x539b9b38

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x18a2a246

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x2b191932

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x6a8c8c1a

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x5f9f9f40

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x677e7ee7

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x2eb0b062

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x7fdcdca3

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x66222244

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x7e2a2a54

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x546f6fc5

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x7c7777f5

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x35b9b974    # -3248547.0f

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x29eeeec7

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x2c474795

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x3c141428

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x79dedea7

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x1da1a144

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x1d0b0b16

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x76dbdbad

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x3be0e0db

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x56323264

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x4e3a3a74

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x1e0a0a14

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x24b6b66e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xa06060c

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x6c242448

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x1ba3a348

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x5dc2c29f

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x6ed3d3bd

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x105353bd

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x599d9d3c

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x576e6ec7

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x5b6a6acf

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x37e4e4d3

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x7486860e

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x32e7e7d5

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x43c8c88b

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x5937376e

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x48929226

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x737272ff

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x64d5d5b1

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x2db1b164

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x1f5656b7

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x4b939328

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x5a9a954

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x7f4f4f3

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x25eaeacf

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x509a9a36

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x7185850c

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x165151b9

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x18080810

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x2a454591

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x77878710

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x6f25254a

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x722e2e5c

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x241c1c38

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0xe5959a9

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x384b4b8d

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x51c6c697

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x23e8e8cb

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x7cdddda1

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x638b8b18

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x211f1f3e

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x22b4b46a

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2342429f

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x797474f3

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x7a7575f1

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x6f8f8f20

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x423e3e7c

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x3b4a4a8f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x55999934

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x27b7b770

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x5030306

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x1f6f6f7

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x120e0e1c

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x5c9e9e3e

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5f35356a

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x6a8a852

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x2f464697

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x6e7979e9

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x58c1c199

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x271d1d3a

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x466161d9

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x38e1e1d9

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x13f8f8eb

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x4c6767d5

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x33111122

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x4496962e

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x70d9d9a9

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x767171f9

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x586b6bcd

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x496464d3

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x221e1e3c

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x6d7878eb

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x20e9e9c9

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x49cece87

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0xaaaa56

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x78282850

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x7adfdfa5

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x707373fd

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x75e5ea7

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x7f7676f7

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x170d0d1a

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x2540409b

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x31e6e6d7

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x39bdbd7c

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x47979730

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x3cbebe7e

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x4f6666d7

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x772d2d5a

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x110f0f1e

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x344f4f85    # -2.315903E7f

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x3abab58

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x29444493

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x3a16162c

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const v1, 0x50a7f451

    aput v1, v0, v3

    const v1, 0x5365417e

    aput v1, v0, v4

    const v1, -0x3c5be8e6

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, -0x69a1d8c6

    aput v2, v0, v1

    const v1, -0x349454c5    # -1.5444795E7f

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, -0xeba62e1

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x54a70554

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x6cfc1cb5

    aput v2, v0, v1

    const v1, 0x55fa3020

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, -0x9928953

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x6e893378

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x254c02f5

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x3281ab1

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x2834d53b

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x7fbbcada

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x705c9d4b

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x495ab1de    # 895773.9f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x671bba25

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x67f115bb

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x1e3f01a3

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x2752fc3

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x12f04c81

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x5c68b973

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x39062c95

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x18a070fd

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x6a636deb

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x14859241

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x25a6ad6b

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2d83bed4

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x2cde8ba8

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x2969e049

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x44c8c98e

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x6a89c275

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x78798ef4

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x6b3e5899

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x228e46d9

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x49b01e42

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x17ad88f0

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x66ac20c9

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x4bc53183

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x184adf63

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x7dcee51b

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x60335197

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x457f5362

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x1f889b4f

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x7b519445

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x1ca081fe

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x6bd4f707

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x58684870

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x19fd458f

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x7893216c

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x480784ae

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x23d373ab

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x1dfdb48e

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x578f1fe3

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x2aab5566

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x728ebb2

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x3c2b52f

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x65843a7a

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x5af7c82d

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0xd78d7d0

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x4d5a40dd

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x4595fcfe

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x5c8216ed

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x2b1ccf8a

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x6d4b8659

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0xf0df80d

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x5e1d96b2

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x320b259b

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, -0x2a41fafa

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x1f6234d1

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x7501593c

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x62acd1cc

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x5faa0c5e

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x32e18a05

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x75ebf6a4

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x39ec830b

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x55109fc0

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x69f715e

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x51106ebd

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x675dec2

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x3d06dd96

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x51fac123

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x46bde64d

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x4a72ab6f

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x55dc471

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x6fd40604

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, -0xeaafa0

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x24fb9819

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x6816422a

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x33bcbf77    # -5.1184164E7f

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x779ed967

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x42bd1750

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x777476f9

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x385b19e7

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x24113787

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x470a7ca1

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x16f0bd84

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x36e17b08    # -649295.5f

    aput v2, v0, v1

    const/16 v1, 0x63

    aput v3, v0, v1

    const/16 v1, 0x64

    const v2, -0x7c797ff7

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x48ed2b32

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x538feee2

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x4e725a6c

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x400f103

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x5638850f

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x1ed5ae3d

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x27392d36

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x64d90f0a

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x21a65c68

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x2eaba465

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x3a2e3624

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x4e98f5f4

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xfe75793

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x2d69114c

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x616e64e5

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x4fc5c080

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x5ddf239f

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x694b775a

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x161a121c

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xaba93e2

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x1ad55f40

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x43e0223c

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x1d171b12    # 1.9998679E-21f

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xb0d090e

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x5238740e

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x465749d3

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x3756e1ec

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x7ae60ea9

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x4c0775af    # 3.5509948E7f

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x44226612

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x29f805d

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x60d9fe09

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x430a8da4

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x3ac499bc

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x347efb5b

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x7629438b

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x2339dc35

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x68fcedb6

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x63f1e4b8

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x3523ce29    # -7215339.5f

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0x10856342

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x40229713

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x2011c684

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x7d244a85

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x7c2442e

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x1132f9ae

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x6da129c7

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x4b2f9e1d    # 1.1509277E7f

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0xccf4d24    # -1.3999511E31f

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x13ad79f3

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x2f1c3e89

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x6c16b32b

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x66468f57

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x5b76bef

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x2264e947

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x3b730358

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x1a3ff0a0

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x27d382aa

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, -0x106fccde

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x38b1b679

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x3e2ec727

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x15d3574

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x360bd498

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x307e0a5a

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x28de7aa5

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x268eb7da

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x5b4052c1

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, -0x1b62c5d4

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xd927850

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x6433a096

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x62467e54

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x3dec720a

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x17472770

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x5ef7392e

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0xa503c7e

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x417fa261

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x7c93d069

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x56d22a91

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x4cedda31

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x3b99acc8

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x5882e7f0

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x6e639ce8

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x7bbb3bdb

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x97826cd

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0xbe7a692

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x1b79aec

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x5765b07d

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x656e95e6

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x7ee6ffaa

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x8cfbc21

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x1917ea11

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x26641846

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x31c990b6

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x2bf66016

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, -0x29834fd7

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x504d5bcf

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x31233f2a

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x3094a5c6

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x3f995dcb

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x37bc4e74

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x59357d04

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x4f2f6f20

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x15d8a733

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x4a9804f1    # 4981368.5f

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x82513bf

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0xe50cd7f

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x2ff69117

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x7229b28a

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x4db0ef43    # 3.71058784E8f

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x544daacc

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x20fb691c

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x1c4a2e62

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x1b886a4c

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x47e0d33f

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x7f516546

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x4ea5e9d    # 5.5100024E-36f

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5d358c01

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x737487fa

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x2e410bfb

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x5a1d67b3

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x52d2db92

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x335610e9

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x1347d66d

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x739e2866

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x7a0ca137

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x71eb07a7

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x76c3ec15

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x11d85632

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x35c961b7

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x121ae31f

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x3cb1477a

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x59dfd29c

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x3f73f255

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x79ce1418

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x40c8388d

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x153208ad

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x5baafd5f

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x146f3ddf

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x7924bb88

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x7e0c5036

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x3ec468b9

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x2c342438

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x5f40a3c2

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x72c31d16

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0xc25e2bc

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x74b6c3d8

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x41950dff

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x7101a839

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x214cf3f8

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x631b4b28

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x6f3ea99c

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x6184cb7b

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x70b632d5

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x745c6c48

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x4257b8d0

    aput v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

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
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x18

    const/16 v9, 0x10

    const/16 v8, 0x8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v1, p1, v1

    aget v1, v1, v11

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v1, p1, v1

    aget v1, v1, v12

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v1, p1, v1

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v0, v0, -0x1

    :goto_3a
    if-gt v0, v12, :cond_1f9

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    aget-object v2, p1, v0

    aget v2, v2, v11

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    aget-object v3, p1, v0

    aget v3, v3, v12

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    aget-object v4, p1, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v0, p1, v0

    const/4 v5, 0x3

    aget v0, v0, v5

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    aget-object v5, p1, v11

    aget v5, v5, v11

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v5, v2, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v3, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    aget-object v5, p1, v11

    aget v5, v5, v12

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v5, v3, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    aget-object v5, p1, v11

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v0, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    aget-object v1, p1, v11

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    return-void

    :cond_1f9
    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    aget-object v2, p1, v0

    aget v2, v2, v11

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    aget-object v3, p1, v0

    aget v3, v3, v12

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    aget-object v4, p1, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    aget-object v0, p1, v0

    const/4 v6, 0x3

    aget v0, v0, v6

    xor-int/2addr v0, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v6, v1, 0xff

    aget v4, v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v3, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v2, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    aget-object v6, p1, v5

    aget v6, v6, v11

    xor-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v6, v2, 0xff

    aget v4, v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v3, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    aget-object v6, p1, v5

    aget v6, v6, v12

    xor-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v6, v3, 0xff

    aget v4, v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v7, v0, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v4, v6

    aget-object v6, p1, v5

    const/4 v7, 0x2

    aget v6, v6, v7

    xor-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v4, v0

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v4, v3

    invoke-static {v3, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v0, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget v2, v3, v2

    invoke-static {v2, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    invoke-static {v1, v8}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v0

    add-int/lit8 v0, v5, -0x1

    aget-object v2, p1, v5

    const/4 v3, 0x3

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    goto/16 :goto_3a
.end method

.method private encryptBlock([[I)V
    .registers 15

    const/4 v1, 0x1

    const/4 v12, 0x0

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    aget-object v2, p1, v12

    aget v2, v2, v12

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    aget-object v2, p1, v12

    aget v2, v2, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    aget-object v2, p1, v12

    const/4 v3, 0x2

    aget v2, v2, v3

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    aget-object v2, p1, v12

    const/4 v3, 0x3

    aget v2, v2, v3

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    move v0, v1

    :goto_2f
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1f4

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    aget-object v3, p1, v0

    aget v3, v3, v12

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    aget-object v4, p1, v0

    aget v4, v4, v1

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v5, p1, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget-object v0, p1, v0

    const/4 v7, 0x3

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v0, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, p1, v6

    aget v7, v7, v12

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, p1, v6

    aget v1, v7, v1

    xor-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v5, v4, 0xff

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v1, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v1, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v7, v3, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v5, v5, v7

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v1, v5

    aget-object v5, p1, v6

    const/4 v7, 0x2

    aget v5, v5, v7

    xor-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, v3, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, v4, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    aget-object v1, p1, v6

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    return-void

    :cond_1f4
    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    invoke-static {v3, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v2, v3

    aget-object v3, p1, v0

    aget v3, v3, v12

    xor-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    invoke-static {v4, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v4

    xor-int/2addr v3, v4

    aget-object v4, p1, v0

    aget v4, v4, v1

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    invoke-static {v5, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v5, p1, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    invoke-static {v6, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget-object v0, p1, v0

    const/4 v7, 0x3

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v2, 0xff

    aget v5, v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v0, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    aget-object v7, p1, v6

    aget v7, v7, v12

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v3, 0xff

    aget v5, v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    aget-object v7, p1, v6

    aget v7, v7, v1

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v4, 0xff

    aget v5, v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-static {v7, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v5, v7

    aget-object v7, p1, v6

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v5, v7

    iput v5, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v5, v0

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v5, v2

    invoke-static {v2, v11}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    invoke-static {v2, v9}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v3, p1, v6

    const/4 v4, 0x3

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    goto/16 :goto_2f
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

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

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

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

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

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v1

    sget-object v5, Lorg/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    div-int v6, v2, v3

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    xor-int/2addr v1, v5

    goto :goto_83

    :cond_b0
    rem-int v5, v2, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_83

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v1

    goto :goto_83

    :cond_ba
    const/4 v1, 0x1

    :goto_bb
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

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

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/AESEngine;->inv_mcol(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c0
.end method

.method private static inv_mcol(I)I
    .registers 6

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v2

    xor-int v3, p0, v2

    xor-int v4, v0, v1

    xor-int/2addr v2, v4

    xor-int/2addr v0, v3

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v0

    xor-int/2addr v0, v2

    xor-int/2addr v1, v3

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private packBlock([BI)V
    .registers 6

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

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

    sget-object v0, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESEngine;->S:[B

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

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->C3:I

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

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/AESEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    if-eqz v0, :cond_20

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_29

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_32

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    if-nez v0, :cond_3b

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AESEngine;->decryptBlock([[I)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/AESEngine;->packBlock([BI)V

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
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AESEngine;->encryptBlock([[I)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/AESEngine;->packBlock([BI)V

    goto :goto_1d
.end method

.method public reset()V
    .registers 1

    return-void
.end method
