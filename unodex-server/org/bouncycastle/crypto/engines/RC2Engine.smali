.class public Lorg/bouncycastle/crypto/engines/RC2Engine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static piTable:[B


# instance fields
.field private encrypting:Z

.field private workingKey:[I


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

    const/16 v1, -0x27

    aput-byte v1, v0, v3

    const/16 v1, 0x78

    aput-byte v1, v0, v4

    const/4 v1, -0x7

    aput-byte v1, v0, v5

    const/16 v1, -0x3c

    aput-byte v1, v0, v6

    const/16 v1, 0x19

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    aput-byte v6, v0, v1

    const/16 v1, 0x70

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    aput-byte v7, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    aput-byte v5, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    aput-byte v4, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decryptBlock([BI[BI)V
    .registers 13

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v4, v0, v1

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v3, v0, v1

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v2, v0, v1

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    const/16 v0, 0x3c

    :goto_41
    const/16 v5, 0x2c

    if-ge v0, v5, :cond_c0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v0, v0, v5

    sub-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v0, v0, v5

    sub-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v0, v0, v5

    sub-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v4, 0x3f

    aget v0, v0, v5

    sub-int/2addr v1, v0

    const/16 v0, 0x28

    :goto_63
    const/16 v5, 0x14

    if-ge v0, v5, :cond_112

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v0, v0, v5

    sub-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v0, v0, v5

    sub-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v0, v0, v5

    sub-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v4, 0x3f

    aget v0, v0, v5

    sub-int/2addr v1, v0

    const/16 v0, 0x10

    :goto_85
    if-gez v0, :cond_164

    add-int/lit8 v0, p4, 0x0

    int-to-byte v5, v1

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/lit8 v0, p4, 0x1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    int-to-byte v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    int-to-byte v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    int-to-byte v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    return-void

    :cond_c0
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    add-int/lit8 v0, v0, -0x4

    goto/16 :goto_41

    :cond_112
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    add-int/lit8 v0, v0, -0x4

    goto/16 :goto_63

    :cond_164
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    add-int/lit8 v0, v0, -0x4

    goto/16 :goto_85
.end method

.method private encryptBlock([BI[BI)V
    .registers 16

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v4, v0, v1

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v3, v0, v1

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v2, v0, v1

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_44
    const/16 v5, 0x10

    if-le v0, v5, :cond_c5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v4, 0x3f

    aget v0, v0, v5

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v0, v0, v5

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v0, v0, v5

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v0, v0, v5

    add-int/2addr v4, v0

    const/16 v0, 0x14

    :goto_66
    const/16 v5, 0x28

    if-le v0, v5, :cond_10f

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v4, 0x3f

    aget v0, v0, v5

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v0, v0, v5

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v0, v0, v5

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v0, v0, v5

    add-int/2addr v4, v0

    const/16 v0, 0x2c

    :goto_88
    const/16 v5, 0x40

    if-lt v0, v5, :cond_159

    add-int/lit8 v0, p4, 0x0

    int-to-byte v5, v1

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/lit8 v0, p4, 0x1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    int-to-byte v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    int-to-byte v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    int-to-byte v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    return-void

    :cond_c5
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v1, v5

    and-int v5, v3, v4

    add-int/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v5, v5, v0

    add-int/2addr v1, v5

    invoke-direct {p0, v1, v7}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v2, v5

    and-int v5, v4, v1

    add-int/2addr v2, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    add-int/2addr v2, v5

    invoke-direct {p0, v2, v8}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v3, v5

    and-int v5, v1, v2

    add-int/2addr v3, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x2

    aget v5, v5, v6

    add-int/2addr v3, v5

    invoke-direct {p0, v3, v9}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v4, v5

    and-int v5, v2, v3

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_44

    :cond_10f
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v1, v5

    and-int v5, v3, v4

    add-int/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v5, v5, v0

    add-int/2addr v1, v5

    invoke-direct {p0, v1, v7}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v2, v5

    and-int v5, v4, v1

    add-int/2addr v2, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    add-int/2addr v2, v5

    invoke-direct {p0, v2, v8}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v3, v5

    and-int v5, v1, v2

    add-int/2addr v3, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x2

    aget v5, v5, v6

    add-int/2addr v3, v5

    invoke-direct {p0, v3, v9}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v4, v5

    and-int v5, v2, v3

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_66

    :cond_159
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v1, v5

    and-int v5, v3, v4

    add-int/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v5, v5, v0

    add-int/2addr v1, v5

    invoke-direct {p0, v1, v7}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v2, v5

    and-int v5, v4, v1

    add-int/2addr v2, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    add-int/2addr v2, v5

    invoke-direct {p0, v2, v8}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v3, v5

    and-int v5, v1, v2

    add-int/2addr v3, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x2

    aget v5, v5, v6

    add-int/2addr v3, v5

    invoke-direct {p0, v3, v9}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v4, v5

    and-int v5, v2, v3

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_88
.end method

.method private generateWorkingKey([BI)[I
    .registers 11

    const/16 v7, 0x80

    const/4 v1, 0x0

    new-array v5, v7, [I

    move v0, v1

    :goto_6
    array-length v2, p1

    if-ne v0, v2, :cond_34

    array-length v2, p1

    if-lt v2, v7, :cond_3d

    :cond_c
    add-int/lit8 v0, p2, 0x7

    shr-int/lit8 v3, v0, 0x3

    sget-object v0, Lorg/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    rsub-int v2, v3, 0x80

    aget v2, v5, v2

    neg-int v4, p2

    and-int/lit8 v4, v4, 0x7

    const/16 v6, 0xff

    shr-int v4, v6, v4

    and-int/2addr v2, v4

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    rsub-int v2, v3, 0x80

    aput v0, v5, v2

    rsub-int v2, v3, 0x80

    add-int/lit8 v2, v2, -0x1

    :goto_2a
    if-gez v2, :cond_59

    const/16 v0, 0x40

    new-array v0, v0, [I

    :goto_30
    array-length v2, v0

    if-ne v1, v2, :cond_69

    return-object v0

    :cond_34
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3d
    add-int/lit8 v0, v2, -0x1

    aget v0, v5, v0

    move v4, v2

    move v2, v1

    :goto_43
    sget-object v6, Lorg/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int/lit8 v3, v2, 0x1

    aget v2, v5, v2

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v4, 0x1

    aput v0, v5, v4

    if-ge v2, v7, :cond_c

    move v4, v2

    move v2, v3

    goto :goto_43

    :cond_59
    sget-object v4, Lorg/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int v6, v2, v3

    aget v6, v5, v6

    xor-int/2addr v0, v6

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, v5, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    :cond_69
    mul-int/lit8 v2, v1, 0x2

    aget v2, v5, v2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30
.end method

.method private rotateWordLeft(II)I
    .registers 6

    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int v1, v0, p2

    rsub-int/lit8 v2, p2, 0x10

    shr-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "RC2"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/RC2Parameters;

    if-nez v0, :cond_2c

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to RC2 init - "

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

    :cond_2c
    check-cast p2, Lorg/bouncycastle/crypto/params/RC2Parameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC2Parameters;->getKey()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC2Parameters;->getEffectiveKeyBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v0

    :goto_3a
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    return-void

    :cond_3d
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v0

    goto :goto_3a
.end method

.method public final processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_21

    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_2a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    if-nez v0, :cond_33

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC2Engine;->decryptBlock([BI[BI)V

    :goto_15
    const/16 v0, 0x8

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RC2 engine not initialised"

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
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC2Engine;->encryptBlock([BI[BI)V

    goto :goto_15
.end method

.method public reset()V
    .registers 1

    return-void
.end method
