.class public final Lcom/lge/lgdrm/DrmCertManager;
.super Ljava/lang/Object;
.source "DrmCertManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 132
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 133
    const/4 v0, -0x1

    .line 140
    :goto_5
    return v0

    .line 136
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 137
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_14
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static getInformation(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 188
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 189
    const/4 v0, 0x0

    .line 199
    :goto_5
    return-object v0

    .line 192
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 193
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_14
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1a

    const/4 v0, 0x2

    if-le p0, v0, :cond_22

    .line 197
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_22
    invoke-static {p0}, Lcom/lge/lgdrm/DrmCertManager;->nativeGetCertificateInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static isTestSet()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 212
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_6

    .line 224
    :cond_5
    :goto_5
    return v0

    .line 216
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_14

    .line 217
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_14
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 221
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static load(ZLjava/lang/String;)I
    .registers 5
    .param p0, "loadOnDemand"    # Z
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 244
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_7

    .line 245
    const/4 v0, -0x1

    .line 255
    :goto_6
    return v0

    .line 248
    :cond_7
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_15

    .line 249
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_15
    if-eqz p0, :cond_1d

    .line 253
    const/4 v0, 0x4

    invoke-static {v0, v2, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 255
    :cond_1d
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_6
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private static native nativeGetCertificateInformation(I)Ljava/lang/String;
.end method

.method private static native nativeManageCertificate(IILjava/lang/String;)I
.end method

.method private static native nativeWriteCertificate(I[B)I
.end method

.method public static reset()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 154
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 155
    const/4 v0, -0x1

    .line 162
    :goto_5
    return v0

    .line 158
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 159
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_14
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static setIndex(I)I
    .registers 3
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 110
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 111
    const/4 v0, -0x1

    .line 118
    :goto_5
    return v0

    .line 114
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 115
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_14
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static verify()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 86
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 87
    const/4 v0, -0x1

    .line 94
    :goto_5
    return v0

    .line 90
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 91
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_14
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/lgdrm/DrmCertManager;->nativeManageCertificate(IILjava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static write(I[B)I
    .registers 4
    .param p0, "type"    # I
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 54
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 55
    const/4 v0, -0x1

    .line 70
    :goto_5
    return v0

    .line 58
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmCertManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 59
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_14
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1a

    const/4 v0, 0x4

    if-le p0, v0, :cond_22

    .line 63
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_22
    if-nez p1, :cond_2c

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2c
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmCertManager;->nativeWriteCertificate(I[B)I

    move-result v0

    goto :goto_5
.end method
