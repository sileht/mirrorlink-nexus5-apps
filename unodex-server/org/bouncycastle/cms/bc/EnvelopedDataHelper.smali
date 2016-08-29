.class Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field protected static final BASE_CIPHER_NAMES:Ljava/util/Map;

.field protected static final CIPHER_ALG_NAMES:Ljava/util/Map;

.field protected static final MAC_ALG_NAMES:Ljava/util/Map;

.field private static final rc2Ekb:[S

.field private static final rc2Table:[S


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DESEDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DESEDE/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "CAST5/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SEED_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "SEED/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DESEDEMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "RC2Mac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x100

    new-array v0, v0, [S

    const/16 v1, 0xbd

    aput-short v1, v0, v3

    const/16 v1, 0x56

    aput-short v1, v0, v4

    const/16 v1, 0xea

    aput-short v1, v0, v5

    const/16 v1, 0xf2

    aput-short v1, v0, v6

    const/16 v1, 0xa2

    aput-short v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0xf1

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xac

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2a

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb0

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x93

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xd1

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9c

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1b

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x33

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xfd

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xd0

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x30

    aput-short v2, v0, v1

    const/16 v1, 0x11

    aput-short v7, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xb6

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xdc

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x7d

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xdf

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x32

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x4b

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xf7

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xcb

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x45

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x9b

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x31

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xbb

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x21

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x5a

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x41

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x9f

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe1

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xd9

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x4a

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x4d

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x9e

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xda

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xa0

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x68

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2c

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xc3

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x27

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x80

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x36

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xee

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xfb

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x95

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1a

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xfe

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xce

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xa8

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa9

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x13

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xf0

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xa6

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x3f

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xd8

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x24

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xaf

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x52

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xc1

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x67

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x17

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xf5

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x66

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x90

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xe7

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xe8

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x7

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xb8

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x60

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x48

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xe6

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x53

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xf3

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x92

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xa4

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x72

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x8c

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x8

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x15

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x6e

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x86

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    aput-short v3, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x84

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xfa

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xf4

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x7f

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x8a

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x42

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x19

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xf6

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xdb

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xcd

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x14

    aput-short v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x8d

    aput-short v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x50

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x12

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0xba

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x3c

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/4 v2, 0x6

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x4e

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xec

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xb3

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x35

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x11

    aput-short v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0xa1

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x88

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x8e

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x2b

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x94

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x99

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xb7

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x71

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x74

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xd3

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xe4

    aput-short v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xbf

    aput-short v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x3a

    aput-short v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0xde

    aput-short v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x96

    aput-short v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0xe

    aput-short v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0xbc

    aput-short v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0xa

    aput-short v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0xed

    aput-short v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x77

    aput-short v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0xfc

    aput-short v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x37

    aput-short v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x6b

    aput-short v2, v0, v1

    const/16 v1, 0x8b

    aput-short v6, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x79

    aput-short v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x89

    aput-short v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x62

    aput-short v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0xc6

    aput-short v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0xd7

    aput-short v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0xc0

    aput-short v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0xd2

    aput-short v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x7c

    aput-short v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x6a

    aput-short v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x8b

    aput-short v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x22

    aput-short v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0xa3

    aput-short v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x5b

    aput-short v2, v0, v1

    const/16 v1, 0x99

    const/4 v2, 0x5

    aput-short v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x5d

    aput-short v2, v0, v1

    const/16 v1, 0x9b

    aput-short v5, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x75

    aput-short v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0xd5

    aput-short v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x61

    aput-short v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0xe3

    aput-short v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x18

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x8f

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x55

    aput-short v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0xad

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x1f

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0xb

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x5e

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x85

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xe5

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0xc2

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x57

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x63

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0xca

    aput-short v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x3d

    aput-short v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x6c

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0xb4

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0xc5

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0xcc

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x70

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xb2

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x91

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x59

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0xd

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x47

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x20

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0xc8

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x4f

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0xe0

    aput-short v2, v0, v1

    const/16 v1, 0xbe

    aput-short v4, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0xe2

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x16

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0xc4

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x6f

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x3b

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0xf

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x65

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x46

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0xbe

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x7e

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x2d

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x7b

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x82

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0xf9

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x40

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xb5

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x1d

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x73

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0xf8

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0xeb

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x26

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0xc7

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x87

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x97

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x25

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x54

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0xb1

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x28

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0xaa

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x98

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x9d

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0xa5

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x64

    aput-short v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x6d

    aput-short v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x7a

    aput-short v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xd4

    aput-short v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x10

    aput-short v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x81

    aput-short v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x44

    aput-short v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0xef

    aput-short v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x49

    aput-short v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0xd6

    aput-short v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xae

    aput-short v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x2e

    aput-short v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0xdd

    aput-short v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x76

    aput-short v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x5c

    aput-short v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x2f

    aput-short v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0xa7

    aput-short v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x1c

    aput-short v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0xc9

    aput-short v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x9

    aput-short v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x69

    aput-short v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x9a

    aput-short v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x83

    aput-short v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xcf

    aput-short v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x29

    aput-short v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x39

    aput-short v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0xb9

    aput-short v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xe9

    aput-short v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x4c

    aput-short v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0xff

    aput-short v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x43

    aput-short v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0xab

    aput-short v2, v0, v1

    sput-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->rc2Table:[S

    const/16 v0, 0x100

    new-array v0, v0, [S

    const/16 v1, 0x5d

    aput-short v1, v0, v3

    const/16 v1, 0xbe

    aput-short v1, v0, v4

    const/16 v1, 0x9b

    aput-short v1, v0, v5

    const/16 v1, 0x8b

    aput-short v1, v0, v6

    const/16 v1, 0x11

    aput-short v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x99

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x6e

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x4d

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x59

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xf3

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x85

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xa6

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3f

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xb7

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x83

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc5

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xe4

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x73

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x6b

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x3a

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x68

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x5a

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xc0

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x47

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xa0

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x64

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x34

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xf1

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xd0

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x52

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xa5

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xb9

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x96

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x43

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x41

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xd8

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xd4

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x2c

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xdb

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xf8

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x7

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x77

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2a

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xca

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xeb

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xef

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x10

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x1c

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x16

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xd

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x72

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x2f

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x89

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xc1

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xf9

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x80

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xc4

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x6d

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xae

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x30

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x3d

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xce

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x20

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x63

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xfe

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe6

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x1a

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xc7

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xb8

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x50

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xe8

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x24

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x17

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xfc

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x25

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x6f

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xbb

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x6a

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xa3

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x44

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x53

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xd9

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xa2

    aput-short v2, v0, v1

    const/16 v1, 0x56

    aput-short v4, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xab

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xbc

    aput-short v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0xb6

    aput-short v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x1f

    aput-short v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x98

    aput-short v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0xee

    aput-short v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x9a

    aput-short v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xa7

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    aput-short v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x4f

    aput-short v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x9e

    aput-short v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x8e

    aput-short v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0xac

    aput-short v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0xe0

    aput-short v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xc6

    aput-short v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x49

    aput-short v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x46

    aput-short v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x29

    aput-short v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xf4

    aput-short v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x94

    aput-short v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x8a

    aput-short v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0xaf

    aput-short v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xe1

    aput-short v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x5b

    aput-short v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xc3

    aput-short v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xb3

    aput-short v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x7b

    aput-short v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x57

    aput-short v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0xd1

    aput-short v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x7c

    aput-short v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x9c

    aput-short v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xed

    aput-short v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x87

    aput-short v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x40

    aput-short v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x8c

    aput-short v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xe2

    aput-short v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xcb

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x93

    aput-short v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x14

    aput-short v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xc9

    aput-short v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x61

    aput-short v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x2e

    aput-short v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0xe5

    aput-short v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0xcc

    aput-short v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0xf6

    aput-short v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x5e

    aput-short v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0xa8

    aput-short v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x5c

    aput-short v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0xd6

    aput-short v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x75

    aput-short v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x8d

    aput-short v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x62

    aput-short v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x95

    aput-short v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x69

    aput-short v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x76

    aput-short v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0xa1

    aput-short v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x4a

    aput-short v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0xb5

    aput-short v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x55

    aput-short v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x9

    aput-short v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x33

    aput-short v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x82

    aput-short v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0xd7

    aput-short v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0xdd

    aput-short v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x79

    aput-short v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0xf5

    aput-short v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x1b

    aput-short v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0xb

    aput-short v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0xde

    aput-short v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x26

    aput-short v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x21

    aput-short v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x28

    aput-short v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x74

    aput-short v2, v0, v1

    const/16 v1, 0xa2

    aput-short v7, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x97

    aput-short v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x56

    aput-short v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0xdf

    aput-short v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x3c

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0xf0

    aput-short v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x37

    aput-short v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x39

    aput-short v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0xdc

    aput-short v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0xff

    aput-short v2, v0, v1

    const/16 v1, 0xac

    const/4 v2, 0x6

    aput-short v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0xa4

    aput-short v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0xea

    aput-short v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x42

    aput-short v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x8

    aput-short v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0xda

    aput-short v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0xb4

    aput-short v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x71

    aput-short v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xb0

    aput-short v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0xcf

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x12

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x7a

    aput-short v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x4e

    aput-short v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0xfa

    aput-short v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x6c

    aput-short v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x1d

    aput-short v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x84

    aput-short v2, v0, v1

    const/16 v1, 0xbd

    aput-short v3, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0xc8

    aput-short v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x7f

    aput-short v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x91

    aput-short v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x45

    aput-short v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0xaa

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x2b

    aput-short v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0xc2

    aput-short v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0xb1

    aput-short v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x8f

    aput-short v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0xd5

    aput-short v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0xba

    aput-short v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xf2

    aput-short v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0xad

    aput-short v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x19

    aput-short v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0xb2

    aput-short v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x67

    aput-short v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x36

    aput-short v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0xf7

    aput-short v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0xf

    aput-short v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0xa

    aput-short v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x92

    aput-short v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x7d

    aput-short v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0xe3

    aput-short v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x9d

    aput-short v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0xe9

    aput-short v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x90

    aput-short v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x27

    aput-short v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x66

    aput-short v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x13

    aput-short v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0xec

    aput-short v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x81

    aput-short v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x15

    aput-short v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0xbd

    aput-short v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x22

    aput-short v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0xbf

    aput-short v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x9f

    aput-short v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x7e

    aput-short v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xa9

    aput-short v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x4b

    aput-short v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x4c

    aput-short v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0xfb

    aput-short v2, v0, v1

    const/16 v1, 0xea

    aput-short v5, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0xd3

    aput-short v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x70

    aput-short v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x86

    aput-short v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x31

    aput-short v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xe7

    aput-short v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x3b

    aput-short v2, v0, v1

    const/16 v1, 0xf1

    const/4 v2, 0x5

    aput-short v2, v0, v1

    const/16 v1, 0xf2

    aput-short v6, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x54

    aput-short v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x60

    aput-short v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x48

    aput-short v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x65

    aput-short v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x18

    aput-short v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0xd2

    aput-short v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0xcd

    aput-short v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x5f

    aput-short v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x32

    aput-short v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x88

    aput-short v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0xe

    aput-short v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x35

    aput-short v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0xfd

    aput-short v2, v0, v1

    sput-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->rc2Ekb:[S

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_8
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_12
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-object v1

    :cond_1d
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot recognise cipher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_12

    :cond_6a
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_12

    :cond_75
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_12
.end method

.method private createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-object v0
.end method

.method static createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-nez v2, :cond_3c

    :cond_1e
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    :cond_26
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-direct {v0, p1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, p0, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_32
    return-object v1

    :cond_33
    new-instance v0, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    invoke-interface {v0, p0, p1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0

    :cond_3c
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v3, :cond_1e

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    :cond_48
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, p0, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_32

    :cond_59
    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->SEED_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v1, "cannot match parameters"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    invoke-static {v2}, Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getIV()[B

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, p0, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_32

    :cond_cc
    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/RC2Parameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->rc2Ekb:[S

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getRC2ParameterVersion()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aget-short v5, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getIV()[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, p0, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_32

    :cond_f5
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_32
.end method

.method static createRFC3211Wrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Wrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_8
    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0

    :cond_13
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot recognise wrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0

    :cond_60
    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0

    :cond_6b
    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/CipherKeyGenerator;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/16 v3, 0x100

    const/16 v2, 0xc0

    const/16 v1, 0x80

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    sget-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot recognise cipher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_7d
    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_82
    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_87
    new-instance v0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-object v0

    :cond_95
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_9a
    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_9f
    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_a4
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_a9
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    :cond_ae
    new-instance v0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    const/16 v2, 0x40

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-object v0

    :cond_be
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0
.end method

.method generateAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/16 v1, 0x8

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_a
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_1c
    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->SEED_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_54
    new-array v0, v1, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_64
    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v1, "unable to match algorithm"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    new-array v0, v1, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;-><init>([BI)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_a6
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
