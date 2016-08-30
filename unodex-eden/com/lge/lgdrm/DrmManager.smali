.class public final Lcom/lge/lgdrm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# static fields
.field private static sInformed:I

.field private static sSLExtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static checkExtension(ILjava/lang/String;)I
    .registers 5
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "storeAs":I
    const/4 v2, 0x2

    if-eq p0, v2, :cond_10

    const/4 v2, 0x1

    if-eq p0, v2, :cond_10

    .line 611
    const/16 v2, 0x9

    if-eq p0, v2, :cond_10

    const/16 v2, 0xa

    if-ne p0, v2, :cond_45

    .line 612
    :cond_10
    const-string v2, ".dm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, ".dcf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 613
    :cond_20
    const/4 v0, 0x1

    :cond_21
    :goto_21
    move v1, v0

    .line 629
    :cond_22
    return v1

    .line 614
    :cond_23
    const-string v2, ".odf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 615
    const-string v2, ".o4a"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, ".o4v"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, ".o4i"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 616
    :cond_43
    const/4 v0, 0x2

    .line 617
    goto :goto_21

    .line 620
    :cond_45
    const/4 v2, 0x5

    if-eq p0, v2, :cond_4b

    const/4 v2, 0x7

    if-ne p0, v2, :cond_21

    .line 621
    :cond_4b
    const-string v2, ".wma"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, ".wmv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 622
    :cond_5b
    const/4 v0, 0x5

    .line 623
    goto :goto_21

    :cond_5d
    const-string v2, ".eny"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, ".pya"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, ".pyv"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 624
    :cond_75
    const/4 v0, 0x7

    .line 625
    goto :goto_21
.end method

