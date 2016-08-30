.class public final enum Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
.super Ljava/lang/Enum;
.source "EventGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/generator/EventGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETE:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

.field public static final enum FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

.field public static final enum SHUTDOWN:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->COMPLETE:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    .line 101
    new-instance v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    const-string v1, "SHUTDOWN"

    invoke-direct {v0, v1, v3}, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->SHUTDOWN:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    .line 102
    new-instance v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    const-string v1, "FAILED_GEOCODING"

    invoke-direct {v0, v1, v4}, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    sget-object v1, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->COMPLETE:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->SHUTDOWN:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->FAILED_GEOCODING:Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->ENUM$VALUES:[Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    return-object v0
.end method

.method public static values()[Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;->ENUM$VALUES:[Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/cic/eden/generator/EventGenerator$ProcessStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
