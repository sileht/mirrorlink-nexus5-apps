.class public interface abstract Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;
.super Ljava/lang/Object;
.source "CardEmulationAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/CardEmulationAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NfcAddonRecovery"
.end annotation


# virtual methods
.method public abstract attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V
.end method

.method public abstract getCardEmulationAddonServiceInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;
.end method

.method public abstract getGsmaNfcControllerServiceInterface()Lcom/lge/nfcaddon/IGsmaNfcController;
.end method
