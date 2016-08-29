.class public Lorg/bouncycastle/crypto/engines/RijndaelEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final MAXKC:I = 0x40

.field private static final MAXROUNDS:I = 0xe

.field private static final S:[B

.field private static final Si:[B

.field private static final aLogtable:[B

.field private static final logtable:[B

.field private static final rcon:[I

.field static shifts0:[[B

.field static shifts1:[[B


# instance fields
.field private A0:J

.field private A1:J

.field private A2:J

.field private A3:J

.field private BC:I

.field private BC_MASK:J

.field private ROUNDS:I

.field private blockBits:I

.field private forEncryption:Z

.field private shifts0SC:[B

.field private shifts1SC:[B

.field private workingKey:[[J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    aput-byte v3, v0, v4

    const/16 v1, 0x19

    aput-byte v1, v0, v5

    aput-byte v4, v0, v7

    const/16 v1, 0x32

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    aput-byte v5, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v7, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v6, v0, v1

    const/16 v1, 0x12

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    const/16 v0, 0x1ff

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    aput-byte v7, v0, v4

    const/4 v1, 0x5

    aput-byte v1, v0, v5

    const/16 v1, 0xf

    aput-byte v1, v0, v7

    const/16 v1, 0x11

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v5, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    aput-byte v6, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    aput-byte v4, v0, v1

    const/16 v1, 0x100

    aput-byte v7, v0, v1

    const/16 v1, 0x101

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x102

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x104

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x10a

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x110

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x113

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x116

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x118

    aput-byte v5, v0, v1

    const/16 v1, 0x119

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x11b

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x11e

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x11f

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x120

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x121

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x122

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x123

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x124

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x125

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x126

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x128

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x129

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x12a

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x12b

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x12c

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x12d

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x12e

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x12f

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x130

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x131

    aput-byte v6, v0, v1

    const/16 v1, 0x132

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x133

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x134

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x135

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x136

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x137

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x138

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x139

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x13a

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x13b

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x13c

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x13e

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x13f

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x140

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x141

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x142

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x143

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x144

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x145

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x146

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x147

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x148

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x149

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x14a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x14b

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x14c

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x14d

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x14e

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x14f

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x150

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x151

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x152

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x153

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x154

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x155

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x156

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x157

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x158

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x159

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x15a

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x15b

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x15c

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x15d

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x15e

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x15f

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x160

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x161

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x162

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x163

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x164

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x165

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x166

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x168

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x169

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x16a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x16b

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x16c

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x16e

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x16f

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x170

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x171

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x172

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x173

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x174

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x175

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x177

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x178

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x179

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x17a

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x17b

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x17c

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x17d

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x17e

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x17f

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x180

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x182

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x183

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x184

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x185

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x186

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x187

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x188

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x189

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x18a

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x18b

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x18c

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x18d

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x18e

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x18f

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x190

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x191

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x192

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x193

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x194

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x195

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x196

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x197

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x198

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x199

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x19b

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x19c

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x19d

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x19e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x19f

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1a0

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x1a1

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1a2

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1a3

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x1a4

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x1a5

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a6

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x1a7

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x1aa

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x1ab

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x1ae

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x1af

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1b0

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b1

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x1b2

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x1b3

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x1b4

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1b5

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1b6

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x1b7

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1b8

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x1b9

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x1ba

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x1bb

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x1bc

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x1bd

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x1be

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x1bf

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x1c0

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x1c1

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x1c2

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1c3

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x1c4

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1c5

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1c6

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x1c7

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1c8

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x1c9

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x1ca

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1cb

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x1cc

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x1cd

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x1ce

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1cf

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x1d0

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x1d1

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d2

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x1d3

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x1d4

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x1d5

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d6

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x1d7

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x1d8

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1d9

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x1da

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x1db

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x1dc

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x1dd

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1de

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1df

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x1e0

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e1

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1e2

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x1e3

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x1e4

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x1e5

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x1e6

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x1e7

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x1e8

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x1e9

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x1ea

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x1eb

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x1ec

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1ed

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1ee

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x1ef

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x1f0

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x1f1

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1f2

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x1f3

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x1f4

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x1f5

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f6

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x1f7

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1f8

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x1f9

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x1fa

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x1fb

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x1fc

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x1fd

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1fe

    aput-byte v4, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x63

    aput-byte v1, v0, v3

    const/16 v1, 0x7c

    aput-byte v1, v0, v4

    const/16 v1, 0x77

    aput-byte v1, v0, v5

    const/16 v1, 0x7b

    aput-byte v1, v0, v7

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

    const/16 v1, 0x8

    const/16 v2, 0x30

    aput-byte v2, v0, v1

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

    const/16 v2, 0x8

    aput-byte v2, v0, v1

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

    aput-byte v7, v0, v1

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

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x52

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    aput-byte v1, v0, v4

    const/16 v1, 0x6a

    aput-byte v1, v0, v5

    const/16 v1, -0x2b

    aput-byte v1, v0, v7

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

    const/16 v1, 0x8

    const/16 v2, -0x41

    aput-byte v2, v0, v1

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

    const/16 v2, 0x8

    aput-byte v2, v0, v1

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

    aput-byte v7, v0, v1

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

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    const/16 v0, 0x1e

    new-array v0, v0, [I

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    const/16 v1, 0x8

    aput v1, v0, v7

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

    const/16 v1, 0x8

    const/16 v2, 0x1b

    aput v2, v0, v1

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

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x8

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    aput-byte v2, v1, v5

    const/16 v2, 0x18

    aput-byte v2, v1, v7

    aput-object v1, v0, v3

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x8

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    aput-byte v2, v1, v5

    const/16 v2, 0x18

    aput-byte v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x8

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    aput-byte v2, v1, v5

    const/16 v2, 0x18

    aput-byte v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x8

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    aput-byte v2, v1, v5

    const/16 v2, 0x20

    aput-byte v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x8

    aput-byte v2, v1, v4

    const/16 v2, 0x18

    aput-byte v2, v1, v5

    const/16 v2, 0x20

    aput-byte v2, v1, v7

    aput-object v1, v0, v6

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x18

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    aput-byte v2, v1, v5

    const/16 v2, 0x8

    aput-byte v2, v1, v7

    aput-object v1, v0, v3

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x20

    aput-byte v2, v1, v4

    const/16 v2, 0x18

    aput-byte v2, v1, v5

    const/16 v2, 0x10

    aput-byte v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x28

    aput-byte v2, v1, v4

    const/16 v2, 0x20

    aput-byte v2, v1, v5

    const/16 v2, 0x18

    aput-byte v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x30

    aput-byte v2, v1, v4

    const/16 v2, 0x28

    aput-byte v2, v1, v5

    const/16 v2, 0x18

    aput-byte v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v6, [B

    aput-byte v3, v1, v3

    const/16 v2, 0x38

    aput-byte v2, v1, v4

    const/16 v2, 0x28

    aput-byte v2, v1, v5

    const/16 v2, 0x20

    aput-byte v2, v1, v7

    aput-object v1, v0, v6

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sparse-switch p1, :sswitch_data_84

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown blocksize to Rijndael"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_14
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v2

    :goto_29
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    iput p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    return-void

    :sswitch_2e
    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v3

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v3

    goto :goto_29

    :sswitch_44
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v4

    goto :goto_29

    :sswitch_5a
    const/16 v0, 0x38

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v5

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v5

    goto :goto_29

    :sswitch_70
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v6

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v6

    goto :goto_29

    nop

    :sswitch_data_84
    .sparse-switch
        0x80 -> :sswitch_14
        0xa0 -> :sswitch_2e
        0xc0 -> :sswitch_44
        0xe0 -> :sswitch_5a
        0x100 -> :sswitch_70
    .end sparse-switch
.end method

.method private InvMixColumn()V
    .registers 21

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-lt v2, v3, :cond_20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void

    :cond_20
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v3, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v15, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    move-wide/from16 v16, v0

    shr-long v16, v16, v2

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    if-nez v3, :cond_f5

    const/4 v3, -0x1

    move v14, v3

    :goto_51
    if-nez v12, :cond_100

    const/4 v3, -0x1

    move v13, v3

    :goto_55
    if-nez v15, :cond_10b

    const/4 v3, -0x1

    move v12, v3

    :goto_59
    if-nez v16, :cond_116

    const/4 v3, -0x1

    :goto_5c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v16

    xor-int v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v4, v4, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v16

    xor-int v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v6, v6, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v16

    xor-int v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v8, v8, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v14

    xor-int/2addr v3, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v13

    xor-int/2addr v3, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v12

    xor-int/2addr v3, v12

    and-int/lit16 v3, v3, 0xff

    int-to-long v12, v3

    shl-long/2addr v12, v2

    or-long/2addr v10, v12

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_9

    :cond_f5
    sget-object v13, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    move v14, v3

    goto/16 :goto_51

    :cond_100
    sget-object v3, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v12, v12, 0xff

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    move v13, v3

    goto/16 :goto_55

    :cond_10b
    sget-object v3, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v12, v15, 0xff

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    move v12, v3

    goto/16 :goto_59

    :cond_116
    sget-object v3, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    move/from16 v0, v16

    and-int/lit16 v15, v0, 0xff

    aget-byte v3, v3, v15

    and-int/lit16 v3, v3, 0xff

    goto/16 :goto_5c
.end method

.method private KeyAddition([J)V
    .registers 6

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private MixColumn()V
    .registers 19

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-lt v2, v3, :cond_20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void

    :cond_20
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v3, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v14, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v16

    xor-int v15, v15, v16

    xor-int/2addr v15, v13

    xor-int/2addr v15, v14

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v4, v4, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v16

    xor-int v15, v15, v16

    xor-int/2addr v15, v14

    xor-int/2addr v15, v3

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v6, v6, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v16

    xor-int v15, v15, v16

    xor-int/2addr v15, v3

    xor-int/2addr v15, v12

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v8, v8, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v3

    xor-int/2addr v3, v14

    xor-int/2addr v3, v12

    xor-int/2addr v3, v13

    and-int/lit16 v3, v3, 0xff

    int-to-long v12, v3

    shl-long/2addr v12, v2

    or-long/2addr v10, v12

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_9
.end method

.method private ShiftRow([B)V
    .registers 5

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private Substitution([B)V
    .registers 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private applyS(J[B)J
    .registers 13

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-lt v0, v1, :cond_8

    return-wide v2

    :cond_8
    shr-long v4, p1, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v1, v4

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x8

    goto :goto_3
.end method

.method private decryptBlock([[J)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    :goto_14
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1e

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    return-void

    :cond_1e
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->InvMixColumn()V

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    goto :goto_14
.end method

.method private encryptBlock([[J)V
    .registers 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    const/4 v0, 0x1

    :goto_7
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    if-lt v0, v1, :cond_1d

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    return-void

    :cond_1d
    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->MixColumn()V

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private generateWorkingKey([B)[[J
    .registers 16

    const/4 v6, 0x0

    array-length v0, p1

    mul-int/lit8 v3, v0, 0x8

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x4

    const/4 v4, 0x0

    aput v2, v1, v4

    const/16 v2, 0x40

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v4, 0xf

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput v4, v2, v5

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    sparse-switch v3, :sswitch_data_196

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Key length not 128/160/192/224/256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_38
    const/4 v2, 0x4

    :goto_39
    iget v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    if-ge v3, v4, :cond_65

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    :goto_45
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_47
    array-length v5, p1

    if-lt v3, v5, :cond_6a

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_4d
    if-lt v5, v2, :cond_7b

    :cond_4f
    move v4, v6

    :goto_50
    iget v5, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v6, v6, 0x8

    mul-int/2addr v5, v6

    if-lt v3, v5, :cond_ad

    return-object v1

    :sswitch_5c
    const/4 v2, 0x5

    goto :goto_39

    :sswitch_5e
    const/4 v2, 0x6

    goto :goto_39

    :sswitch_60
    const/4 v2, 0x7

    goto :goto_39

    :sswitch_62
    const/16 v2, 0x8

    goto :goto_39

    :cond_65
    add-int/lit8 v3, v2, 0x6

    iput v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    goto :goto_45

    :cond_6a
    rem-int/lit8 v5, v3, 0x4

    aget-object v7, v0, v5

    div-int/lit8 v8, v3, 0x4

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_47

    :cond_7b
    iget v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    mul-int/2addr v4, v7

    if-ge v3, v4, :cond_4f

    const/4 v4, 0x0

    :goto_87
    const/4 v7, 0x4

    if-lt v4, v7, :cond_90

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_4d

    :cond_90
    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    div-int v7, v3, v7

    aget-object v7, v1, v7

    aget-wide v8, v7, v4

    aget-object v10, v0, v4

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    mul-int/lit8 v12, v3, 0x8

    iget v13, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v12, v13

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    :cond_ad
    const/4 v5, 0x0

    :goto_ae
    const/4 v6, 0x4

    if-lt v5, v6, :cond_da

    const/4 v5, 0x0

    aget-object v6, v0, v5

    const/4 v7, 0x0

    const/4 v5, 0x0

    aget-byte v8, v6, v5

    sget-object v9, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    add-int/lit8 v5, v4, 0x1

    aget v4, v9, v4

    xor-int/2addr v4, v8

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    const/4 v4, 0x6

    if-le v2, v4, :cond_f8

    const/4 v4, 0x1

    move v6, v4

    :goto_c8
    const/4 v4, 0x4

    if-lt v6, v4, :cond_116

    const/4 v4, 0x0

    :goto_cc
    const/4 v6, 0x4

    if-lt v4, v6, :cond_130

    const/4 v4, 0x5

    move v6, v4

    :goto_d1
    if-lt v6, v2, :cond_149

    :cond_d3
    const/4 v4, 0x0

    move v6, v4

    :goto_d5
    if-lt v6, v2, :cond_163

    :cond_d7
    move v4, v5

    goto/16 :goto_50

    :cond_da
    aget-object v6, v0, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-byte v8, v6, v8

    sget-object v9, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    add-int/lit8 v10, v5, 0x1

    rem-int/lit8 v10, v10, 0x4

    aget-object v10, v0, v10

    add-int/lit8 v11, v2, -0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    :cond_f8
    const/4 v4, 0x1

    move v6, v4

    :goto_fa
    if-ge v6, v2, :cond_d3

    const/4 v4, 0x0

    :goto_fd
    const/4 v7, 0x4

    if-lt v4, v7, :cond_104

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_fa

    :cond_104
    aget-object v7, v0, v4

    aget-byte v8, v7, v6

    aget-object v9, v0, v4

    add-int/lit8 v10, v6, -0x1

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_fd

    :cond_116
    const/4 v4, 0x0

    :goto_117
    const/4 v7, 0x4

    if-lt v4, v7, :cond_11e

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_c8

    :cond_11e
    aget-object v7, v0, v4

    aget-byte v8, v7, v6

    aget-object v9, v0, v4

    add-int/lit8 v10, v6, -0x1

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_117

    :cond_130
    aget-object v6, v0, v4

    const/4 v7, 0x4

    const/4 v8, 0x4

    aget-byte v8, v6, v8

    sget-object v9, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    aget-object v10, v0, v4

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_cc

    :cond_149
    const/4 v4, 0x0

    :goto_14a
    const/4 v7, 0x4

    if-lt v4, v7, :cond_151

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_d1

    :cond_151
    aget-object v7, v0, v4

    aget-byte v8, v7, v6

    aget-object v9, v0, v4

    add-int/lit8 v10, v6, -0x1

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_14a

    :cond_163
    iget v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    mul-int/2addr v4, v7

    if-ge v3, v4, :cond_d7

    const/4 v4, 0x0

    :goto_16f
    const/4 v7, 0x4

    if-lt v4, v7, :cond_179

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v4

    goto/16 :goto_d5

    :cond_179
    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    div-int v7, v3, v7

    aget-object v7, v1, v7

    aget-wide v8, v7, v4

    aget-object v10, v0, v4

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    mul-int/lit8 v12, v3, 0x8

    iget v13, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v12, v13

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16f

    :sswitch_data_196
    .sparse-switch
        0x80 -> :sswitch_38
        0xa0 -> :sswitch_5c
        0xc0 -> :sswitch_5e
        0xe0 -> :sswitch_60
        0x100 -> :sswitch_62
    .end sparse-switch
.end method

.method private mul0x2(I)B
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x19

    aget-byte v0, v0, v1

    return v0
.end method

.method private mul0x3(I)B
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method private mul0x9(I)B
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    :cond_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xc7

    aget-byte v0, v0, v1

    return v0
.end method

.method private mul0xb(I)B
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    :cond_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit8 v1, p1, 0x68

    aget-byte v0, v0, v1

    return v0
.end method

.method private mul0xd(I)B
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    :cond_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xee

    aget-byte v0, v0, v1

    return v0
.end method

.method private mul0xe(I)B
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    :cond_4
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xdf

    aget-byte v0, v0, v1

    return v0
.end method

.method private packBlock([BI)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    add-int/lit8 v1, p2, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v2, v1, 0x1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v4, v0

    long-to-int v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v4, v0

    long-to-int v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 p2, v1, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method private shift(JI)J
    .registers 9

    ushr-long v0, p1, p3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    sub-int/2addr v2, p3

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private unpackBlock([BI)V
    .registers 11

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/16 v0, 0x8

    :goto_26
    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ne v0, v2, :cond_2b

    return-void

    :cond_2b
    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 v0, v0, 0x8

    goto :goto_26
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Rijndael"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to Rijndael init - "

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

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->generateWorkingKey([B)[[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    if-eqz v0, :cond_28

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_31

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_3a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    if-nez v0, :cond_43

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->decryptBlock([[J)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    :goto_23
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Rijndael engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->encryptBlock([[J)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    goto :goto_23
.end method

.method public reset()V
    .registers 1

    return-void
.end method
