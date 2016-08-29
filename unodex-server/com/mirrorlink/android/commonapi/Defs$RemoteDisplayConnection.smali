.class public final Lcom/mirrorlink/android/commonapi/Defs$RemoteDisplayConnection;
.super Ljava/lang/Object;
.source "Defs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/Defs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteDisplayConnection"
.end annotation


# static fields
.field public static final REMOTEDISPLAY_HSML:I = 0x2

.field public static final REMOTEDISPLAY_NONE:I = 0x0

.field public static final REMOTEDISPLAY_OTHER:I = 0xff

.field public static final REMOTEDISPLAY_VNC:I = 0x1

.field public static final REMOTEDISPLAY_WFD:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
