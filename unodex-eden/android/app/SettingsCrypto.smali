.class public Landroid/app/SettingsCrypto;
.super Ljava/lang/Object;
.source "SettingsCrypto.java"


# instance fields
.field private IV_KEY:Ljava/lang/String;

.field private SECRET_KEY:Ljava/lang/String;

.field private mCipher:Ljavax/crypto/Cipher;

.field private mIvspec:Ljavax/crypto/spec/IvParameterSpec;

.field private mKeyspec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v1, "aaacba9876543210"

    iput-object v1, p0, Landroid/app/SettingsCrypto;->IV_KEY:Ljava/lang/String;

    .line 16
    const-string v1, "0123456789abcddd"

    iput-object v1, p0, Landroid/app/SettingsCrypto;->SECRET_KEY:Ljava/lang/String;

    .line 23
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Landroid/app/SettingsCrypto;->IV_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Landroid/app/SettingsCrypto;->mIvspec:Ljavax/crypto/spec/IvParameterSpec;

    .line 24
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Landroid/app/SettingsCrypto;->SECRET_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Landroid/app/SettingsCrypto;->mKeyspec:Ljavax/crypto/spec/SecretKeySpec;

    .line 26
    :try_start_27
    const-string v1, "AES/CBC/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SettingsCrypto;->mCipher:Ljavax/crypto/Cipher;
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_2f} :catch_30
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_27 .. :try_end_2f} :catch_35

    .line 32
    :goto_2f
    return-void

    .line 27
    :catch_30
    move-exception v0

    .line 28
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2f

    .line 29
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_35
    move-exception v0

    .line 30
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_2f
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B

    .prologue
    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v2, 0x0

    .line 80
    :cond_3
    return-object v2

    .line 71
    :cond_4
    array-length v1, p0

    .line 72
    .local v1, "len":I
    const-string v2, ""

    .line 73
    .local v2, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_3

    .line 74
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_34

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 77
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 84
    if-nez p0, :cond_4

    .line 94
    :cond_3
    return-object v0

    .line 86
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 90
    .local v2, "len":I
    new-array v0, v2, [B

    .line 91
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v2, :cond_3

    .line 92
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private static padString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 99
    const/16 v2, 0x20

    .line 100
    .local v2, "paddingChar":C
    const/16 v3, 0x10

    .line 101
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v4, v5, v3

    .line 102
    .local v4, "x":I
    sub-int v1, v3, v4

    .line 104
    .local v1, "padLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-lt v0, v1, :cond_10

    .line 107
    return-object p0

    .line 105
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)[B
    .registers 8
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 52
    :cond_8
    const/4 v0, 0x0

    .line 63
    :goto_9
    return-object v0

    .line 55
    :cond_a
    const/4 v0, 0x0

    .line 58
    .local v0, "decrypted":[B
    :try_start_b
    iget-object v2, p0, Landroid/app/SettingsCrypto;->mCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/app/SettingsCrypto;->mKeyspec:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Landroid/app/SettingsCrypto;->mIvspec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    iget-object v2, p0, Landroid/app/SettingsCrypto;->mCipher:Ljavax/crypto/Cipher;

    invoke-static {p1}, Landroid/app/SettingsCrypto;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_9

    .line 60
    :catch_20
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public encrypt(Ljava/lang/String;)[B
    .registers 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 36
    :cond_8
    const/4 v1, 0x0

    .line 47
    :goto_9
    return-object v1

    .line 39
    :cond_a
    const/4 v1, 0x0

    .line 42
    .local v1, "encrypted":[B
    :try_start_b
    iget-object v2, p0, Landroid/app/SettingsCrypto;->mCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/app/SettingsCrypto;->mKeyspec:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Landroid/app/SettingsCrypto;->mIvspec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    iget-object v2, p0, Landroid/app/SettingsCrypto;->mCipher:Ljavax/crypto/Cipher;

    invoke-static {p1}, Landroid/app/SettingsCrypto;->padString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_24

    move-result-object v1

    goto :goto_9

    .line 44
    :catch_24
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method
