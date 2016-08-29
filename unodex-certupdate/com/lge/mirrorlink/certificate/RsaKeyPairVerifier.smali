.class public Lcom/lge/mirrorlink/certificate/RsaKeyPairVerifier;
.super Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;
.source "RsaKeyPairVerifier.java"


# static fields
.field private static final ENCRYPTED_DATA_FILE:Ljava/lang/String; = "cypher_text.dat"

.field private static final ML_CERT_FILE_PATH:Ljava/lang/String; = "/data/misc/mirrorlink/"

.field private static final TAG:Ljava/lang/String; = "RsaKeyPairVerifier"


# instance fields
.field mPlainText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/RsaKeyPairVerifier;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public makeCTPacket()[B
    .registers 15

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, "dataLen":I
    const/16 v4, 0x100

    new-array v0, v4, [B

    .line 29
    .local v0, "cypherText":[B
    :try_start_a
    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/RsaKeyPairVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 30
    iget-object v5, p0, Lcom/lge/mirrorlink/certificate/RsaKeyPairVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 31
    const-string/jumbo v6, "cypher_text"

    .line 32
    const-string/jumbo v7, "raw"

    iget-object v8, p0, Lcom/lge/mirrorlink/certificate/RsaKeyPairVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 29
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 34
    .local v3, "is":Ljava/io/InputStream;
    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 35
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_fe

    .line 40
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_33
    const-string/jumbo v4, "RsaKeyPairVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cypherText: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string/jumbo v4, "RsaKeyPairVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "offset: 0 1 2 3 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0x %2x %2x %2x %2x"

    new-array v7, v13, [Ljava/lang/Object;

    .line 42
    aget-byte v8, v0, v9

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    aget-byte v8, v0, v10

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v10

    aget-byte v8, v0, v11

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v11

    aget-byte v8, v0, v12

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v12

    .line 41
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string/jumbo v4, "RsaKeyPairVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "offset: 252 253 254 255 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0x %2x %2x %2x %2x"

    new-array v7, v13, [Ljava/lang/Object;

    .line 44
    const/16 v8, 0xfc

    aget-byte v8, v0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    const/16 v8, 0xfd

    aget-byte v8, v0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v10

    const/16 v8, 0xfe

    aget-byte v8, v0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v11

    const/16 v8, 0xff

    aget-byte v8, v0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v12

    .line 43
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-gtz v1, :cond_10a

    .line 52
    const-string/jumbo v4, "RsaKeyPairVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no data to read, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v4, 0x0

    return-object v4

    .line 36
    :catch_fe
    move-exception v2

    .line 37
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "RsaKeyPairVerifier"

    const-string/jumbo v5, "IOException happens, "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    :cond_10a
    return-object v0
.end method
