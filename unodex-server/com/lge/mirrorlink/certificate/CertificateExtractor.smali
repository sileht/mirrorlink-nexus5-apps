.class public Lcom/lge/mirrorlink/certificate/CertificateExtractor;
.super Ljava/lang/Object;
.source "CertificateExtractor.java"


# static fields
.field private static final BEGIN_CERTIFICATE_STRING:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field private static final END_CERTIFICATE_STRING:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Cert"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "certString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 17
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    if-nez p0, :cond_6

    .line 18
    return-object v6

    .line 21
    :cond_6
    new-instance v1, Ljava/io/DataInputStream;

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    .end local v0    # "certString":Ljava/lang/String;
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :cond_b
    :goto_b
    :try_start_b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_12

    .line 43
    .end local v3    # "line":Ljava/lang/String;
    :goto_11
    return-object v6

    .line 27
    .restart local v3    # "line":Ljava/lang/String;
    :cond_12
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    .line 29
    const-string/jumbo v4, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 30
    const-string/jumbo v0, ""

    .local v0, "certString":Ljava/lang/String;
    goto :goto_b

    .line 31
    .end local v0    # "certString":Ljava/lang/String;
    :cond_29
    const-string/jumbo v4, "-----END CERTIFICATE-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 32
    return-object v0

    .line 34
    :cond_33
    if-eqz v0, :cond_b

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_49} :catch_4b

    move-result-object v0

    .restart local v0    # "certString":Ljava/lang/String;
    goto :goto_b

    .line 39
    .end local v0    # "certString":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catch_4b
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "IOException happens !"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
