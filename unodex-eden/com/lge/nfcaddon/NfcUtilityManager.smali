.class public final Lcom/lge/nfcaddon/NfcUtilityManager;
.super Lcom/lge/nfcaddon/INfcUtilityCallback$Stub;
.source "NfcUtilityManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NfcUtilityManager"

.field static nfcUtilityCallback:Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lge/nfcaddon/INfcUtilityCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lge/nfcaddon/INfcUtilityCallback$Stub;-><init>()V

    .line 17
    sput-object p1, Lcom/lge/nfcaddon/NfcUtilityManager;->nfcUtilityCallback:Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;

    .line 18
    return-void
.end method


# virtual methods
.method public SimBootComplete()V
    .registers 3

    .prologue
    .line 27
    const-string v0, "NfcUtilityManager"

    const-string v1, "SimBootComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/lge/nfcaddon/NfcUtilityManager;->nfcUtilityCallback:Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;

    if-eqz v0, :cond_18

    .line 32
    const-string v0, "NfcUtilityManager"

    const-string v1, "nfcUtilityCallback.SimBootComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lcom/lge/nfcaddon/NfcUtilityManager;->nfcUtilityCallback:Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;

    invoke-interface {v0}, Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;->SimBootComplete()V

    .line 40
    :goto_17
    return-void

    .line 37
    :cond_18
    const-string v0, "NfcUtilityManager"

    const-string v1, "nfcUtilityCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public setNfcUtilityCallback(Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;

    .prologue
    .line 21
    sput-object p1, Lcom/lge/nfcaddon/NfcUtilityManager;->nfcUtilityCallback:Lcom/lge/nfcaddon/NfcUtility$NfcUtilityCallback;

    .line 22
    return-void
.end method
