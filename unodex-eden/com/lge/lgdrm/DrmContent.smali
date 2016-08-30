.class public final Lcom/lge/lgdrm/DrmContent;
.super Ljava/lang/Object;
.source "DrmContent.java"


# static fields
.field private static FLIconStatus:I


# instance fields
.field protected agentType:I

.field protected autoRightState:Z

.field private contentInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentSize:J

.field protected contentType:I

.field protected filename:Ljava/lang/String;

.field protected index:I

.field private mediaType:I

.field private metadata:Lcom/lge/lgdrm/DrmContentMetaData;

.field protected permisson:I

.field protected previewContent:I

.field protected rightState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 143
    const/4 v0, -0x1

    sput v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 132
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 136
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 146
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "contentType"    # I

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 132
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 136
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 149
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 150
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 151
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 153
    if-nez p3, :cond_1f

    .line 172
    :cond_1e
    :goto_1e
    return-void

    .line 157
    :cond_1f
    const/16 v0, 0x1800

    if-ne p3, v0, :cond_28

    .line 158
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_1e

    .line 159
    :cond_28
    const/16 v0, 0x501

    if-ne p3, v0, :cond_31

    .line 160
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_1e

    .line 161
    :cond_31
    const/16 v0, 0x10

    if-le p3, v0, :cond_3d

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_3d

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_1e

    .line 163
    :cond_3d
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_45

    .line 164
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_1e

    .line 165
    :cond_45
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_4e

    .line 166
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_1e

    .line 167
    :cond_4e
    const/high16 v0, 0x80000

    if-ne p3, v0, :cond_56

    .line 168
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_1e

    .line 169
    :cond_56
    const/high16 v0, 0x100000

    and-int/2addr v0, p3

    if-nez v0, :cond_5f

    const/high16 v0, 0x800000

    if-ne p3, v0, :cond_1e

    .line 170
    :cond_5f
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_1e
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "contentType"    # I
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .param p6, "mediaType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 132
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 136
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 190
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 191
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 192
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 193
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iput p6, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 197
    const/16 v0, 0x1800

    if-ne p3, v0, :cond_3b

    .line 198
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 212
    :cond_3a
    :goto_3a
    return-void

    .line 199
    :cond_3b
    const/16 v0, 0x501

    if-ne p3, v0, :cond_44

    .line 200
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_3a

    .line 201
    :cond_44
    const/16 v0, 0x10

    if-le p3, v0, :cond_4f

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_4f

    .line 202
    iput v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_3a

    .line 203
    :cond_4f
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_56

    .line 204
    iput v3, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_3a

    .line 205
    :cond_56
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_5f

    .line 206
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_3a

    .line 207
    :cond_5f
    const/high16 v0, 0x80000

    if-ne p3, v0, :cond_67

    .line 208
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_3a

    .line 209
    :cond_67
    const/high16 v0, 0x100000

    and-int/2addr v0, p3

    if-nez v0, :cond_70

    const/high16 v0, 0x800000

    if-ne p3, v0, :cond_3a

    .line 210
    :cond_70
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_3a
.end method

.method public static getContentInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 380
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_7

    .line 381
    const/4 v0, 0x0

    .line 395
    :goto_6
    return-object v0

    .line 384
    :cond_7
    if-nez p0, :cond_11

    .line 385
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_11
    const/4 v0, 0x1

    if-lt p1, v0, :cond_17

    const/4 v0, 0x6

    if-le p1, v0, :cond_1f

    .line 388
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1f
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 392
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2d
    invoke-static {p1, p0, v1, v1}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static getContentType(Ljava/lang/String;)I
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 275
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_6

    .line 287
    :goto_5
    return v0

    .line 279
    :cond_6
    if-nez p0, :cond_10

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_10
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 284
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1e
    invoke-static {p0, v0, v0}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentType(Ljava/lang/String;II)I

    move-result v0

    goto :goto_5
.end method

.method public static isForwardlockIconVisible()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_7

    .line 561
    :goto_6
    return v1

    .line 553
    :cond_7
    sget v2, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 554
    invoke-static {}, Lcom/lge/lgdrm/DrmContent;->nativeIsForwardlockIconVisible()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 555
    sput v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    .line 561
    :cond_14
    :goto_14
    sget v2, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    if-ne v2, v0, :cond_1d

    :goto_18
    move v1, v0

    goto :goto_6

    .line 557
    :cond_1a
    sput v1, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    goto :goto_14

    :cond_1d
    move v0, v1

    .line 561
    goto :goto_18
.end method

.method private native nativeCheckPreviewContent(Ljava/lang/String;I)Z
.end method

.method private static native nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;
.end method

.method private native nativeGetContentSize(Ljava/lang/String;II)J
.end method

.method private static native nativeGetContentType(Ljava/lang/String;II)I
.end method

.method private native nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsForwardlockIconVisible()Z
.end method

