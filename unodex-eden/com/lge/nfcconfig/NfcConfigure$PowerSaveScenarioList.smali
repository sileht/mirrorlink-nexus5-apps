.class public final enum Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerSaveScenarioList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

.field public static final enum all:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

.field public static final enum rwp2p:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    const-string v1, "all"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->all:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    const-string v1, "rwp2p"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->rwp2p:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->all:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->rwp2p:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