.method private static checkSLExtMap(ILjava/lang/String;)Z
    .registers 6
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 643
    sget-object v3, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 644
    .local v0, "agent":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    .line 645
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 646
    .local v1, "sAgentType":I
    if-ne v1, p0, :cond_12

    .line 658
    .end local v1    # "sAgentType":I
    :cond_11
    :goto_11
    return v2

    .line 649
    .restart local v1    # "sAgentType":I
    :cond_12
    const/4 v3, 0x2

    if-ne p0, v3, :cond_17

    if-eq v1, v2, :cond_11

    .line 653
    :cond_17
    const/4 v3, 0x7

    if-ne p0, v3, :cond_1d

    const/4 v3, 0x5

    if-eq v1, v3, :cond_11

    .line 658
    .end local v1    # "sAgentType":I
    :cond_1d
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static createContentManager(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContentManager;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 182
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_5
    return-object v0

    :cond_6
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentManager;->newInstance(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContentManager;

    move-result-object v0

    goto :goto_5
.end method

.method public static createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 146
    const/4 v0, 0x0

    .line 158
    :goto_5
    return-object v0

    .line 149
    :cond_6
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 150
    if-eqz p1, :cond_33

    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_33

    sget v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    if-nez v0, :cond_33

    .line 151
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/lgdrm/DrmManager;->getAgentInformation(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 152
    const-string v0, "No IMEI exist. Please write IMEI for using DRM contents!"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    :cond_2d
    sget v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/lgdrm/DrmManager;->sInformed:I

    .line 158
    :cond_33
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmContentSession;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    goto :goto_5
.end method

.method public static createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;
    .registers 3
    .param p0, "downloadAgent"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 322
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/lgdrm/DrmObjectSession;->newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v0

    goto :goto_5
.end method

.method public static getAgentInformation(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 459
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 460
    const/4 v0, 0x0

    .line 470
    :goto_5
    return-object v0

    .line 463
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 464
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_14
    if-ltz p0, :cond_19

    const/4 v0, 0x2

    if-le p0, v0, :cond_21

    .line 467
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_21
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetAgentInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "ext":Ljava/lang/String;
    if-eqz p0, :cond_16

    .line 585
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 586
    .local v1, "lastDot":I
    if-gez v1, :cond_d

    .line 587
    const/4 v0, 0x0

    .line 595
    .end local v1    # "lastDot":I
    :goto_c
    return-object v0

    .line 589
    .restart local v1    # "lastDot":I
    :cond_d
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 591
    goto :goto_c

    .line 592
    .end local v1    # "lastDot":I
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getLastError()J
    .registers 2

    .prologue
    .line 569
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getObjectDrmType([B)I
    .registers 3
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 215
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 216
    const/4 v0, 0x0

    .line 223
    :goto_5
    return v0

    .line 219
    :cond_6
    if-nez p0, :cond_10

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_10
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectDrmType([B)I

    move-result v0

    goto :goto_5
.end method

.method public static getObjectInfo(I[B)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 282
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 283
    const/4 v0, 0x0

    .line 293
    :goto_5
    return-object v0

    .line 286
    :cond_6
    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    const/4 v0, 0x2

    if-le p0, v0, :cond_14

    .line 287
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_14
    if-nez p1, :cond_1e

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1e
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectInfo(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getObjectMediaMimeType([B)Ljava/lang/String;
    .registers 3
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 245
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 246
    const/4 v0, 0x0

    .line 253
    :goto_5
    return-object v0

    .line 249
    :cond_6
    if-nez p0, :cond_10

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_10
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectMediaMimeType([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getSupportedAgent()[I
    .registers 1

    .prologue
    .line 389
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 390
    const/4 v0, 0x0

    .line 393
    :goto_5
    return-object v0

    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeGetSupportedAgent()[I

    move-result-object v0

    goto :goto_5
.end method

.method public static isDRM(Ljava/lang/String;)I
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 116
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 117
    const/4 v0, 0x0

    .line 124
    :goto_5
    return v0

    .line 120
    :cond_6
    if-nez p0, :cond_10

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_10
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static isSupportedAgent(I)Z
    .registers 6
    .param p0, "agentType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    if-lt p0, v3, :cond_8

    const/16 v4, 0xf

    if-lt p0, v4, :cond_10

    .line 425
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid agentType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_10
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->getSupportedAgent()[I

    move-result-object v0

    .line 429
    .local v0, "agents":[I
    if-nez v0, :cond_17

    .line 439
    :cond_16
    :goto_16
    return v2

    .line 433
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v4, v0

    if-ge v1, v4, :cond_16

    .line 434
    aget v4, v0, v1

    if-ne v4, p0, :cond_21

    move v2, v3

    .line 435
    goto :goto_16

    .line 433
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public static isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "agentType"    # I
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 500
    sget-boolean v3, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v3, :cond_6

    .line 525
    :cond_5
    :goto_5
    return v2

    .line 504
    :cond_6
    if-nez p1, :cond_12

    if-nez p2, :cond_12

    .line 505
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_12
    invoke-static {p1, p2}, Lcom/lge/lgdrm/DrmManager;->getExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "ext":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 514
    invoke-static {p0, v0}, Lcom/lge/lgdrm/DrmManager;->checkExtension(ILjava/lang/String;)I

    move-result v1

    .line 515
    .local v1, "storeAs":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 520
    invoke-static {p0, v0}, Lcom/lge/lgdrm/DrmManager;->checkSLExtMap(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 521
    const/4 v2, 0x1

    goto :goto_5

    .line 525
    :cond_27
    invoke-static {p0, v0, v1}, Lcom/lge/lgdrm/DrmManager;->updateSLExtMap(ILjava/lang/String;I)Z

    move-result v2

    goto :goto_5
.end method

.method private static isUiThread()Z
    .registers 2

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static manageDatabase(I)I
    .registers 3
    .param p0, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 355
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 356
    const/4 v0, -0x1

    .line 366
    :goto_5
    return v0

    .line 359
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 360
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_14
    if-ltz p0, :cond_1a

    const/16 v0, 0x10

    if-lt p0, v0, :cond_22

    .line 364
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_22
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeManageDatabase(I)I

    move-result v0

    goto :goto_5
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private static native nativeGetAgentInformation(I)Ljava/lang/String;
.end method

.method private static native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private static native nativeGetObjectDrmType([B)I
.end method

.method private static native nativeGetObjectInfo(I[B)Ljava/lang/String;
.end method

.method private static native nativeGetObjectMediaMimeType([B)Ljava/lang/String;
.end method

.method private static native nativeGetSupportedAgent()[I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsSupportedExtension(ILjava/lang/String;)Z
.end method

.method private static native nativeManageDatabase(I)I
.end method

.method private static native nativeSetDebugOptions(III)V
.end method

.method public static setDebugOptions(III)V
    .registers 5
    .param p0, "agentType"    # I
    .param p1, "option"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 551
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_5

    .line 560
    :goto_4
    return-void

    .line 555
    :cond_5
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_13

    .line 556
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_13
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmManager;->nativeSetDebugOptions(III)V

    goto :goto_4
.end method

.method private static updateSLExtMap(ILjava/lang/String;I)Z
    .registers 5
    .param p0, "agentType"    # I
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "storeAs"    # I

    .prologue
    .line 675
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmManager;->nativeIsSupportedExtension(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 677
    if-eqz p2, :cond_13

    .line 678
    sget-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :goto_11
    const/4 v0, 0x1

    .line 684
    :goto_12
    return v0

    .line 680
    :cond_13
    sget-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 684
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method
