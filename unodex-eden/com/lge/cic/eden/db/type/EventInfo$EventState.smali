.class public Lcom/lge/cic/eden/db/type/EventInfo$EventState;
.super Ljava/lang/Object;
.source "EventInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/db/type/EventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventState"
.end annotation


# static fields
.field public static final COMPLETE:I = 0x1

.field public static final INCOMPLETE:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
