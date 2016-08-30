.class public Lcom/lge/hardware/LGCamera$ProxyData;
.super Ljava/lang/Object;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/LGCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyData"
.end annotation


# instance fields
.field public amb:I

.field public conv:I

.field public raw:I

.field public sig:I

.field public val:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    return-void
.end method
