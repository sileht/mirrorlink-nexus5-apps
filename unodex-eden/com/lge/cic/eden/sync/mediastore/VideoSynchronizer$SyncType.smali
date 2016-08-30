.class final enum Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
.super Ljava/lang/Enum;
.source "VideoSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SyncType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

.field public static final enum END:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

.field public static final enum INSERT:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

.field public static final enum SKIP:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

.field public static final enum UPDATE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    const-string v1, "END"

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 40
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v3}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->SKIP:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 41
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->UPDATE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 42
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 43
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v6}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->END:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->SKIP:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->UPDATE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->DELETE:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->INSERT:Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->ENUM$VALUES:[Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    return-object v0
.end method

.method public static values()[Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;->ENUM$VALUES:[Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$SyncType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
