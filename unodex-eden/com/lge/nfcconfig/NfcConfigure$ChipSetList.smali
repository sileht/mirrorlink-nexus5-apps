.class public final enum Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChipSetList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "INITVALUE"

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "nxp"

    const-string v2, "Nxp"

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "brcm"

    const-string v2, "Broadcom"

    invoke-direct {v0, v1, v5, v2}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "inside"

    const-string v2, "Inside"

    invoke-direct {v0, v1, v6, v2}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "sony"

    const-string v2, "Sony"

    invoke-direct {v0, v1, v7, v2}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v7

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput-object p3, p0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->mTag:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->mTag:Ljava/lang/String;

    return-object v0
.end method
