.class public final enum Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecureElementList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

.field public static final enum ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

.field public static final enum uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    const-string v1, "uicc"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    const-string v1, "ese"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ENUM$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
