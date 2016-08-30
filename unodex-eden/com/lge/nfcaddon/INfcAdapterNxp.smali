.class public interface abstract Lcom/lge/nfcaddon/INfcAdapterNxp;
.super Ljava/lang/Object;
.source "INfcAdapterNxp.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;
    }
.end annotation


# virtual methods
.method public abstract DefaultRouteSet(IZZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract MifareCLTRouteSet(IZZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract MifareDesfireRouteSet(IZZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNfcSecureElementInterface()Lcom/lge/nfcaddon/INfcSecureElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setScreenOffCondition(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
