.class public final Lcom/lge/wifi/impl/WifiServiceExtension$EapExt;
.super Ljava/lang/Object;
.source "WifiServiceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServiceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapExt"
.end annotation


# static fields
.field public static final AKA:I = 0x5

.field public static final AKA_PRIME:I = 0x8

.field public static final FAST:I = 0x6

.field public static final LEAP:I = 0x7

.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final SIM:I = 0x4

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 131
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PEAP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TTLS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PWD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SIM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AKA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FAST"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LEAP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AKA\'"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wifi/impl/WifiServiceExtension$EapExt;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
