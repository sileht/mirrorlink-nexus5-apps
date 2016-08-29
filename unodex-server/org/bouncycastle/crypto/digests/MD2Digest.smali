.class public Lorg/bouncycastle/crypto/digests/MD2Digest;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S:[B


# instance fields
.field private C:[B

.field private COff:I

.field private M:[B

.field private X:[B

.field private mOff:I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x29

    aput-byte v1, v0, v3

    const/16 v1, 0x2e

    aput-byte v1, v0, v4

    const/16 v1, 0x43

    aput-byte v1, v0, v5

    const/16 v1, -0x37

    aput-byte v1, v0, v6

    const/16 v1, -0x5e

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v4, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v6, v0, v1

    const/16 v1, 0x60

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v7, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    aput-byte v5, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD2Digest;)V
    .registers 4

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    return-void
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 8

    const/16 v4, 0x10

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    sub-int/2addr v0, v1

    int-to-byte v1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    :goto_b
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2a

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    invoke-static {v0, v1, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->reset()V

    return v4

    :cond_2a
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "MD2"

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock([B)V
    .registers 9

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    const/16 v2, 0x10

    if-lt v0, v2, :cond_d

    move v3, v1

    move v0, v1

    :goto_8
    const/16 v2, 0x12

    if-lt v3, v2, :cond_28

    return-void

    :cond_d
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v3, v0, 0x10

    aget-byte v4, p1, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    add-int/lit8 v3, v0, 0x20

    aget-byte v4, p1, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_28
    move v2, v0

    move v0, v1

    :goto_2a
    const/16 v4, 0x30

    if-lt v0, v4, :cond_37

    add-int v0, v2, v3

    rem-int/lit16 v2, v0, 0x100

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_8

    :cond_37
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aget-byte v5, v4, v0

    sget-object v6, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v2, v6, v2

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    int-to-byte v5, v2

    aput-byte v5, v4, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method protected processCheckSum([B)V
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    const/16 v1, 0xf

    aget-byte v1, v0, v1

    const/4 v0, 0x0

    :goto_7
    const/16 v2, 0x10

    if-lt v0, v2, :cond_c

    return-void

    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v3, v2, v0

    sget-object v4, Lorg/bouncycastle/crypto/digests/MD2Digest;->S:[B

    aget-byte v5, p1, v0

    xor-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v4, v1

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aget-byte v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public reset()V
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->xOff:I

    move v0, v1

    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1a

    iput v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    move v0, v1

    :goto_c
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    array-length v2, v2

    if-ne v0, v2, :cond_21

    iput v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->COff:I

    move v0, v1

    :goto_14
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    array-length v2, v2

    if-ne v0, v2, :cond_28

    return-void

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->X:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_28
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->C:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 2

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD2Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD2Digest;)V

    return-void
.end method

.method public update(B)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    goto :goto_11
.end method

.method public update([BII)V
    .registers 9

    const/16 v4, 0x10

    const/4 v3, 0x0

    :goto_3
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->mOff:I

    if-nez v0, :cond_e

    :cond_7
    move v0, p3

    move v1, p2

    :goto_9
    if-gt v0, v4, :cond_1a

    :goto_b
    if-gtz v0, :cond_30

    return-void

    :cond_e
    if-lez p3, :cond_7

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processCheckSum([B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD2Digest;->M:[B

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/MD2Digest;->processBlock([B)V

    add-int/lit8 p3, v0, -0x10

    add-int/lit8 p2, v1, 0x10

    move v0, p3

    move v1, p2

    goto :goto_9

    :cond_30
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/MD2Digest;->update(B)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_b
.end method
