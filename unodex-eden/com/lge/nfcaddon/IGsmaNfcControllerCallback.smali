.class public interface abstract Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
.super Ljava/lang/Object;
.source "IGsmaNfcControllerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCardEmulationMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNfcController(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
