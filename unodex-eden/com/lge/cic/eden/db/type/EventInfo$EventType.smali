.class public Lcom/lge/cic/eden/db/type/EventInfo$EventType;
.super Ljava/lang/Object;
.source "EventInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/db/type/EventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventType"
.end annotation


# static fields
.field public static final FOODACTIVITY:I = 0xa

.field public static final FREQUENTPEOPLE:I = 0xb

.field public static final FREQUENTPEOPLEFACE:I = 0xc

.field public static final NOEVENT:I = 0x63

.field public static final NOTDEFINE:I = -0x1

.field public static final OTHERSTORY:I = 0xd

.field public static final OUTGOINGPICNICEVENT:I = 0x5

.field public static final OUTGOINGSTATICEVENT:I = 0x6

.field public static final OUTGOINGTRAVELEVENT:I = 0x4

.field public static final PICNICEVENT:I = 0x2

.field public static final STATICEVENT:I = 0x3

.field public static final TRAVELEVENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
