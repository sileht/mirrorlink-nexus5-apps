.class public Lorg/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMaskValue(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_c

    move-result v1

    if-gez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-gt v1, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :catch_c
    move-exception v1

    return v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_8
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .registers 8

    const/4 v6, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_28

    :cond_24
    if-eq v2, v6, :cond_49

    :goto_26
    return v1

    :cond_27
    return v1

    :cond_28
    const/16 v4, 0x2e

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-le v4, v0, :cond_24

    if-eq v2, v6, :cond_3d

    :try_start_32
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_39} :catch_3e

    move-result v0

    if-gez v0, :cond_40

    :cond_3c
    return v1

    :cond_3d
    return v1

    :catch_3e
    move-exception v0

    return v1

    :cond_40
    const/16 v5, 0xff

    if-gt v0, v5, :cond_3c

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_49
    const/4 v1, 0x1

    goto :goto_26
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-gtz v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v2}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_10

    :cond_23
    const/16 v1, 0x20

    invoke-static {v2, v1}, Lorg/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_10
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .registers 11

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_21
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_2c

    :cond_27
    if-ne v3, v9, :cond_7f

    :cond_29
    move v1, v4

    :goto_2a
    return v1

    :cond_2b
    return v1

    :cond_2c
    const/16 v6, 0x3a

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-lt v6, v0, :cond_27

    if-eq v3, v9, :cond_40

    if-ne v0, v6, :cond_41

    if-ne v6, v4, :cond_74

    :cond_3a
    move v2, v4

    :goto_3b
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_40
    return v1

    :cond_41
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_5a

    :cond_4d
    :try_start_4d
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_56} :catch_6c

    move-result v0

    if-gez v0, :cond_6e

    :cond_59
    return v1

    :cond_5a
    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_4d

    invoke-static {v7}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_6b
    return v1

    :catch_6c
    move-exception v0

    return v1

    :cond_6e
    const v7, 0xffff

    if-gt v0, v7, :cond_59

    goto :goto_3b

    :cond_74
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v6, v0, :cond_3a

    if-eqz v2, :cond_3a

    return v1

    :cond_7f
    if-nez v2, :cond_29

    goto :goto_2a
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-gtz v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v2}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_10

    :cond_23
    const/16 v1, 0x80

    invoke-static {v2, v1}, Lorg/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_10
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_8
.end method