.method private setBasicInfo(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "contentType"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .param p5, "mediaType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 623
    iput p1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 624
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 625
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iput p5, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 629
    const/16 v0, 0x1800

    if-ne p2, v0, :cond_23

    .line 630
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 644
    :cond_22
    :goto_22
    return-void

    .line 631
    :cond_23
    const/16 v0, 0x501

    if-ne p2, v0, :cond_2c

    .line 632
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 633
    :cond_2c
    const/16 v0, 0x10

    if-le p2, v0, :cond_37

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_37

    .line 634
    iput v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 635
    :cond_37
    const/16 v0, 0x3000

    if-ne p2, v0, :cond_3e

    .line 636
    iput v3, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 637
    :cond_3e
    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_47

    .line 638
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 639
    :cond_47
    const/high16 v0, 0x80000

    if-ne p2, v0, :cond_4f

    .line 640
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 641
    :cond_4f
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-nez v0, :cond_58

    const/high16 v0, 0x800000

    if-ne p2, v0, :cond_22

    .line 642
    :cond_58
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22
.end method

.method private setBasicInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "mediaType"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 659
    return-void
.end method


# virtual methods
.method public checkPreviewContent()Z
    .registers 3

    .prologue
    .line 421
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 422
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmContent;->nativeCheckPreviewContent(Ljava/lang/String;I)Z

    move-result v0

    .line 425
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getContentInfo(I)Ljava/lang/String;
    .registers 9
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "value":Ljava/lang/String;
    if-lt p1, v3, :cond_b

    if-le p1, v5, :cond_13

    .line 313
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_13
    if-eq p1, v3, :cond_17

    if-ne p1, v4, :cond_24

    .line 317
    :cond_17
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    :cond_23
    :goto_23
    return-object v1

    .line 321
    :cond_24
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v3, :cond_36

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v4, :cond_36

    .line 322
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v6, :cond_36

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_23

    .line 326
    :cond_36
    const/4 v2, 0x3

    if-eq p1, v2, :cond_3c

    const/4 v2, 0x4

    if-ne p1, v2, :cond_61

    .line 327
    :cond_3c
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 328
    .restart local v0    # "value":Ljava/lang/String;
    if-eqz v0, :cond_4c

    move-object v1, v0

    .line 329
    goto :goto_23

    .line 331
    :cond_4c
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v1, v2, v3}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 333
    goto :goto_23

    .line 337
    :cond_61
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v4, :cond_69

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v2, v6, :cond_23

    .line 341
    :cond_69
    const/4 v2, 0x5

    if-eq p1, v2, :cond_6e

    if-ne p1, v5, :cond_23

    .line 342
    :cond_6e
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 343
    .restart local v0    # "value":Ljava/lang/String;
    if-eqz v0, :cond_7e

    move-object v1, v0

    .line 344
    goto :goto_23

    .line 346
    :cond_7e
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v1, v2, v3}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 348
    goto :goto_23
.end method

.method public getContentSize()J
    .registers 5

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 407
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 411
    :goto_a
    return-wide v0

    .line 410
    :cond_b
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentSize(Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 411
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    goto :goto_a
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    return v0
.end method

.method public getDrmContentType()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    return v0
.end method

.method public getMetaData()Lcom/lge/lgdrm/DrmContentMetaData;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 474
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    .line 475
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_19

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_19

    move-object v0, v1

    .line 496
    :cond_18
    :goto_18
    return-object v0

    .line 480
    :cond_19
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    if-eqz v2, :cond_20

    .line 482
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    goto :goto_18

    .line 485
    :cond_20
    new-instance v0, Lcom/lge/lgdrm/DrmContentMetaData;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmContentMetaData;-><init>()V

    .line 487
    .local v0, "meta":Lcom/lge/lgdrm/DrmContentMetaData;
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmContent;->nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_33

    move-object v0, v1

    .line 488
    goto :goto_18

    .line 491
    :cond_33
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContent;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 493
    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    goto :goto_18
.end method

.method public isActionSupported(I)Z
    .registers 4
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 455
    const/16 v0, 0xf

    if-eq p1, v0, :cond_c

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected isIdentical(Lcom/lge/lgdrm/DrmContent;)Z
    .registers 5
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    const/4 v0, 0x0

    .line 595
    if-nez p1, :cond_4

    .line 606
    :cond_3
    :goto_3
    return v0

    .line 598
    :cond_4
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 603
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    if-ne v1, v2, :cond_3

    .line 606
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected isSibling(Lcom/lge/lgdrm/DrmContent;)Z
    .registers 5
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    const/4 v0, 0x0

    .line 575
    if-nez p1, :cond_4

    .line 583
    :cond_3
    :goto_3
    return v0

    .line 580
    :cond_4
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 583
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public resetMetaData()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectPreviewContent(Z)V
    .registers 3
    .param p1, "reset"    # Z

    .prologue
    .line 435
    if-eqz p1, :cond_6

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    .line 440
    :goto_5
    return-void

    .line 438
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    goto :goto_5
.end method

.method public setMetaData(Lcom/lge/lgdrm/DrmContentMetaData;)I
    .registers 4
    .param p1, "metaData"    # Lcom/lge/lgdrm/DrmContentMetaData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 517
    if-nez p1, :cond_a

    .line 518
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter metaData is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
