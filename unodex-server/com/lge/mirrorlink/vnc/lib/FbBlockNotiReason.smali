.class public Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;
.super Ljava/lang/Object;
.source "FbBlockNotiReason.java"


# static fields
.field private static final NOT_ALLOWED_APP_CATEGORY:I = 0x1

.field private static final NOT_ALLOWED_APP_ID:I = 0x5

.field private static final NOT_SUFFICIENT_APP_TRUST_LEVEL:I = 0x3

.field private static final UI_LAYOUT_NOT_SUPPORTED:I = 0xa

.field private static final UI_NOT_VISIBLE_ON_REMOTE_DISPLAY:I = 0x9


# instance fields
.field private mReason:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->mReason:I

    .line 14
    iput p1, p0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->mReason:I

    .line 13
    return-void
.end method


# virtual methods
.method public notAllowedApplicationCategory()Z
    .registers 3

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->mReason:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public notAllowedApplicationID()Z
    .registers 3

    .prologue
    .line 26
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->mReason:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public notSufficientApplicationTrustlevel()Z
    .registers 3

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->mReason:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public uiLayoutNotSupported()Z
    .registers 3

    .prologue
    .line 34
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->mReason:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public uiNotVisibleOnRemoteDisplay()Z
    .registers 3

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/FbBlockNotiReason;->mReason:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v0

    return v0
.end method
