.class Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;
    }
.end annotation


# static fields
.field protected static final BASE_CIPHER_NAMES:Ljava/util/Map;

.field protected static final CIPHER_ALG_NAMES:Ljava/util/Map;

.field protected static final MAC_ALG_NAMES:Ljava/util/Map;

.field private static final rc2Ekb:[S

.field private static final rc2Table:[S


# instance fields
.field private helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;


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

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DESEDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "RC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "CAST5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SEED_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "SEED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DESEDE/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "CAST5/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "Camellia/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SEED_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "SEED/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "DESEDEMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

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

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->rc2Table:[S

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

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->rc2Ekb:[S

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    return-void
.end method

.method static execute(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;->doInJCE()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_f
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_3} :catch_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_3} :catch_23
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_3} :catch_2d
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_3} :catch_37

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "can\'t find algorithm."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_f
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "key invalid in message."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "can\'t find provider."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_23
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "required padding not supported."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2d
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "algorithm parameters invalid."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_37
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "MAC algorithm parameter spec invalid."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method createAlgorithmParameterGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameterGenerator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createAlgorithmParameterGenerator(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createAlgorithmParameterGenerator(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    goto :goto_a
.end method

.method createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    goto :goto_a
.end method

.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    move-result-object v0

    return-object v0
.end method

.method createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13} :catch_1c

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot create cipher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3b
    move-exception v0

    goto :goto_a
.end method

.method createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$1;-><init>(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->execute(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method

.method createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;-><init>(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->execute(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    return-object v0
.end method

.method createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13} :catch_1c

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot create key pair generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3b
    move-exception v0

    goto :goto_a
.end method

.method public createKeyFactory(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyFactory;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13} :catch_1c

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot create key factory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3b
    move-exception v0

    goto :goto_a
.end method

.method public createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyGenerator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13} :catch_1c

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot create key generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3b
    move-exception v0

    goto :goto_a
.end method

.method createKeyPairGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyPairGenerator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13} :catch_1c

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot create key pair generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3b
    move-exception v0

    goto :goto_a
.end method

.method createMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Mac;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13} :catch_1c

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot create mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3b
    move-exception v0

    goto :goto_a
.end method

.method createRFC3211Wrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1e
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_23
    .catch Ljava/security/GeneralSecurityException; {:try_start_1e .. :try_end_23} :catch_3f

    move-result-object v0

    return-object v0

    :cond_25
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no name for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3f
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot create cipher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;

    move-result-object v0

    return-object v0
.end method

.method generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameterGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->RC2_CBC:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_c
    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0

    :cond_11
    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_43
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_18} :catch_46

    :try_start_18
    new-instance v2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    invoke-virtual {v0, v2, p3}, Ljava/security/AlgorithmParameterGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_27
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_18 .. :try_end_27} :catch_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_27} :catch_43
    .catch Ljava/security/GeneralSecurityException; {:try_start_18 .. :try_end_27} :catch_46

    goto :goto_c

    :catch_28
    move-exception v0

    :try_start_29
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parameters generation error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_43} :catch_43
    .catch Ljava/security/GeneralSecurityException; {:try_start_29 .. :try_end_43} :catch_46

    :catch_43
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :catch_46
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception creating algorithm parameter generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    if-nez p2, :cond_a

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    :goto_4
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_a
    :try_start_a
    const-string/jumbo v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_4

    :catch_16
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot encode parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 7

    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_22

    instance-of v0, p2, Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown parameter spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_33
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    check-cast p2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4e

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    invoke-virtual {v0}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>([B)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_4e
    const/16 v2, 0x100

    if-lt v1, v2, :cond_61

    :goto_52
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    invoke-virtual {v0}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>(I[B)V

    invoke-direct {v2, p1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    :cond_61
    sget-object v2, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->rc2Table:[S

    aget-short v1, v2, v1

    goto :goto_52
.end method

.method getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

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

.method getJceKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;
    .registers 6

    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/Key;

    if-nez v0, :cond_19

    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown generic key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0

    :cond_20
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;
    .registers 5

    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/Key;

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown generic key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0

    :cond_20
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string/jumbo v2, "ENC"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method
