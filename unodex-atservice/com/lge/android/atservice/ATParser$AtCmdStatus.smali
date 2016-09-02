.class public final enum Lcom/lge/android/atservice/ATParser$AtCmdStatus;
.super Ljava/lang/Enum;
.source "ATParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/ATParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AtCmdStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/android/atservice/ATParser$AtCmdStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/android/atservice/ATParser$AtCmdStatus;

.field public static final enum ERROR:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

.field public static final enum OK:Lcom/lge/android/atservice/ATParser$AtCmdStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/lge/android/atservice/ATParser$AtCmdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->OK:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    new-instance v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/lge/android/atservice/ATParser$AtCmdStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->ERROR:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    sget-object v1, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->OK:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->ERROR:Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->$VALUES:[Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/android/atservice/ATParser$AtCmdStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    return-object v0
.end method

.method public static values()[Lcom/lge/android/atservice/ATParser$AtCmdStatus;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/lge/android/atservice/ATParser$AtCmdStatus;->$VALUES:[Lcom/lge/android/atservice/ATParser$AtCmdStatus;

    return-object v0
.end method
