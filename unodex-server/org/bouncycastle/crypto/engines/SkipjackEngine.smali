.class public Lorg/bouncycastle/crypto/engines/SkipjackEngine;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field static final BLOCK_SIZE:I = 0x8

.field static ftable:[S


# instance fields
.field private encrypting:Z

.field private key0:[I

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [S

    const/16 v1, 0xa3

    aput-short v1, v0, v3

    const/16 v1, 0xd7

    aput-short v1, v0, v4

    const/16 v1, 0x9

    aput-short v1, v0, v5

    const/16 v1, 0x83

    aput-short v1, v0, v6

    const/16 v1, 0xf8

    aput-short v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x48

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xf6

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xf4

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb3

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x21

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x15

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x99

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xb1

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xaf

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf9

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe7

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x2d

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4d

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8a

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xce

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x4c

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xca

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x2e

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x52

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x95

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xd9

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x4e

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x44

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x28

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xa

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xdf

    aput-short v2, v0, v1

    const/16 v1, 0x22

    aput-short v5, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xa0

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x17

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xf1

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x60

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x68

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x12

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xb7

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x7a

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xc3

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xe9

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xfa

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x3d

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x53

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x96

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x84

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x6b

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xba

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xf2

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x63

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x9a

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x19

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x7c

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xae

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xe5

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xf5

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xf7

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x16

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x6a

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xa2

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x39

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xb6

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x7b

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xf

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xc1

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x93

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x81

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x1b

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xee

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xb4

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x1a

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xea

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xd0

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x91

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x2f

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xb8

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x55

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xb9

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xda

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x85

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x3f

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x41

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xbf

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xe0

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x5a

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x80

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x5f

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x66

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xb

    aput-short v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xd8

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x90

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x35

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xd5

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xc0

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0xa7

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x33

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/4 v2, 0x6

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x65

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x69

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x45

    aput-short v2, v0, v1

    const/16 v1, 0x69

    aput-short v3, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x94

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x56

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x6d

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x98

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x9b

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x76

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x97

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xfc

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xb2

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0xc2

    aput-short v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0xb0

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xfe

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xdb

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x20

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0xe1

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xeb

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xd6

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xe4

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xdd

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x47

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x4a

    aput-short v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x1d

    aput-short v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x42

    aput-short v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0xed

    aput-short v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x9e

    aput-short v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x6e

    aput-short v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x49

    aput-short v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x3c

    aput-short v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0xcd

    aput-short v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x43

    aput-short v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x27

    aput-short v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0xd2

    aput-short v2, v0, v1

    const/16 v1, 0x8a

    const/4 v2, 0x7

    aput-short v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0xd4

    aput-short v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0xde

    aput-short v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0xc7

    aput-short v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x67

    aput-short v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x18

    aput-short v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x89

    aput-short v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0xcb

    aput-short v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x30

    aput-short v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x1f

    aput-short v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x8d

    aput-short v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0xc6

    aput-short v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x8f

    aput-short v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0xaa

    aput-short v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0xc8

    aput-short v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x74

    aput-short v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0xdc

    aput-short v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0xc9

    aput-short v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x5d

    aput-short v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x5c

    aput-short v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x31

    aput-short v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0xa4

    aput-short v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x70

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x88

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x61

    aput-short v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x2c

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x9f

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0xd

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x2b

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x87

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x50

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x82

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x54

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x64

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x26

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x7d

    aput-short v2, v0, v1

    const/16 v1, 0xae

    aput-short v6, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x40

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x34

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x4b

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x1c

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x73

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xd1

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0xc4

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0xfd

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x3b

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0xcc

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0xfb

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x7f

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0xab

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0xe6

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x5b

    aput-short v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0xa5

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0xad

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    aput-short v7, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x9c

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x14

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x22

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0xf0

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x29

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x79

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x71

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x7e

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0xff

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x8c

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0xe

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xe2

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0xef

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0xbc

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x72

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x75

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x6f

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x37

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xa1

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0xec

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0xd3

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x8e

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x62

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x8b

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x86

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x10

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0xe8

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x8

    aput-short v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x77

    aput-short v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x11

    aput-short v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xbe

    aput-short v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x92

    aput-short v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x4f

    aput-short v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x24

    aput-short v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0xc5

    aput-short v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x32

    aput-short v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x36

    aput-short v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x9d

    aput-short v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0xcf

    aput-short v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xf3

    aput-short v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0xa6

    aput-short v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0xbb

    aput-short v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xac

    aput-short v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x5e

    aput-short v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x6c

    aput-short v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0xa9

    aput-short v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x13

    aput-short v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x57

    aput-short v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x25

    aput-short v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0xb5

    aput-short v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xe3

    aput-short v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0xbd

    aput-short v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0xa8

    aput-short v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x3a

    aput-short v2, v0, v1

    const/16 v1, 0xfb

    aput-short v4, v0, v1

    const/16 v1, 0xfc

    const/4 v2, 0x5

    aput-short v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x59

    aput-short v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x2a

    aput-short v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x46

    aput-short v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g(II)I
    .registers 7

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, p2, 0xff

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v3, v3, p1

    xor-int/2addr v3, v1

    aget-short v2, v2, v3

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v3, v3, p1

    xor-int/2addr v3, v0

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v3, v3, p1

    xor-int/2addr v3, v1

    aget-short v2, v2, v3

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v3, v3, p1

    xor-int/2addr v3, v0

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method private h(II)I
    .registers 7

    and-int/lit16 v0, p2, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v3, v3, p1

    xor-int/2addr v3, v1

    aget-short v2, v2, v3

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v3, v3, p1

    xor-int/2addr v3, v0

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v3, v3, p1

    xor-int/2addr v3, v1

    aget-short v2, v2, v3

    xor-int/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v3, v3, p1

    xor-int/2addr v3, v0

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public decryptBlock([BI[BI)I
    .registers 16

    const/16 v9, 0x8

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v4, v0, v2

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v5, v0, v2

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v3, v0, v2

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v0

    const/16 v0, 0x1f

    move v8, v1

    :goto_3d
    const/4 v6, 0x2

    if-lt v8, v6, :cond_79

    add-int/lit8 v0, p4, 0x0

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-byte v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    int-to-byte v1, v5

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    int-to-byte v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    int-to-byte v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    return v9

    :cond_79
    move v6, v1

    :goto_7a
    if-lt v6, v9, :cond_8b

    move v6, v5

    move v5, v3

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_81
    if-lt v0, v9, :cond_9d

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v2

    move v2, v3

    move v3, v5

    move v5, v6

    goto :goto_3d

    :cond_8b
    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v7

    xor-int/2addr v3, v7

    add-int/lit8 v5, v0, 0x1

    xor-int/2addr v5, v3

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v3

    move v3, v2

    move v2, v4

    move v4, v7

    goto :goto_7a

    :cond_9d
    xor-int/2addr v4, v6

    add-int/lit8 v7, v2, 0x1

    xor-int/2addr v4, v7

    invoke-direct {p0, v2, v6}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v6

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    move v10, v4

    move v4, v6

    move v6, v5

    move v5, v3

    move v3, v10

    goto :goto_81
.end method

.method public encryptBlock([BI[BI)I
    .registers 16

    const/16 v9, 0x8

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v5, v0, v2

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v3, v0, v2

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v4, v0, v2

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v0

    move v8, v1

    move v0, v1

    :goto_3c
    const/4 v6, 0x2

    if-lt v8, v6, :cond_78

    add-int/lit8 v0, p4, 0x0

    shr-int/lit8 v1, v5, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-byte v1, v5

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    int-to-byte v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    int-to-byte v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    int-to-byte v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    return v9

    :cond_78
    move v6, v1

    :goto_79
    if-lt v6, v9, :cond_8a

    move v6, v5

    move v5, v3

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_80
    if-lt v0, v9, :cond_9d

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v2

    move v2, v3

    move v3, v5

    move v5, v6

    goto :goto_3c

    :cond_8a
    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v5

    xor-int/2addr v2, v5

    add-int/lit8 v7, v0, 0x1

    xor-int/2addr v7, v2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v2

    move v2, v4

    move v4, v3

    move v3, v5

    move v5, v7

    goto :goto_79

    :cond_9d
    xor-int/2addr v5, v6

    add-int/lit8 v7, v2, 0x1

    xor-int/2addr v5, v7

    invoke-direct {p0, v2, v6}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v10, v4

    move v4, v5

    move v5, v6

    move v6, v3

    move v3, v10

    goto :goto_80
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "SKIPJACK"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 8

    const/4 v0, 0x0

    const/16 v4, 0x20

    instance-of v1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_22

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    new-array v2, v4, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    new-array v2, v4, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    new-array v2, v4, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    new-array v2, v4, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    :goto_1f
    if-lt v0, v4, :cond_44

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to SKIPJACK init - "

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

    :cond_44
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    mul-int/lit8 v3, v0, 0x4

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method public processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_21

    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_2a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    if-nez v0, :cond_33

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->decryptBlock([BI[BI)I

    :goto_15
    const/16 v0, 0x8

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SKIPJACK engine not initialised"

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
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encryptBlock([BI[BI)I

    goto :goto_15
.end method

.method public reset()V
    .registers 1

    return-void
.end method
