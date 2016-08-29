.class public Lcom/lge/mirrorlink/certificate/AppIdGenerator;
.super Ljava/lang/Object;
.source "AppIdGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/certificate/AppIdGenerator$NotSignedException;,
        Lcom/lge/mirrorlink/certificate/AppIdGenerator$DuplicateFilenameException;,
        Lcom/lge/mirrorlink/certificate/AppIdGenerator$1;
    }
.end annotation


# static fields
.field private static final BASE64_LOOKUP:[I

.field public static final END_FILE:Ljava/lang/String; = "endFile"

.field public static final END_MANIFEST_MAIN:Ljava/lang/String; = "endManifestMain"

.field private static final ENTRY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final META_INF_PATH:Ljava/lang/String; = "META-INF/"

.field public static final ML_CERT_PATH:Ljava/lang/String; = "assets/self-signed.ccc.crt"

.field public static final START_FILE:Ljava/lang/String; = "startFile"

.field public static final START_MANIFEST_MAIN:Ljava/lang/String; = "startManifestMain"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->BASE64_LOOKUP:[I

    .line 125
    new-instance v0, Lcom/lge/mirrorlink/certificate/AppIdGenerator$1;

    invoke-direct {v0}, Lcom/lge/mirrorlink/certificate/AppIdGenerator$1;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    .line 40
    return-void

    .line 58
    nop

    :array_12
    .array-data 4
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x2d
        0x5f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAttribsToDigest(Ljava/util/jar/Attributes;Ljava/security/MessageDigest;)Z
    .registers 10
    .param p0, "attribs"    # Ljava/util/jar/Attributes;
    .param p1, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v5, 0x0

    .line 150
    .local v5, "ret":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "obj$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 152
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 154
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_20
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 155
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "attrib$iterator":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "attrib":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "-Digest"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 158
    const/4 v5, 0x1

    .line 160
    :cond_41
    invoke-static {v0, p1}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 161
    if-eqz v6, :cond_27

    .line 162
    invoke-static {v6, p1}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    goto :goto_27

    .line 165
    .end local v0    # "attrib":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4a
    return v5
.end method

.method private static addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 138
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 139
    .local v0, "valueBytes":[B
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->longToBytes(J)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 137
    return-void
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .registers 9
    .param p0, "hashOutput"    # [B

    .prologue
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v6, p0

    if-ge v0, v6, :cond_4a

    .line 89
    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x10

    .line 90
    .local v5, "value":I
    const/4 v3, 0x2

    .line 91
    .local v3, "outputChars":I
    add-int/lit8 v6, v0, 0x1

    array-length v7, p0

    if-ge v6, v7, :cond_1f

    .line 92
    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 93
    const/4 v3, 0x3

    .line 95
    :cond_1f
    add-int/lit8 v6, v0, 0x2

    array-length v7, p0

    if-ge v6, v7, :cond_2d

    .line 96
    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 99
    :cond_2d
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2e
    const/4 v6, 0x4

    if-ge v2, v6, :cond_47

    .line 100
    if-lez v3, :cond_42

    .line 103
    rsub-int/lit8 v6, v2, 0x3

    mul-int/lit8 v6, v6, 0x6

    shr-int v6, v5, v6

    and-int/lit8 v1, v6, 0x3f

    .line 104
    .local v1, "index":I
    sget-object v6, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->BASE64_LOOKUP:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 108
    .end local v1    # "index":I
    :cond_42
    add-int/lit8 v3, v3, -0x1

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 87
    :cond_47
    add-int/lit8 v0, v0, 0x3

    goto :goto_6

    .line 111
    .end local v2    # "j":I
    .end local v3    # "outputChars":I
    .end local v5    # "value":I
    :cond_4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static calculateAppId(Ljava/lang/String;JLjava/io/File;)Ljava/lang/String;
    .registers 15
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "versionCode"    # J
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Lcom/lge/mirrorlink/certificate/AppIdGenerator$NotSignedException;,
            Lcom/lge/mirrorlink/certificate/AppIdGenerator$DuplicateFilenameException;
        }
    .end annotation

    .prologue
    .line 172
    const-string/jumbo v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 174
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-static {p0, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 176
    invoke-static {p1, p2}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->longToBytes(J)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 178
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, p3}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 181
    .local v5, "jar":Ljava/util/jar/JarFile;
    const-string/jumbo v8, "startManifestMain"

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 182
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addAttribsToDigest(Ljava/util/jar/Attributes;Ljava/security/MessageDigest;)Z

    .line 183
    const-string/jumbo v8, "endManifestMain"

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_36
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 196
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 198
    :cond_46
    sget-object v8, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    const/4 v6, 0x0

    .line 200
    .local v6, "lastFileName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v6    # "lastFileName":Ljava/lang/String;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 203
    .local v2, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 204
    if-eqz v6, :cond_74

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_74

    .line 205
    new-instance v8, Lcom/lge/mirrorlink/certificate/AppIdGenerator$DuplicateFilenameException;

    invoke-direct {v8, v6}, Lcom/lge/mirrorlink/certificate/AppIdGenerator$DuplicateFilenameException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    :cond_74
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "lastFileName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "assets/self-signed.ccc.crt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    .line 212
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "META-INF/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 211
    if-nez v8, :cond_50

    .line 215
    const-string/jumbo v8, "startFile"

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 216
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 217
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addAttribsToDigest(Ljava/util/jar/Attributes;Ljava/security/MessageDigest;)Z

    move-result v8

    if-nez v8, :cond_b7

    .line 218
    if-eqz v6, :cond_b7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b7

    .line 219
    new-instance v8, Lcom/lge/mirrorlink/certificate/AppIdGenerator$NotSignedException;

    invoke-direct {v8, v6}, Lcom/lge/mirrorlink/certificate/AppIdGenerator$NotSignedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 222
    :cond_b7
    const-string/jumbo v8, "endFile"

    invoke-static {v8, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->addStringToDigest(Ljava/lang/String;Ljava/security/MessageDigest;)V

    goto :goto_50

    .line 225
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    .end local v6    # "lastFileName":Ljava/lang/String;
    :cond_be
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 226
    .local v4, "hashOutput":[B
    invoke-static {v4}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->base64Encode([B)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static longToBytes(J)[B
    .registers 8
    .param p0, "v"    # J

    .prologue
    const/16 v2, 0x8

    .line 116
    new-array v1, v2, [B

    .line 117
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 118
    rsub-int/lit8 v2, v0, 0x7

    mul-int/lit8 v2, v2, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 120
    :cond_18
    return-object v1
.end method
